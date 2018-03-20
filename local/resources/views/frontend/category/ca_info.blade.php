<div id="ca_info">
    <div class="one-item-category">
        <h3 class="title">{{$data['categoryProduct']->name}}</h3>
        <div class="list-product">
            <div class="row">
                @foreach($data['products'] as $key=>$item)
                    <div class="one-product col-md-3 card">
                        <a href="{{URL::to('danh-muc/'.$data['categoryProduct']->path.'/'.$item->path)}}"> {{Html::image($item->image,'',array('class'=>'one-product-img'))}}</a>
                        @if($item->sale!=0)
                            <span class="discount">{{$item->sale}}%</span>
                        @endif
                        <div class="card-body">
                            <h4 class="title-product"><a href="{{URL::to('danh-muc/'.$data['categoryProduct']->path.'/'.$item->path)}}">{{$item->name}}</a></h4>
                        </div>
                        <div class="card-footer">
                            <div class="card-group">
                                @if($item->price!=0)
                                    @if($item->sale!=0)
                                    <span class="price-saving">{{$item->price}}₫</span>
                                    @endif
                                    <span class="price-sale">{{$item->price}}₫</span>
                                @else
                                    <span class="price-contact">Liên Hệ</span>
                                @endif
                            </div>
                        </div>
                    </div>
                @endforeach
                {{--<div class="one-product col-md-3 card">--}}
                    {{--<a href=""> {{Html::image('images/temps/home/tmp_home_h_product_img_product.jpg','',array('class'=>'one-product-img'))}}</a>--}}
                    {{--<span class="discount">- 30--}}
                    {{--%</span>--}}
                    {{--<div class="card-body">--}}
                        {{--<h4 class="title-product"><a href="#">Trọn Bộ Máy Phun Sương Đài Loan Trọn Bộ Máy Phun Sương Đài--}}
                                {{--Loan</a></h4>--}}
                    {{--</div>--}}
                    {{--<div class="card-footer">--}}
                        {{--<div class="card-group">--}}
                    {{--<span class="price-saving">1.500.000--}}
                         {{--₫</span>--}}
                            {{--<span class="price-sale">1.000.000--}}
                        {{--₫</span>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="one-product col-md-3 card">--}}
                    {{--<a href=""> {{Html::image('images/temps/home/tmp_home_h_product_img_product.jpg','',array('class'=>'one-product-img'))}}</a>--}}
                    {{--<span class="discount">- 30--}}
                    {{--%</span>--}}
                    {{--<div class="card-body">--}}
                        {{--<h4 class="title-product"><a href="#">Trọn Bộ Máy Phun Sương Đài Loan Trọn Bộ Máy Phun Sương Đài--}}
                                {{--Loan</a></h4>--}}
                    {{--</div>--}}
                    {{--<div class="card-footer">--}}
                        {{--<div class="card-group">--}}
                    {{--<span class="price-saving">1.500.000--}}
                         {{--₫</span>--}}
                            {{--<span class="price-sale">1.000.000--}}
                        {{--₫</span>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="one-product col-md-3 card">--}}
                    {{--<a href=""> {{Html::image('images/temps/home/tmp_home_h_product_img_product.jpg','',array('class'=>'one-product-img'))}}</a>--}}
                    {{--<span class="discount">- 30--}}
                    {{--%</span>--}}
                    {{--<div class="card-body">--}}
                        {{--<h4 class="title-product"><a href="#">Trọn Bộ Máy Phun Sương Đài Loan Trọn Bộ Máy Phun Sương Đài--}}
                                {{--Loan</a></h4>--}}
                    {{--</div>--}}
                    {{--<div class="card-footer">--}}
                        {{--<div class="card-group">--}}
                    {{--<span class="price-saving">1.500.000--}}
                         {{--₫</span>--}}
                            {{--<span class="price-sale">1.000.000--}}
                        {{--₫</span>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}

                {{--<div class="one-product col-md-3 card">--}}
                    {{--<a href=""> {{Html::image('images/temps/home/tmp_home_h_product_img_product.jpg','',array('class'=>'one-product-img'))}}</a>--}}
                    {{--<span class="discount">- 30--}}
                    {{--%</span>--}}
                    {{--<div class="card-body">--}}
                        {{--<h4 class="title-product"><a href="#">Trọn Bộ Máy Phun Sương Đài Loan Trọn Bộ Máy Phun Sương Đài--}}
                                {{--Loan</a></h4>--}}
                    {{--</div>--}}
                    {{--<div class="card-footer">--}}
                        {{--<div class="card-group">--}}
                    {{--<span class="price-saving">1.500.000--}}
                         {{--₫</span>--}}
                            {{--<span class="price-sale">1.000.000--}}
                        {{--₫</span>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="one-product col-md-3 card">--}}
                    {{--<a href=""> {{Html::image('images/temps/home/tmp_home_h_product_img_product.jpg','',array('class'=>'one-product-img'))}}</a>--}}
                    {{--<span class="discount">- 30--}}
                    {{--%</span>--}}
                    {{--<div class="card-body">--}}
                        {{--<h4 class="title-product"><a href="#">Trọn Bộ Máy Phun Sương Đài Loan Trọn Bộ Máy Phun Sương Đài--}}
                                {{--Loan</a></h4>--}}
                    {{--</div>--}}
                    {{--<div class="card-footer">--}}
                        {{--<div class="card-group">--}}
                    {{--<span class="price-saving">1.500.000--}}
                         {{--₫</span>--}}
                            {{--<span class="price-sale">1.000.000--}}
                        {{--₫</span>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="one-product col-md-3 card">--}}
                    {{--<a href=""> {{Html::image('images/temps/home/tmp_home_h_product_img_product.jpg','',array('class'=>'one-product-img'))}}</a>--}}
                    {{--<span class="discount">- 30--}}
                    {{--%</span>--}}
                    {{--<div class="card-body">--}}
                        {{--<h4 class="title-product"><a href="#">Trọn Bộ Máy Phun Sương Đài Loan Trọn Bộ Máy Phun Sương Đài--}}
                                {{--Loan</a></h4>--}}
                    {{--</div>--}}
                    {{--<div class="card-footer">--}}
                        {{--<div class="card-group">--}}
                            {{--<span class="price-contact">Liên Hệ</span>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="one-product col-md-3 card">--}}
                    {{--<a href=""> {{Html::image('images/temps/home/tmp_home_h_product_img_product.jpg','',array('class'=>'one-product-img'))}}</a>--}}
                    {{--<span class="discount">- 30--}}
                    {{--%</span>--}}
                    {{--<div class="card-body">--}}
                        {{--<h4 class="title-product"><a href="#">Trọn Bộ Máy Phun Sương Đài Loan Trọn Bộ Máy Phun Sương Đài--}}
                                {{--Loan</a></h4>--}}
                    {{--</div>--}}
                    {{--<div class="card-footer">--}}
                        {{--<div class="card-group">--}}
                    {{--<span class="price-saving">1.500.000--}}
                         {{--₫</span>--}}
                            {{--<span class="price-sale">1.000.000--}}
                        {{--₫</span>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            </div>
        </div>
    </div>
</div>