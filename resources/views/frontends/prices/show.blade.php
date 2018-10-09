@extends('layouts.master')

@section('content')
	<div class="container-fluid blog">
		<div class="row">
      <div class="col s1"></div>
			<div class="col s7">
        <h6 class="center-align">သီိနွံကုန္စည္ဒိုင္ေပါက္ေဈးမ်ား</h6>
        <br>
  			<!-- <hr> -->
  			@foreach($cities as $city)
  				<h6>{{ $city->name }}</h6>
  				<!-- <hr> -->
  				<table class="striped">
  					<thead>
  						<tr>
  							<th>အမ်ိဳးအစား</th>
  							<th>အေလးခ်ိန္</th>
  							<th>ေဈးႏွဳန္း</th>
  						</tr>
  					</thead>
  					<tbody>
  						@foreach($city->prices as $price)
  						<tr>
  							<td>{{ $price->name }}</td>
  							<td>{{ $price->weight }}</td>
  							<td>{{ $price->price }}</td>
  						</tr>
  						@endforeach
  					</tbody>
  				</table>
  				<br>
  			@endforeach
      </div>
      <div class="col s1"></div>
      <div class="col s3">
        @include('frontends.right-sidebar')
      </div>
		</div>
	</div>
@stop
