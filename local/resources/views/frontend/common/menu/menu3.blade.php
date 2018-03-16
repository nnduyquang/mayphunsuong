<div id="menu" class="container-fluid p-0">
    <div id="menu_top">
        <div class="container">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-2 p-0">
                        {{ Html::image('images/logo/logo duyhoai_new.png','',array('class'=>'menu_logo'))}}
                    </div>
                    <div class="col-md-4 justify-content-center align-self-center pl-0">
                        <ul class="menu-search">
                            <li><a href="#" id="clickSearch"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                            <li style="width: 100%">
                                {!! Form::open(array('method'=>'POST','id'=>'formSearch')) !!}
                                {!! Form::text('key-search', '', array('placeholder' => 'Tìm Kiếm','class' => 'form-control','id'=>'searchInput')) !!}
                                {!! Form::close() !!}
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-6 justify-content-center align-self-center text-right">
                        <span><i class="fa fa-phone" aria-hidden="true"></i> 0965.322.239 - 0901.196.676</span>
                        <span><i class="fa fa-home" aria-hidden="true"></i> 55/4 KP3 Hà Huy Giáp, Q.12, TPHCM</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="menu_bottom">
        <div class="container">
            <div class="col-md-12 p-0">
                <ul class="main_menu">
                    <li class="li-normal"><a href="{{URL::to('/')}}">Trang Chủ</a></li>
                    @foreach($listMenu as$key=>$data)
                        @if(count($data->children)==0)
                            <li class="li-normal"><a href="{{URL::to($data->url)}}"
                                                     class="">{{$data->text}}</a>
                        @else
                            <li class="has-item-down"><a href="{{URL::to($data->url)}}"
                                                         class="">{{$data->text}}</a>
                                <div class="drop-down col-md-12">
                                    <div class="row">
                                        @foreach($data->children as$key2=>$data2)
                                        <div class="col-md-3 text-center card p-0">
                                            <a href="{{URL::to($data2->url)}}">
                                                {{ Html::image('images/temps/menu/menu3/menu3_1.jpg','',array('class'=>''))}}
                                                <div class="card-body">
                                                    <h4 class="title">{{$data2->text}}</h4>
                                                </div>
                                            </a>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                            </li>
                        @endif
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</div>
