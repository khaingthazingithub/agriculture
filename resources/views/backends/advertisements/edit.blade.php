@extends('layouts.admin-master')

@section('content')
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <h4>Create New Advertisement</h4>
        <hr>
        <form class="" action="{{ route('advertisements.update', $id) }}" method="post" enctype="multipart/form-data">
          {{ csrf_field() }}
          {{ method_field('PUT') }}

          <div class="form-group">
            <input type="file" name="file" value="{{ $old->file }}">
            @if($errors->has('file'))
              <span class="error">{{ $errors->first('file') }}</span>
            @endif
          </div>

          <div class="form-group">
              <div class="form-line">
                  <input type="text" class="form-control" value="{{ $old->type }}" name="type"/>
              </div>
              @if($errors->has('type'))
                <span class="error">{{ $errors->first('type') }}</span>
              @endif
          </div>

          <div class="form-group">
              <div class="form-line">
                  <input type="text" class="form-control" value="{{ $old->link }}" name="link"/>
              </div>
              @if($errors->has('link'))
                <span class="error">{{ $errors->first('link') }}</span>
              @endif
          </div>

          <input type="submit" name="" value="Update" class="btn btn-success">
        </form>
      </div>
    </div>
  </div>
@stop
