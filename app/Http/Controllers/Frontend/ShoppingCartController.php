<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Services\ShoppingCartService\PayManager;
use Illuminate\Http\Request;
use App\Models\Product;
use Carbon\Carbon;
use App\Models\Transaction;
use App\Models\Order;
use App\Models\Payment;
use App\Mail\TransactionSuccess;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class ShoppingCartController extends Controller
{
    private $vnp_TmnCode = "RAHZINZC"; //Mã website tại VNPAY
    private $vnp_HashSecret = "WLEXFVAZCIRDLWSZFQLLNLHQDIGPWTIC"; //Chuỗi bí mật
    private $vnp_Url = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
    private $vnp_Returnurl = '';

    public function __construct()
    {
        $this->vnp_Returnurl = route('get.callback.pay');
    }

    public function index()
    {
        $shopping = \Cart::content();
        $viewData = [
            'title_page' => 'Danh sách giỏ hàng',
            'shopping'   => $shopping
        ];
        return view('frontend.pages.shopping.index', $viewData);
    }

    /**
     * Thêm giỏ hàng
     * */
    public function add($id)
    {
        $product = Product::find($id);

        //1. Kiểm tra tồn tại sản phẩm
        if (!$product) return redirect()->to('/');

        // 2. Kiểm tra số lượng sản phẩm
        if ($product->pro_number < 1) {
            //4. Thông báo
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Số lượng sản phẩm không đủ'
            ]);

            return redirect()->back();
        }
        $cart          = \Cart::content();
        $idCartProduct = $cart->search(function ($cartItem) use ($product) {
            if ($cartItem->id == $product->id) return $cartItem->id;
        });
        if ($idCartProduct) {
            $productByCart = \Cart::get($idCartProduct);
            if ($product->pro_number < ($productByCart->qty + 1)) {
                \Session::flash('toastr', [
                    'type'    => 'error',
                    'message' => 'Số lượng sản phẩm không đủ'
                ]);
                return redirect()->back();
            }
        }

        // 3. Thêm sản phẩm vào giỏ hàng
        \Cart::add([
            'id'      => $product->id,
            'name'    => $product->pro_name,
            'qty'     => 1,
            'price'   => number_price($product->pro_price, $product->pro_sale),
            'weight'  => '1',
            'options' => [
                'sale'      => $product->pro_sale,
                'price_old' => $product->pro_price,
                'image'     => $product->pro_avatar
            ]
        ]);

        //4. Thông báo
        \Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Thêm giỏ hàng thành công'
        ]);

        return redirect()->back();
    }

    public function postPay(Request $request)
    {
        Cache::forget('HOME.PRODUCT_PAY');
        $data = $request->except("_token");
        if (!\Auth::user()->id) {
            //4. Thông báo
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Đăng nhập để thực hiện tính năng này'
            ]);

            return redirect()->back();
        }


        $data['tst_user_id']     = \Auth::user()->id;
        $data['tst_total_money'] = str_replace(',', '', \Cart::subtotal(0));
        $data['created_at']      = Carbon::now();

        // check nếu thanh toán ví thì kiểm tra số tiền
        if ($request->pay == 'vnpay') {
            return $this->payVnPay($request);
        }

        //Thanh toán VNPAY
        if ($request->payment == 2) {
            $totalMoney = str_replace(',', '', \Cart::subtotal(0));
            session(['info_custormer' => $data]);
            return view('frontend/pages/vnpay/index', compact('totalMoney'));
        }

        // Lấy thông tin đơn hàng
        $shopping                  = \Cart::content();
        $data['options']['orders'] = $shopping;

        $options['drive'] = $request->pay;

        try {
            \Cart::destroy();
            new PayManager($data, $shopping, $options);
        } catch (\Exception $exception) {
            Log::error("[Errors pay shopping cart]" . $exception->getMessage());
        }

        \Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Đơn hàng của bạn đã được lưu'
        ]);

        return redirect()->to('/');
    }

    public function payVnPay(Request $request)
    {
        $totalMoney    = str_replace(',', '', \Cart::subtotal(0, 3));
        $transactionId = Transaction::insertGetId([
            'tst_user_id'     => get_data_user('web'),
            'tst_total_money' => str_replace(',', '', \Cart::subtotal(0)),
            'tst_address'     => $request->tst_address,
            'tst_phone'       => $request->tst_phone,
            'created_at'      => Carbon::now(),
            'updated_at'      => Carbon::now()
        ]);

        if ($transactionId) {
            $products = \Cart::content();
            foreach ($products as $product) {
                Order::insert([
                    'od_transaction_id' => $transactionId,
                    'od_product_id'     => $product->id,
                    'od_qty'            => $product->qty,
                    'od_price'          => $product->options->price_old,
                    'od_sale'           => $product->options->sale,
                    'created_at'        => Carbon::now()
                ]);
            }
        }

        // tham so dau vao
        $inputData = array(
            "vnp_Version"    => "2.0.0",
            "vnp_TmnCode"    => $this->vnp_TmnCode,
            "vnp_Amount"     => $totalMoney * 100, // so tien thanh toan,
            "vnp_Command"    => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode"   => "VND",
            "vnp_IpAddr"     => $_SERVER['REMOTE_ADDR'], // IP
            "vnp_Locale"     => 'vi', // ngon ngu,
            "vnp_OrderInfo"  => 'Thanh toán Online', // noi dung thanh toan,
            "vnp_OrderType"  => 'billpayment',    // loai hinh thanh toan
            "vnp_ReturnUrl"  => $this->vnp_Returnurl,   // duong dan tra ve
            "vnp_TxnRef"     => $transactionId, // ma don hang,
        );

        if ($request->bank_code) {
            $inputData['vnp_BankCode'] = $request->bank_code;
        }
        ksort($inputData);
        $query    = "";
        $i        = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . $key . "=" . $value;
            } else {
                $hashdata .= $key . "=" . $value;
                $i        = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }


        $vnp_Url = $this->vnp_Url . "?" . $query;
        if ($this->vnp_HashSecret) {
            $vnpSecureHash = hash('sha256', $this->vnp_HashSecret . $hashdata);
            $vnp_Url       .= 'vnp_SecureHashType=SHA256&vnp_SecureHash=' . $vnpSecureHash;
        }

        $returnData = array(
            'code'    => '00',
            'message' => 'success',
            'data'    => $vnp_Url
        );

        return redirect()->to($returnData['data']);
    }

    public function callbackPay(Request $request)
    {
        $transaction = Transaction::find($request->vnp_TxnRef);

        if ($request->vnp_ResponseCode == '24')
        {
            // Huỷ thanh toán online
            if ($transaction)
            {
                Order::where('od_transaction_id', $transaction->id)->delete();
                $transaction->delete();
                return redirect()->to('/');
            }
        }elseif ($request->vnp_ResponseCode == '0')
        {
            $transaction->tst_status = Transaction::STATUS_SUCCESS;
            $transaction->tst_type = Transaction::TYPE_ONLINE;
            $transaction->save();

            \Cart::destroy();
            // thanh toán thành công
        }

        return redirect()->to('/');
    }

    public function update(Request $request, $id)
    {
        if ($request->ajax()) {

            //1.Lấy tham số
            $qty       = $request->qty ?? 1;
            $idProduct = $request->idProduct;
            $product   = Product::find($idProduct);

            //2. Kiểm tra tồn tại sản phẩm
            if (!$product) return response(['messages' => 'Không tồn tại sản sản phẩm cần update']);

            //3. Kiểm tra số lượng sản phẩm còn ko
            if ($product->pro_number < $qty) {
                return response([
                    'messages' => 'Số lượng cập nhật không đủ',
                    'error'    => true
                ]);
            }

            //4. Update
            \Cart::update($id, $qty);

            return response([
                'messages'   => 'Cập nhật thành công',
                'totalMoney' => \Cart::subtotal(0),
                'totalItem'  => number_format(number_price($product->pro_price, $product->pro_sale) * $qty, 0, ',', '.')
            ]);
        }
    }

    /**
     *  Xoá sản phẩm đơn hang
     * */
    public function delete(Request $request, $rowId)
    {
        if ($request->ajax()) {
            \Cart::remove($rowId);
            return response([
                'totalMoney' => \Cart::subtotal(0),
                'type'       => 'success',
                'message'    => 'Xoá sản phẩm khỏi đơn hàng thành công'
            ]);
        }
    }

    /**
     *  Thanh toán VNPay
     * */
    public function createPayment(Request $request)
    {
        $vnp_TxnRef    = randString(15); //Mã đơn hàng. Trong thực tế Merchant cần insert đơn hàng vào DB và gửi mã này sang VNPAY
        $vnp_OrderInfo = $request->order_desc;
        $vnp_OrderType = $request->order_type;
        $vnp_Amount    = str_replace(',', '', \Cart::subtotal(0)) * 100;
        $vnp_Locale    = $request->language;
        $vnp_BankCode  = $request->bank_code;
        $vnp_IpAddr    = $_SERVER['REMOTE_ADDR'];

        $inputData = array(
            "vnp_Version"    => "2.0.0",
            "vnp_TmnCode"    => env('VNP_TMN_CODE'),
            "vnp_Amount"     => $vnp_Amount,
            "vnp_Command"    => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode"   => "VND",
            "vnp_IpAddr"     => $vnp_IpAddr,
            "vnp_Locale"     => $vnp_Locale,
            "vnp_OrderInfo"  => $vnp_OrderInfo,
            "vnp_OrderType"  => $vnp_OrderType,
            "vnp_ReturnUrl"  => route('vnpay.return'),
            "vnp_TxnRef"     => $vnp_TxnRef,
        );

        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }
        ksort($inputData);
        $query    = "";
        $i        = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . $key . "=" . $value;
            } else {
                $hashdata .= $key . "=" . $value;
                $i        = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }

        $vnp_Url = env('VNP_URL') . "?" . $query;
        if (env('VNP_HASH_SECRET')) {
            $vnpSecureHash = hash('sha256', env('VNP_HASH_SECRET') . $hashdata);
            $vnp_Url       .= 'vnp_SecureHashType=SHA256&vnp_SecureHash=' . $vnpSecureHash;
        }

        return redirect($vnp_Url);

    }

    public function vnpayReturn(Request $request)
    {
        if ($request->session()->has('info_custormer') && $request->vnp_ResponseCode == '00') {
            \DB::beginTransaction();
            try {
                $vnpayData     = $request->all();
                $data          = session()->get('info_custormer');
                $transactionID = Transaction::insertGetId($data);
                if ($transactionID) {
                    $shopping = \Cart::content();

                    foreach ($shopping as $key => $item) {
                        // Lưu chi tiết đơn hàng
                        Order::insert([
                            'od_transaction_id' => $transactionID,
                            'od_product_id'     => $item->id,
                            'od_sale'           => $item->options->sale,
                            'od_qty'            => $item->qty,
                            'od_price'          => $item->price,
                        ]);
                        //Tăng lượt mua
                        \DB::table('products')
                            ->where('id', $item->id)
                            ->increment("pro_pay");
                    }

                    $dataPayment = [
                        'p_transaction_id'    => $transactionID,
                        'p_transaction_code'  => $vnpayData['vnp_TxnRef'],
                        'p_user_id'           => $data['tst_user_id'],
                        'p_money'             => $data['tst_total_money'],
                        'p_note'              => $vnpayData['vnp_OrderInfo'],
                        'p_vnp_response_code' => $vnpayData['vnp_ResponseCode'],
                        'p_code_vnpay'        => $vnpayData['vnp_TransactionNo'],
                        'p_code_bank'         => $vnpayData['vnp_BankCode'],
                        'p_time'              => date('Y-m-d H:i', strtotime($vnpayData['vnp_PayDate'])),
                    ];
                    Payment::insert($dataPayment);
                }

                \Session::flash('toastr', [
                    'type'    => 'success',
                    'message' => 'Đơn hàng của bạn đã được lưu'
                ]);
                \Cart::destroy();
                \DB::commit();
                return view('frontend/pages/vnpay/vnpay_return', compact('vnpayData'));
            } catch (\Exception $ex) {
                \Session::flash('toastr', [
                    'type'    => 'error',
                    'message' => 'Đã xảy ra lỗi không thể thanh toán đơn hàng'
                ]);
                \DB::rollback();
                return redirect()->to('/');
            }
        } else {
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Đã xảy ra lỗi không thể thanh toán đơn hàng'
            ]);
            return redirect()->to('/');
        }
    }
}
