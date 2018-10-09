@extends('layouts.master')

@section('content')
  <div class="container-fluid">
    <div class="row">
      <div class="col s9 green lighten-3" style="padding: 50px 10px;">
        <h5 class="center-align">Create New Question</h5>
        <hr style="margin-bottom: 20px;">
        <form action="{{route('questions.store')}}" method="post" enctype="multipart/form-data" class="col s7 offset-s2">
  				{{csrf_field()}}

  				<div class="form-group">
            <select name="category_id" class="form-control">
    					<option value ="" selected>ေမးခ်င္သည့္အေျကာင္းအရာ</option>
    					@foreach($categories as $key => $value)
    					<option value = "{{ $key }}">{{ $value }}</option>
    					@endforeach
    				</select>
            @if($errors->has('category_id'))
              <span class="error">{{ $errors->first('category_id') }}</span>
            @endif
          </div>
          <br>
  				<div class="form-group">
  					<input type="file" name="file" class="form-control">
            @if($errors->has('file'))
              <span class="error">{{ $errors->first('file') }}</span>
            @endif
  				</div>

  				<div class="form-group">
  					<div class="input-field">
  						<input id="title" type="text" class="validate form-control" name="title">
  						<label for="title">Enter Title</label>
  					</div>
            @if($errors->has('title'))
              <span class="error">{{ $errors->first('title') }}</span>
            @endif
  				</div>

          <div class="form-group">
            <div class="input-field col s12">
              <textarea id="question" name="question" class="materialize-textarea"></textarea>
              <label for="question" class='active'>Enter Question</label>
            </div>
            @if($errors->has('question'))
              <span class="error">{{ $errors->first('question') }}</span>
            @endif
          </div>


          <div class="form-group center-align" style="margin-top: 20px;">
            <input type="submit" name="" value="Submit" class="btn btn-success">
          </div>

  			</form>
      </div>
      <div class="col s3">
        @include('frontends.right-sidebar')
      </div>
    </div>
  </div>
@stop
