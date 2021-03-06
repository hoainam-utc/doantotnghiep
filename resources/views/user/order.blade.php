@extends('layouts.app_master_user')
@section('css')
    <link rel="stylesheet" href="{{ asset('css/user.min.css') }}">
@stop
@section('content')
    <section>
        <div class="title">Chi tiết đơn hàng #{{ $transaction->id }}</div>
        <div class="row">
            <div class="col-4">
                <h5>Thông tin</h5>
                <div class="box">
                    <p><b>{{ $transaction->user->name ?? "[N\A]" }}</b></p>
                    <p>Address: <span>{{ $transaction->tst_address }}</span></p>
                </div>
            </div>
            <div class="col-4">
                <h5>Mẫu giao hàng</h5>
                <div class="box">
                    <p>Transport fee : <span>0 đ</span></p>
                </div>
            </div>
            <div class="col-4">
                <h5>Thanh toán</h5>
                <div class="box">
                    <p>Form: <b> Tiền</b></p>
                    <p>Money: <b>{{ number_format($transaction->tst_total_money,0,',','.') }} VNĐ</b></p>
                </div>
            </div>
        </div>
        <div class="content">
            <h4>Thông tin sản phẩm</h4>
            @include('user.include._inc_list_product_order')
            <div>
                <a href="{{ route('get.user.transaction') }}" class="btn btn-light"><i class="fa fa-angle-double-left"></i> Back to the order</a>
                @if ($transaction->tst_status != -1)
                    <a href="{{ route('get.user.tracking_order', $transaction->id) }}" class="btn btn-primary js-">Track your order<i class="fa fa-angle-double-right"></i></a>
                @endif
            </div>
        </div>
    </section>
@stop
