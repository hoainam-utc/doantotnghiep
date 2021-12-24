<form role="form" action="" method="POST" enctype="multipart/form-data" autocomplete="off">
    @csrf
    <div class="col-sm-8">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Thông tin cơ bản</h3>
            </div>
            <div class="box-body">
                <div class="form-group ">
                    <label for="exampleInputEmail1">{{  __('admin_product.product.label_name')}}</label>
                    <input type="text" class="form-control" name="pro_name" placeholder="" autocomplete="off" value="{{  $product->pro_name ?? old('pro_name') }}">
                    @if ($errors->first('pro_name'))
                        <span class="text-danger">{{ $errors->first('pro_name') }}</span>
                    @endif
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="exampleInputEmail1">{{  __('admin_product.product.label_price')}}</label>
                             <input type="text" name="pro_price" value="{{  $product->pro_price ?? old('pro_price',0) }}" class="form-control" data-type="currency" placeholder="15.000.000">
                             @if ($errors->first('pro_price'))
                                <span class="text-danger">{{ $errors->first('pro_price') }}</span>
                            @endif
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="exampleInputEmail1">{{  __('admin_product.product.label_sale')}}</label>
                             <input type="number" name="pro_sale" value="{{  $product->pro_sale ?? old('pro_sale',0) }}" class="form-control" data-type="currency" placeholder="5">
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="exampleInputEmail1">{{  __('admin_product.product.label_number')}}</label>
                            <input type="number" name="pro_number_import" value="{{  $product->pro_number_import ?? old('pro_number_import',0) }}" class="form-control"  placeholder="5">
                        </div>
                    </div>
{{--                    @if (isset($product))--}}
{{--                        <div class="col-sm-3">--}}
{{--                            <div class="form-group">--}}
{{--                                <label for="exampleInputEmail1">Nhập thêm số lượng</label>--}}
{{--                                <input type="number" class="form-control" name="add_number" value="0">--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    @endif--}}
{{--                    <div class="col-sm-9">--}}
{{--                        <div class="form-group">--}}
{{--                            <label for="tag">Keyword</label>--}}
{{--                            <select name="keywords[]" class="form-control js-select2-keyword" multiple="">--}}
{{--                                <option value="">__Click__</option>--}}
{{--                                @foreach($keywords as $keyword)--}}
{{--                                    <option value="{{ $keyword->id }}" {{ in_array($keyword->id, $keywordOld ) ? "selected='selected'"  : '' }}>--}}
{{--                                        {{ $keyword->k_name }}</option>--}}
{{--                                @endforeach--}}
{{--                            </select>--}}
{{--                        </div>--}}
{{--                    </div>--}}
                </div>
                <div class="form-group ">
                    <label for="exampleInputEmail1">{{  __('admin_product.product.label_description')}}</label>
                    <textarea name="pro_description" class="form-control" cols="5" rows="2" autocomplete="off">{{  $product->pro_description ?? old('pro_description') }}</textarea>
                    @if ($errors->first('pro_description'))
                        <span class="text-danger">{{ $errors->first('pro_description') }}</span>
                    @endif
                </div>

                <div class="form-group ">
                    <label class="control-label">{{  __('admin_product.product.label_category')}} <b class="col-red">(*)</b></label>
                    <select name="pro_category_id" class="form-control ">
                        <option value="">__Click__</option>
                        @foreach($categories as $category)
                            <option value="{{ $category->id }}" {{ ($product->pro_category_id ?? '') == $category->id ? "selected='selected'" : "" }}>
                                {{  $category->c_name }}
                            </option>
                        @endforeach
                    </select>
                    @if ($errors->first('pro_category_id'))
                        <span class="text-danger">{{ $errors->first('pro_category_id') }}</span>
                    @endif
                </div>
            </div>
        </div>
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">{{  __('admin_product.product.label_attribute')}}</h3>
            </div>
            <div class="box-body">
                @foreach($attributes  as $key => $attribute)
                    <div class="form-group col-sm-3">
                        <h4 style="border-bottom: 1px solid #dedede;padding-bottom: 10px;">{{ $key }}</h4>
                        @foreach($attribute as $item)
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="attribute[]" {{ in_array($item['id'], $attributeOld ) ? "checked"  : '' }}
                                value="{{ $item['id'] }}"> {{ $item['atb_name'] }}
                            </label>
                         </div>
                         @endforeach
                    </div>
                @endforeach
            </div>
            <hr>
            <div class="box-header with-border">
                <h3 class="box-title">Album ảnh</h3>
            </div>
            <div class="box-body">
                @if (isset($images))
                    <div class="row" style="margin-bottom: 15px;">
                        @foreach($images as $item)
                            <div class="col-sm-2">
                                <a href="{{ route('admin.product.delete_image', $item->id) }}" style="display: block;">
                                    <img src="{{ pare_url_file($item->pi_slug) }}" style="width: 100%;height: auto">
                                </a>
                            </div>
                        @endforeach
                    </div>
                @endif
                 <div class="form-group">
                    <div class="file-loading">
                        <input id="images" type="file" name="file[]" multiple class="file" data-overwrite-initial="false" data-min-file-count="0">
                    </div>
                </div>
            </div>
        </div>
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">{{  __('admin_product.product.label_content_title')}}</h3>
            </div>
            <div class="box-body">
                <div class="form-group " id="time">
                    <label for="exampleInputEmail1">Content</label>
                    <textarea name="pro_content" id="content" class="form-control textarea" required="" cols="5" rows="2" >{{ $product->pro_content ?? '' }}</textarea>
                    @if ($errors->first('pro_content'))
                        <span class="text-danger">{{ $errors->first('pro_content') }}</span>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">{{  __('admin_product.product.label_avatar')}}</h3>
            </div>
            <div class="box-body block-images">
                <div style="margin-bottom: 10px">
                    <img src="{{ pare_url_file($product->pro_avatar ?? '') ?? '/images/no-image.jpg' }}" onerror="this.onerror=null;this.src='/images/no-image.jpg';" alt="" class="img-thumbnail" style="width: 200px;height: 200px;">
                </div>
                <div style="position:relative;"> <a class="btn btn-primary" href="javascript:;"> Choose File... <input type="file" style="position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:&quot;progid:DXImageTransform.Microsoft.Alpha(Opacity=0)&quot;;opacity:0;background-color:transparent;color:transparent;" name="pro_avatar" size="40" class="js-upload"> </a> &nbsp; <span class="label label-info" id="upload-file-info"></span> </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12 clearfix">
        <div class="box-footer text-center">
            <a href="{{ route('admin.product.index') }}" class="btn btn-default"><i class="fa fa-arrow-left"></i> {{  __('admin_product.btn_back')}}</a>
            <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> {{  __('admin_product.btn_save')}} </button> </div>
    </div>
</form>


@section('script')
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/css/fileinput.css" media="all"
          rel="stylesheet" type="text/css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/js/fileinput.js"
            type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/themes/fa/theme.js"
            type="text/javascript"></script>
    {{--<script src="{{  asset('static_admin/bower_components/jquery/dist/jquery.min.js') }}"></script>--}}

    <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
    <script>
        var options = {
            filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
            filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
            filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
            filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
        };

        $(function () {
            CKEDITOR.replace('content', options)
        })
    </script>
@stop

