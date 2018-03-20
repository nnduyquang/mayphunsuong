<div id="sidebar" class="col-md-12">
    <div class="one-item">
        <h3>DANH MỤC SẢN PHẨM</h3>
        <ul class="ul-normal">
            @foreach($sidebar['categoryProducts'] as $key=>$data)
            <li><a href="{{URL::to('danh-muc/'.$data->path)}}">{{$data->name}}</a></li>
            @endforeach
        </ul>
    </div>
    <div class="one-item">
        <h3>DỊCH VỤ</h3>
        <ul class="ul-normal">
            @foreach($sidebar['categoryPosts'] as $key=>$data)
                <li><a href="{{URL::to('dich-vu/'.$data->path)}}">{{$data->name}}</a></li>
            @endforeach
        </ul>
    </div>
    <div class="one-item">
        <h3>HỖ TRỢ TRỰC TUYẾN</h3>
        <ul class="ul-ht-info">
            <li>
                <h4 class="ht-name">Mr.A</h4>
                <div>Zalo: 0909 090 090</div>
                <div>Email: a@gmail.com</div>
            </li>
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