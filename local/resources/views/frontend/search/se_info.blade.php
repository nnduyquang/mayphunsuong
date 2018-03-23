<div id="se_info" class="col-md-12">
    <h3 class="title">Kết Quả Tìm Kiếm</h3>
    <h1 class="title">{{$data['key-search']}}</h1>
    <div class="list-product">
        <div class="row">
            @foreach($data['products'] as $key=>$item)
                <div class="one-product col-md-3 card">
                    <a href="{{URL::to('danh-muc/'.$item->categoryproduct->path.'/'.$item->path)}}"> {{Html::image($item->image,'',array('class'=>'one-product-img'))}}</a>
                    @if($item->sale!=0)
                        <span class="discount">{{$item->sale}}%</span>
                    @endif
                    <div class="card-body">
                        <h4 class="title-product"><a href="{{URL::to('danh-muc/'.$item->categoryproduct->path.'/'.$item->path)}}">{{$item->name}}</a></h4>
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