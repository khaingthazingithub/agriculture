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
        <h4>Create New Book</h4>
        <hr>
        <form class="" action="{{ route('books.store') }}" method="post" enctype="multipart/form-data">
          {{ csrf_field() }}

          <div class="form-group">
              <div class="form-line">
                  <input type="text" class="form-control" placeholder="Enter Author" name="author"/>
              </div>
              @if($errors->has('author'))
                <span class="error">{{ $errors->first('author') }}</span>
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
            <input type="file" name="image" value="">
            @if($errors->has('image'))
              <span class="error">{{ $errors->first('image') }}</span>
            @endif
          </div>

          <div class="form-group">
            <input type="file" name="book" value="">
            @if($errors->has('book'))
              <span class="error">{{ $errors->first('book') }}</span>
            @endif
          </div>

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
