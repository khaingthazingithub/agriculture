@extends('layouts.admin-master')

@section('content')
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <h4>Create New City</h4>
        <hr>
        <form class="" action="{{ route('cities.store') }}" method="post">
          {{ csrf_field() }}

          <div class="form-group">
              <div class="form-line">
                  <input type="text" class="form-control" placeholder="Enter Name" name="name"/>
              </div>
              @if($errors->has('name'))
                <span class="error">{{ $errors->first('name') }}</span>
              @endif
          </div>

          <input type="submit" name="" value="Submit" class="btn btn-success">
        </form>
      </div>
    </div>
  </div>
@stop
