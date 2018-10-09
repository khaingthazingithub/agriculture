@extends('layouts.admin-master')

@section('content')
<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="row header">
                <h2 class="pull-left">
                    ALL PRICES
                </h2>
                <a href="{{ route('prices.create') }}" class="pull-right new-btn">create new price</a>
            </div>
            <div class="body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                        <thead>
                            <tr>
                                <th>City</th>
                                <th>Product Name</th>
                                <th>Weight</th>
                                <th>Price</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($prices as $price)
                            <tr>
                                <td>{{ $price->city->name }}</td>
                                <td>{{ $price->name }}</td>
                                <td>{{ $price->weight }}</td>
                                <td>{{ $price->price }}</td>
                                <td>
                                    <a href="{{ route('prices.edit', $price->id) }}" class="btn btn-success btn-sm">
                                      <span class="material-icons">edit</span>
                                    </a>
                                </td>
                                <td>
                                  <form class="" action="{{ route('prices.destroy', $price->id) }}" method="post"
                                  onclick="return confirm('Are you sure to delete?')">
                                    {{ csrf_field() }}
                                    {{ method_field('delete') }}
                                    <button type="submit" class="btn btn-danger btn-sm"><span class="material-icons">delete</span></a></button>
                                  </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@stop
