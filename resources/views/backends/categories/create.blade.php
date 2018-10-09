@extends('layouts.admin-master')

@section('content')
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <h4>Create new category</h4>
      <hr>
      <form class="" action="{{ route('categories.store') }}" method="post">
        {{ csrf_field() }}
        <div class="form-group">
            <div class="form-line">
                <input type="text" class="form-control" placeholder="Enter Name" name="name"/>
            </div>
            @if($errors->has('name'))
              <span class="error">{{ $errors->first('name') }}</span>
            @endif
        </div>
        <div class="form-group">
            <select class="form-control show-tick" name="priority">
                <option value="">Choose Priority</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
            @if($errors->has('priority'))
              <span class="error">{{ $errors->first('priority') }}</span>
            @endif
        </div>
        <input type="submit" name="" value="Submit" class="btn btn-success">
        <a href="{{ URL::previous() }}" class="btn btn-warning">Cancel</a>
      </form>
    </div>
  </div>
</div>
@stop
