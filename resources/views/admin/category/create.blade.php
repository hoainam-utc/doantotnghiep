@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>{{  __('admin_product.category.title_create')}}</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="{{  route('admin.category.index') }}"> Danh mục</a></li>
            <li class="active"> Thêm danh mục </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <form role="form" action="" method="POST" enctype="multipart/form-data">
                         @csrf
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('c_name') ? 'has-error' : '' }}">
                                <label for="name">{{  __('admin_product.category.label_name')}} <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" name="c_name"  placeholder="Tên danh mục ...">
                                @if ($errors->first('c_name'))
                                    <span class="text-danger">{{ $errors->first('c_name') }}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="name">{{  __('admin_product.category.label_parent')}} <span class="text-danger">(*)</span></label>
                                <select name="c_parent_id" class="form-control" id="">
                                    <option value="0">__ROOT__</option>
                                    @foreach($categories as $category)
                                        <option value="{{ $category->id }}">
                                            <?php $str = '' ;for($i = 0; $i < $category->level; $i ++){ echo $str; $str .= '-- '; }?>
                                            {{ $category->c_name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="box box-warning">
                                <div class="box-header with-border">
                                    <h3 class="box-title">{{  __('admin_product.category.label_avatar')}}</h3>
                                </div>
                                <div class="box-body block-images">
                                    <div style="margin-bottom: 10px">
                                        <img src="/images/no-image.jpg" onerror="this.onerror=null;this.src='/images/no-image.jpg';" alt="" class="img-thumbnail" style="width: 200px;height: 200px;">
                                    </div>
                                    <div style="position:relative;"> <a class="btn btn-primary" href="javascript:;"> Chọn ảnh... <input type="file" style="position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:&quot;progid:DXImageTransform.Microsoft.Alpha(Opacity=0)&quot;;opacity:0;background-color:transparent;color:transparent;" name="c_avatar" size="40" class="js-upload"> </a> &nbsp; <span class="label label-info" id="upload-file-info"></span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="box-footer text-center">
                                <a href="{{ route('admin.category.index') }}" class="btn btn-danger">
                                    {{  __('admin_product.btn_back')}} <i class="fa fa-undo"></i></a>
                                <button type="submit" class="btn btn-success">{{  __('admin_product.btn_save')}} <i class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop