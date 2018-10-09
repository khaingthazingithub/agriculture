@extends('layouts.admin-master')

@section('content')
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <h4>Create New Sub-list</h4>
        <hr>
        <form class="" action="{{ route('sub-lists.store') }}" method="post">
          {{ csrf_field() }}
          <div class="form-group">
            <select class="form-control show-tick" name="category_id">
                <option value="">Choose Category</option>
                @foreach($categories as $key => $value)
                  <option value="{{ $key }}">{{ $value }}</option>
                @endforeach
            </select>
            @if($errors->has('category_id'))
              <span class="error">{{ $errors->first('category_id') }}</span>
            @endif
          </div>
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
