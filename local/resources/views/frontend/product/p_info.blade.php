<div id="p_info" class="col-md-12">
    <div class="row">
        <div class="col-md-6">
            {{Html::image('images/temps/home/tmp_home_h_product_img_product.jpg','',array('class'=>'product-img'))}}
        </div>
        <div id="p-short-info" class="col-md-6">
            <h1 class="title">{{$data['product']->name}}</h1>
            @if($data['product']->price!=0)
                <span class="price-sale">{{$data['product']->final_price}} VND</span>
                @if($data['product']->sale!=0)
                    <span class="price-nosale">Giá Trước Đây: <span> {{$data['product']->price}}
                            VND</span></span>
                    <span class="price-saving">Tiết Kiệm:{{$data['product']->sale}}%</span>
                @endif
            @else
                <span class="price-contact">Liên Hệ</span>
            @endif
            <input class="btn-confirm btn" type="button" value="0965322239">
        </div>
        <div id="p-content" class="col-md-12">
            {!! $data['product']->content !!}
        </div>
        <div id="p-orther" class="col-md-12">
            <h3 class="title">Có Thể Bạn Quan Tâm</h3>
            <div class="list-product">
                <div class="row">
                    @foreach($data['orther'] as $key=>$item)
                        <div class="one-product col-md-3 card">
                            <a href="{{URL::to('danh-muc/'.$data['product']->path.'/'.$item->path)}}"> {{Html::image($item->image,'',array('class'=>'one-product-img'))}}</a>
                            @if($item->sale!=0)
                                <span class="discount">{{$item->sale}}%</span>
                            @endif
                            <div class="card-body">
                                <h4 class="title-product"><a href="{{URL::to('danh-muc/'.$data['product']->path.'/'.$item->path)}}">{{$item->name}}</a></h4>
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
                </div>
            </div>
        </div>
    </div>
</div>