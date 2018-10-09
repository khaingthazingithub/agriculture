@extends('layouts.admin-master')

@section('content')
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <h4>Edit Sub-list</h4>
        <hr>
        <form class="" action="{{ route('sub-lists.update', $id) }}" method="post">
          {{ csrf_field() }}
          {{ method_field('PUT') }}
          <div class="form-group">
            <select class="form-control show-tick" name="category_id">

                @foreach($categories as $key => $value)
                  @if(Illuminate\Support\Facades\Input::old('category_id') == $key)
                  <option value="{{ $key }}" selected>{{ $value }}</option>
                  @else
                  <option value="{{ $key }}" >{{ $value }}</option>
                  @endif
                @endforeach
            </select>
            @if($errors->has('category_id'))
              <span class="error">{{ $errors->first('category_id') }}</span>
            @endif
          </div>
          <div class="form-group">
            <div class="form-line">
                <input type="text" class="form-control" value="{{ $old->name}}" name="name"/>
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
