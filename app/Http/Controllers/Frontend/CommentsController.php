<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Comments;
use App\Models\Order;
use App\Models\Product;
use App\Models\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class CommentsController extends Controller
{
    public function store(Request $request)
    {
        if ($request->ajax()) {
            $productID = $request->productId;
			$data = $request->all();
            // Check product
            $product = Product::find($productID);
            if (!$product) {
                return response(['code' => 404]);
            }

            // check đã mua sp chưa
            $transaction = Transaction::where('tst_user_id', \Auth::user()->id)->get();
            $flag = false;
            foreach ($transaction as $item)
            {
                $order = Order::where([
                    'od_transaction_id' => $item->id,
                    'od_product_id' => $productID
                ])->first();
                if ($order)
                {
                    $flag = true;
                    break;
                }
            }
            if ($flag == false)
            {
                return response([
                    'code' => 501,
                    'message' => 'Bạn phải mua sản phẩm mới được bình luận, đánh giá'
                ]);
            }

            // Check load lại page để hiện popup captcha
            // if (\Auth::user()->count_comment >= 2) {
            //     return response([
            //         'code' => '501'
            //     ]);
            // }

			$images = $request->images;
            $data      = [
                'cmt_user_id'    => \Auth::user()->id,
                'cmt_content'    => $request->comment,
                'cmt_product_id' => $productID,
                'cmt_parent_id'  => $request->commentId ?? 0,
                'created_at'     => Carbon::now()
            ];
			$dataImage = [];

			if ($images)
			{
				foreach ($images as $key => $fileImage) {
					$ext    = $fileImage->getClientOriginalExtension();
					$extend = [
						'png', 'jpg', 'jpeg', 'PNG', 'JPG'
					];

					if (!in_array($ext, $extend)) return false;

					$filename = date('Y-m-d__') . Str::slug($fileImage->getClientOriginalName()) . '.' . $ext;
					$path     = public_path() . '/uploads/' . date('Y/m/d/');
					if (!\File::exists($path)) {
						mkdir($path, 0777, true);
					}

					$fileImage->move($path, $filename);
					$dataImage[] = $filename;
				}
			}

			$data['cmt_images'] = json_encode($dataImage);
            $commentId = Comments::insertGetId($data);
            if ($commentId) {
                $comment = Comments::with('user:id,name')->find($commentId);
                \DB::table('users')->where('id', \Auth::user()->id)
                        ->increment('count_comment');
				Cache::forget('COMMENT_PRODUCT_'. $productID);
				Cache::forget('COMMENT_PRODUCT_'. $productID.'_PAGE_1');
				Cache::forget('COMMENT_PRODUCT_'. $productID.'_PAGE_2');
				Cache::forget('COMMENT_PRODUCT_'. $productID.'_PAGE_3');
				Cache::forget('COMMENT_PRODUCT_'. $productID.'_PAGE_4');
				Cache::forget('COMMENT_PRODUCT_'. $productID.'_PAGE_5');

                $html    = view('frontend.pages.product_detail.include._inc_comment_item', compact('comment'))->render();
                return response([
                    'code' => 200,
                    'html' => $html
                ]);
            }

            return response(['code' => 401]);
        }
    }
}
