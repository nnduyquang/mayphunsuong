@extends('frontend.master')
@section('title')
    Máy Phun Sương
@stop
@section('description')
    Máy Phun Sương
@stop
@section('keyword')
    Máy Phun Sương
@stop
@section('styles')
    {{ Html::style('css/themes/default/default.css') }}
@stop
@section('slider')
    @include('frontend.common.slider')
@stop
@section('container')
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                @include('frontend.common.sidebar.index')
            </div>
            <div class="col-md-9">
                @include('frontend.home.h_product')
                <hr>
                @include('frontend.home.h_project')


            </div>
            @include('frontend.home.h_contact')
        </div>
    </div>
@stop