@extends('layouts.master')

@section('title', 'Agriculture')

@section('content')
<section class="black">
  <div class="carousel carousel-slider center">
    <div class="carousel-fixed-item center">
      <!-- <a class="btn waves-effect white grey-text darken-text-2">LEARN MORE</a> -->
    </div>
    <div class="carousel-item white-text first-child">
      <!-- <h2>First Panel</h2>
      <p class="white-text">This is your first panel</p> -->
    </div>
    <div class="carousel-item white-text second-child">
      <!-- <h2>Second Panel</h2>
      <p class="white-text">This is your second panel</p> -->
    </div>
    <div class="carousel-item white-text third-child">
      <!-- <h2>Third Panel</h2>
      <p class="white-text">This is your third panel</p> -->
    </div>
    <div class="carousel-item white-text fourth-child">
      <!-- <h2>Fourth Panel</h2>
      <p class="white-text">This is your fourth panel</p> -->
    </div>
  </div>
</section>
<section class="content two-content row">
  <section class="col s9">
    @include('frontends.index')
  </section>
  <section class="advertisement col s3 adv-padding">
    @include('frontends.right-sidebar')
  </section>
</section>
@stop
