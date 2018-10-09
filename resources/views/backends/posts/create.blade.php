@extends('layouts.admin-master')
<script src="{{ asset('/js/jquery-3.3.1.min.js') }}"></script>
<style>
	#loader {
		visibility: hidden;
	}
</style>
@section('content')
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <h4>Create New Post</h4>
        <hr>
        <form class="" action="{{ route('posts.store') }}" method="post" enctype="multipart/form-data">
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
            <select class="form-control" name="sublist_id">
                <option value="">Choose Sublist</option>
                @foreach($sublists as $key => $value)
                  <option value="{{ $key }}">{{ $value }}</option>
                @endforeach
            </select>
            @if($errors->has('sublist_id'))
              <span class="error">{{ $errors->first('sublist_id') }}</span>
            @endif
          </div>

					<div class="form-group">
						<div class="form-line">
								<input type="text" class="form-control" placeholder="Enter Title" name="title"/>
						</div>
						@if($errors->has('title'))
							<span class="error">{{ $errors->first('title') }}</span>
						@endif
					</div>

          <div class="form-group">
            <input type="file" name="file" value="">
            @if($errors->has('file'))
              <span class="error">{{ $errors->first('file') }}</span>
            @endif
          </div>

          <div class="form-group">
              <div class="form-line">
                  <textarea rows="4" class="no-resize form-control"
                  name="description" placeholder="Enter Description"></textarea>
              </div>
              @if($errors->has('description'))
                <span class="error">{{ $errors->first('description') }}</span>
              @endif
          </div>
          <p id="p"></p>
          <input type="submit" name="" value="Submit" class="btn btn-success">
        </form>
      </div>
    </div>
  </div>
@stop

<!-- <script>
  $(document).ready(function() {
      var id = $(this).val();
    $('select[name="category_id"]').on('change', function() {
      if(id) {
        $.ajax({
          url: '/post/getlist/' + id,
          type: "GET",
          dataType: "json",

          success: function(data) {
						$('select[name="sublist_id"]').empty();

						$.each(data, function(key, value) {
							$('select[name="sublist_id"]').append('<option value="'+key+'">'+value+'</option>');
						});
      		},
    		});
  		}
	});
});

</script> -->
