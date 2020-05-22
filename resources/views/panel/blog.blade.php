@extends('layout.home')
@section('content')


<div class="container-fluid">
    <div class="row">
        <div class="col-3">
            <div class="box text-center" style="padding: 0!important">
                <label>Cover Image: </label> <br>
                <img style="max-width: 100%" src="{{$data->image}}">
            </div>
        </div>

        <div class="col-3">
            <div class="box text-center">
                <label>Title: </label>
                <h4>{{$data->title}}</h4>
            </div>

            <div class="box text-center">
                <label>Category: </label>
                <h4>
                    {{$data->name}}
                </h4>
            </div>

        </div>
        <div class="col-6">
            <div class="box text-center" style="padding: 15px 15px;">
                <label>Text: </label>
                <h5 style="text-align: justify">{{$data->text}}</h5>
            </div>
        </div>
    </div>
</div>

@endsection