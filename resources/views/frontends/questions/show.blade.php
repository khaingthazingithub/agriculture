@extends('layouts.master')

@section('content')
<div class="container-fluid">
  <div class="row">
    <div class="col s9">
      <h5 class="center-align">{{ $title }} ႏွင့္ပတ္သက္သည့္ေမးခြန္းမ်ား</h5>
      <hr style="border-color: green;margin: 50px 0;">
      <div class="row padding">
        @foreach($questions as $question)
        <div class="col m12 news-card hvr hvr-float-shadow">
          <div class="card wow fadeInLeft">
            <div class="row valign-wrapper padding">
              <div class="col m3">
                <div class="card-image">
                  <img src="{{ asset('/storage/images/' . $question->image) }}" class="news-img responsive-img">
                </div>
              </div>
              <div class="col m9">
                <div class="card-content">
                  <h6 class="not-cardheader">{{ $question->title }}</h6>
                  <hr>
                  <p>{{ $question->user->name }}({{ $question->created_at->diffForHumans() }})</p>
                  <p>{{ str_limit($question->question, 300) }}</p>
                  <p><a href="{{ url('/question/' . $question->id . '/answer') }}" class="btn-floating mybtn right"><i class="material-icons">arrow_forward</i></a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        @endforeach
      </div>
    </div>
    <div class="col s3">
      @include('frontends.right-sidebar')
    </div>
  </div>
</div>
@stop
