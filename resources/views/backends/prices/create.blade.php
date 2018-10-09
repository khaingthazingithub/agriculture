@extends('layouts.admin-master')

@section('content')
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <h4>Create New Price</h4>
        <hr>
        <form class="" action="{{ route('prices.store') }}" method="post">
          {{ csrf_field() }}

          <div class="form-group">
            <select class="form-control show-tick" name="city_id">
                <option value="">Choose City</option>
                @foreach($cities as $key => $value)
                  <option value="{{ $key }}">{{ $value }}</option>
                @endforeach
            </select>
            @if($errors->has('city_id'))
              <span class="error">{{ $errors->first('city_id') }}</span>
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

          <div class="form-group">
            <div class="form-line">
                <input type="text" class="form-control" placeholder="Enter Weight" name="weight"/>
            </div>
            @if($errors->has('weight'))
              <span class="error">{{ $errors->first('weight') }}</span>
            @endif
          </div>

          <div class="form-group">
            <div class="form-line">
                <input type="text" class="form-control" placeholder="Enter Price" name="price"/>
            </div>
            @if($errors->has('price'))
              <span class="error">{{ $errors->first('price') }}</span>
            @endif
          </div>

          <input type="submit" name="" value="Submit" class="btn btn-success">
        </form>
      </div>
    </div>
  </div>
@stop
