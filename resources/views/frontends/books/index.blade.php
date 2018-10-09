@extends('layouts.master')

@section('content')
<div class="container-fluid">
  <div class="row">
    <div class="col s9">
      <br>
      <h5 class="center-align">ေဒါင္းလုတ္ရယူႏိုင္ေသာစာအုပ္မ်ား</h5>
      <!-- <hr> -->
      <div class="row blog">
        @foreach($books as $book)
        <div class="col l4 m6 s12 hvr hvr-grow-shadow">
            <div class="card wow fadeInLeft">
              <div class="card-title center-align">{{ $book->title }}</div>
              <div class="card-image">
                <img src="{{ asset('/storage/images/' . $book->image) }}" class="responsive-img">
              </div>

              <div class="card-action center-align"><a href="{{ url('/download-book/' . $book->book) }}" class="btn mybtn">ေဒါင္းလုတ္ဆြဲရန္</a></div>
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
