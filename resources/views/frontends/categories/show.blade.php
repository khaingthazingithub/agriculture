@extends('layouts.master')

@section('content')
<div class="container-fluid">
  <div class="row">
    <div class="col s9">
      <br>
      <h5 class="center-align">{{ $category_name }}</h5>
      <!-- <hr> -->
      <div class="row blog">
        @foreach($posts as $post)
        <div class="col l4 m6 s12 hvr hvr-grow-shadow">
            <div class="card wow fadeInLeft">
              <div class="card-title center-align">{{ $post->title }}</div>
              <div class="card-image">
                <img src="{{ asset('/storage/images/' . $post->image) }}" class="responsive-img">
              </div>
              <div class="card-content">
                {{ str_limit($post->description, 150) }}
              </div>
              <div class="card-action center-align"><a href="{{ route('posts.show', $post->id) }}" class="btn mybtn">ဖတ္ရန္</a></div>
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
