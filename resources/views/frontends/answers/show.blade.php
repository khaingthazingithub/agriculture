@extends('layouts.master')

@section('content')
<div class="container-fluid">
  <div class="row">
    <div class="col s9">
      <section class="question" style="margin: 30px 0;">
        <h6 class="center-align">{{ $question->title }}</h6>
        <p class="center-align"><hr style="width: 30%"></p>
        <div class="detail-img center-align">
          <img src="{{ asset('/storage/images/' . $question->image) }}" alt="" style="width: 60%;">
        </div>
        <p class="center-align">{{ $question->question }}</p>
      </section>
      <hr>
      <section class="answer" style="margin: 30px 0;">
        <div class="row padding">
          @foreach($answers as $answer)
          <div class="col m12 news-card hvr hvr-float-shadow">
            <div class="card wow fadeInLeft">
              <div class="row valign-wrapper padding">
                <div class="col m1">
                  <i class="medium material-icons">account_circle</i>
                </div>
                <div class="col m11">
                  <div class="card-content">
                    <p>{{ $answer->user->name }}({{ $answer->created_at->diffForHumans() }})</p>
                    <p>{{ str_limit($answer->answer, 300) }}</p>

                  </div>
                </div>
              </div>
            </div>
          </div>
          @endforeach
        </div>
      </section>
      <hr>
      <section class="create-answer" style="margin-top: 30px;">
        <h5 class="center-align">ေျဖရန္</h5>
        @include('backends.answers.create')
      </section>
    </div>
    <div class="col s3">
      @include('frontends.right-sidebar')
    </div>
  </div>
</div>
@stop
