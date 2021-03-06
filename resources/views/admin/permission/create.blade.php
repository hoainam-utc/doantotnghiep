@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Permission</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Account</a></li>
            <li><a href="#">Permission</a></li>
            <li class="active">Create</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <!-- Horizontal Form -->
                <div class="box box-info">
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form class="form-horizontal" method="POST" action="">
                        @csrf
                        <div class="box-body">
                            <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
                                <label for="inputEmail3" class="col-sm-2 control-label">Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="slug" onkeyup="to_slug();" name="name" placeholder="Super Admin">
                                    @if ($errors->has('name'))
                                        <span class="text-danger">{{ $errors->first('name') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Guard Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="guard_name"  placeholder="admins" value="admins">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Group </label>
                                <div class="col-sm-10">
                                    <select name="group_permission" class="form-control" id="">
                                        @foreach($group as $key => $gr)
                                            <option value="{{ $key }}">{{ $gr }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Description</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="" cols="30" name="description"
                                              placeholder="M?? t??? v??? ch???c n??ng c???a permission ..." rows="5"></textarea>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer text-center">
                            <a href="{{ route('admin.permission.list') }}" class="btn btn-default"><i class="fa fa-arrow-left"></i> Cancel</a>
                            <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Th??m m???i</button>
                        </div>
                        <!-- /.box-footer -->
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('script')
    <script>
        function to_slug()
        {
            //L???y text t??? th??? input title
            str = document.getElementById("slug").value;
            // Chuy???n h???t sang ch??? th?????ng
            str = str.toLowerCase();

            // x??a d???u
            str = str.replace(/(??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???)/g, 'a');
            str = str.replace(/(??|??|???|???|???|??|???|???|???|???|???)/g, 'e');
            str = str.replace(/(??|??|???|???|??)/g, 'i');
            str = str.replace(/(??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???)/g, 'o');
            str = str.replace(/(??|??|???|???|??|??|???|???|???|???|???)/g, 'u');
            str = str.replace(/(???|??|???|???|???)/g, 'y');
            str = str.replace(/(??)/g, 'd');

            // X??a k?? t??? ?????c bi???t
            str = str.replace(/([^0-9a-z_\-\s])/g, '');

            // X??a kho???ng tr???ng thay b???ng k?? t??? -
            str = str.replace(/(\s+)/g, '-');

            // x??a ph???n d??? - ??? ?????u
            str = str.replace(/^-+/g, '');

            // x??a ph???n d?? - ??? cu???i
            str = str.replace(/-+$/g, '');

            // return
            document.getElementById('slug').value = str;
            // return str;
        }
    </script>
@stop