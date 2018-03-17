<div id="sidebar" class="col-md-12">
    <div class="one-item">
        <h3>DANH MỤC SẢN PHẨM</h3>
        <ul>
            @foreach($sidebar['categoryProducts'] as $key=>$data)
            <li><a href="{{URL::to('danh-muc/'.$data->path)}}">{{$data->name}}</a></li>
            @endforeach
        </ul>
    </div>
    <div class="one-item">
        <h3>DỊCH VỤ</h3>
        <ul>
            @foreach($sidebar['categoryPosts'] as $key=>$data)
                <li><a href="{{URL::to('dich-vu/'.$data->path)}}">{{$data->name}}</a></li>
            @endforeach
        </ul>
    </div>
    <div class="one-item">
        {{Html::image('images/temps/home/tmp_home_h_product_img_product.jpg','',array('class'=>'sidebar-img'))}}
    </div>
    <div class="one-item">
        {{Html::image('images/temps/home/tmp_home_h_product_img_product.jpg','',array('class'=>'sidebar-img'))}}
    </div>
    <div class="one-item">
        {{Html::image('images/temps/home/tmp_home_h_product_img_product.jpg','',array('class'=>'sidebar-img'))}}
    </div>
    <div class="one-item">
        {{Html::image('images/temps/home/tmp_home_h_product_img_product.jpg','',array('class'=>'sidebar-img'))}}
    </div>


</div>