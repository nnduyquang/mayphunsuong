<div id="footer" class="col-md-12 p-0">

    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    {{ Html::image('images/logo/logo duyhoai_new.png','',array('class'=>'menu_logo'))}}
                    <ul>

                        <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i><span>Đường số 5, Quốc lộ 13, P Hiệp Bình Chánh, Q Thú Đức .Tp. Hồ Chí Minh</span></a>
                        </li>
                        <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i><span>Chăm sóc khách hàng: </br>
                                    0971.703.972 - 0933.589.089</br>
                                    Từ 8h00-17h00 các ngày thứ 2 đến thứ 7</span></a></li>
                        <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i><span>phunsuongduyhuy@gmail.com</span></a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h3>Danh Sách Sản Phẩm</h3>
                    <ul>
                        @foreach($listFooterCategory as $key=>$data)
                            <li><a href="{{URL::to('danh-muc/'.$data->path)}}">{{$data->name}}</a></li>
                        @endforeach
                    </ul>
                </div>
                {{--<div class="col-md-3">--}}
                {{--<h3>Giới Thiệu</h3>--}}
                {{--<ul>--}}
                {{--<li><a href="#">Về Chúng Tôi</a></li>--}}
                {{--<li><a href="#">Liên Hệ</a></li>--}}
                {{--</ul>--}}
                {{--</div>--}}

                <div class="col-md-4">
                    <h3>Facebook</h3>
                </div>
                .
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <span>Designed by Smartlinks.vn</span>
        </div>
    </div>

</div>