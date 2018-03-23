<div id="h_project">
    <div class="col-md-12 text-center">
        <h3 class="title">Dự Án Đã Thực Hiện</h3>
    </div>
    <div id="list-project" class=" col-md-12">
        <div class="row">
            {{--@foreach($data['projects'] as $key=>$item)--}}
            {{--<div class="col-md-4">--}}
                {{--<div class="one-item card">--}}
                    {{--<a href="{{URL::to('dich-vu/'.$data['categoryProject']->path.'/'.$item->path)}}">--}}
                        {{--{{Html::image($item->image,'',array('class'=>'one-project-img'))}}</a>--}}
                    {{--<div class="card-body">--}}
                        {{--<h4 class="title"><a href="{{URL::to('dich-vu/'.$data['categoryProject']->path.'/'.$item->path)}}">{{$item->title}}</a></h4>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--@endforeach--}}
            <div class="col-md-3">
                    <a class="fancybox" data-fancybox="gallery-ti2"
                       href="{{url('/').'/images/project/10.jpg'}}">
                        {{ Html::image('images/project/10.jpg','',array('class'=>'img-item')) }}</a>
            </div>
            <div class="col-md-3">
                <a class="fancybox" data-fancybox="gallery-ti2"
                   href="{{url('/').'/images/project/2.jpg'}}">
                    {{ Html::image('images/project/2.jpg','',array('class'=>'img-item')) }}</a>
            </div>
            <div class="col-md-3">
                <a class="fancybox" data-fancybox="gallery-ti2"
                   href="{{url('/').'/images/project/11.jpg'}}">
                    {{ Html::image('images/project/11.jpg','',array('class'=>'img-item')) }}</a>
            </div>
            <div class="col-md-3">
                <a class="fancybox" data-fancybox="gallery-ti2"
                   href="{{url('/').'/images/project/4.jpg'}}">
                    {{ Html::image('images/project/4.jpg','',array('class'=>'img-item')) }}</a>
            </div>
            <div class="col-md-3">
                <a class="fancybox" data-fancybox="gallery-ti2"
                   href="{{url('/').'/images/project/5.jpg'}}">
                    {{ Html::image('images/project/5.jpg','',array('class'=>'img-item')) }}</a>
            </div>
            <div class="col-md-3">
                <a class="fancybox" data-fancybox="gallery-ti2"
                   href="{{url('/').'/images/project/6.jpg'}}">
                    {{ Html::image('images/project/6.jpg','',array('class'=>'img-item')) }}</a>
            </div>
            <div class="col-md-3">
                <a class="fancybox" data-fancybox="gallery-ti2"
                   href="{{url('/').'/images/project/13.jpg'}}">
                    {{ Html::image('images/project/13.jpg','',array('class'=>'img-item')) }}</a>
            </div>
            <div class="col-md-3">
                <a class="fancybox" data-fancybox="gallery-ti2"
                   href="{{url('/').'/images/project/14.jpg'}}">
                    {{ Html::image('images/project/14.jpg','',array('class'=>'img-item')) }}</a>
            </div>
            <div class="col-md-3">
                <a class="fancybox" data-fancybox="gallery-ti2"
                   href="{{url('/').'/images/project/16.jpg'}}">
                    {{ Html::image('images/project/16.jpg','',array('class'=>'img-item')) }}</a>
            </div>
            <div class="col-md-3">
                <a class="fancybox" data-fancybox="gallery-ti2"
                   href="{{url('/').'/images/project/17.jpg'}}">
                    {{ Html::image('images/project/17.jpg','',array('class'=>'img-item')) }}</a>
            </div>
            <div class="col-md-3">
                <a class="fancybox" data-fancybox="gallery-ti2"
                   href="{{url('/').'/images/project/19.jpg'}}">
                    {{ Html::image('images/project/19.jpg','',array('class'=>'img-item')) }}</a>
            </div>
            <div class="col-md-3">
                <a class="fancybox" data-fancybox="gallery-ti2"
                   href="{{url('/').'/images/project/5.jpg'}}">
                    {{ Html::image('images/project/5.jpg','',array('class'=>'img-item')) }}</a>
            </div>

        </div>
    </div>
    {{--<div class="col-md-12 text-center">--}}
        {{--<div class="row justify-content-center">--}}
            {{--<a class="btn-more" href="{{URL::to('dich-vu/'.$data['categoryProject']->path)}}">Xem Thêm</a>--}}
        {{--</div>--}}
    {{--</div>--}}
</div>