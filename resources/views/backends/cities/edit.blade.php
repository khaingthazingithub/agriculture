@extends('layouts.admin-master')

@section('content')
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <h4>Create New City</h4>
        <hr>
        <form class="" action="{{ route('cities.update', $id) }}" method="post">
          {{ csrf_field() }}
          {{ method_field('PUT') }}

          <div class="form-group">
              <div class="form-line">
                  <input type="text" class="form-control" value="{{ $old->name }}" name="name"/>
              </div>
              @if($errors->has('name'))
                <span class="error">{{ $errors->first('name') }}</span>
              @endif
          </div>

          <input type="submit" name="" value="Update" class="btn btn-success">
        </form>
      </div>
    </div>
  </div>
@stop
