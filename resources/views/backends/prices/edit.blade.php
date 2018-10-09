@extends('layouts.admin-master')

@section('content')
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <h4>Create New Price</h4>
        <hr>
        <form class="" action="{{ route('prices.update', $id) }}" method="post">
          {{ csrf_field() }}
          {{ method_field('PUT') }}

          <div class="form-group">
            <select class="form-control show-tick" name="city_id">
                <!-- <option value="">Choose City</option> -->
                @foreach($cities as $key => $value)
                  @if(Illuminate\Support\Facades\Input::old('city_id') == $key)
                  <option value="{{ $key }}" selected>{{ $value }}</option>
                  @else
                  <option value="{{ $key }}">{{ $value }}</option>
                  @endif
                @endforeach
            </select>
            @if($errors->has('city_id'))
              <span class="error">{{ $errors->first('city_id') }}</span>
            @endif
          </div>

          <div class="form-group">
            <div class="form-line">
                <input type="text" class="form-control" value="{{ $old->name }}" name="name"/>
            </div>
            @if($errors->has('name'))
              <span class="error">{{ $errors->first('name') }}</span>
            @endif
          </div>

          <div class="form-group">
            <div class="form-line">
                <input type="text" class="form-control" value="{{ $old->weight }}" name="weight"/>
            </div>
            @if($errors->has('weight'))
              <span class="error">{{ $errors->first('weight') }}</span>
            @endif
          </div>

          <div class="form-group">
            <div class="form-line">
                <input type="text" class="form-control" value="{{ $old->price }}" name="price"/>
            </div>
            @if($errors->has('price'))
              <span class="error">{{ $errors->first('price') }}</span>
            @endif
          </div>

          <input type="submit" name="" value="Update" class="btn btn-success">
        </form>
    </div>
  </div>
@stop


      </div>
