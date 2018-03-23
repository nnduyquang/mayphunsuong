<div id="sev_info">
    @foreach($data['posts'] as $key=>$item)
    <div class="one-sev col-md-12 p-0">
        <div class="row">
            <div class="col-md-3">
                <a href="{{URL::to('dich-vu/'.$data['categoryPost']->path.'/'.$item->path)}}"> {{Html::image($item->image,'',array('class'=>'one-service-img'))}}</a>
            </div>
            <div class="col-md-9">
                <h3 class="title"><a href="{{URL::to('dich-vu/'.$data['categoryPost']->path.'/'.$item->path)}}">{{$item->title}}</a></h3>
            </div>
        </div>
    </div>
    <hr>
    @endforeach
</div>