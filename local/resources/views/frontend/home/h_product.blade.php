<div id="h_product" class="col-md-12">
    @foreach($data['categoryProducts'] as $key=>$item)
        <div class="one-item-category">
            <h3 class="title">{{$item->name}}</h3>
            <div class="list-product">
                <div class="row">
                    @foreach($item->products as $key2=>$item2)
                        <div class="one-product col-md-3 card">
                            <a href="{{URL::to('danh-muc/'.$item->path.'/'.$item2->path)}}"> {{Html::image($item2->image,'',array('class'=>'one-product-img'))}}</a>
                            @if($item2->sale!=0)
                                <span class="discount">{{$item2->sale}}%</span>
                            @endif
                            <div class="card-body">
                                <h4 class="title-product"><a href="{{URL::to('danh-muc/'.$item->path.'/'.$item2->path)}}">{{$item2->name}}</a></h4>
                            </div>
                            <div class="card-footer">
                                <div class="card-group">
                                    @if($item2->price!=0)
                                        @if($item2->sale!=0)
                                            <span class="price-saving">{{$item2->price}}₫</span>
                                        @endif
                                        <span class="price-sale">{{$item2->price}}₫</span>
                                    @else
                                        <span class="price-contact">Liên Hệ</span>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="col-md-12 text-center">
                <div class="row justify-content-center">
                    <a class="btn-more" href="{{URL::to('danh-muc/'.$item->path)}}">Xem Thêm</a>
                </div>
            </div>
        </div>
    @endforeach
</div>