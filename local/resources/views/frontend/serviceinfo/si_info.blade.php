<div id="si_info" class="col-md-12">
    <h1 class="title">{{$data['service']->title}}</h1>
    <div class="content">
        {!! $data['service']->content !!}
    </div>
    <hr>
    <div id="si_info_orther" class="col-md-12">
        <h3 class="title">Có Thể Bạn Quan Tâm</h3>
        <div class="list-service">
            <div class="row">
                @foreach($data['orther'] as $key=>$item)
                <div class="one-service col-md-3 card">
                    <a href="{{URL::to('dich-vu/'.$data['service']->path.'/'.$item->path)}}"> {{Html::image($item->image,'',array('class'=>'one-service-img'))}}</a>
                    <div class="card-body">
                        <h4 class="title-service"><a href="{{URL::to('dich-vu/'.$data['service']->path.'/'.$item->path)}}">{{$item->title}}</a></h4>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>