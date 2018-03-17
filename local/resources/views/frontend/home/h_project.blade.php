<div id="h_project">
    <div class="col-md-12 text-center">
        <h3 class="title">Dự Án Đã Thực Hiện</h3>
    </div>
    <div id="list-project" class=" col-md-12">
        <div class="row">
            @foreach($data['projects'] as $key=>$item)
            <div class="col-md-4">
                <div class="one-item card">
                    <a href="{{URL::to('dich-vu/'.$data['categoryProject']->path.'/'.$item->path)}}">
                        {{Html::image($item->image,'',array('class'=>'one-project-img'))}}</a>
                    <div class="card-body">
                        <h4 class="title"><a href="{{URL::to('dich-vu/'.$data['categoryProject']->path.'/'.$item->path)}}">{{$item->title}}</a></h4>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
    <div class="col-md-12 text-center">
        <div class="row justify-content-center">
            <a class="btn-more" href="{{URL::to('dich-vu/'.$data['categoryProject']->path)}}">Xem Thêm</a>
        </div>
    </div>
</div>