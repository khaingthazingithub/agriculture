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
        <form class="" action="{{ route('books.update', $id) }}" method="post" enctype="multipart/form-data">
          {{ csrf_field() }}
          {{ method_field('PUT') }}

          <div class="form-group">
              <div class="form-line">
                  <input type="text" class="form-control" value="{{ $old->author }}" name="author"/>
              </div>
              @if($errors->has('author'))
                <span class="error">{{ $errors->first('author') }}</span>
              @endif
          </div>

          <div class="form-group">
              <div class="form-line">
                  <input type="text" class="form-control" value="{{ $old->title }}" name="title"/>
              </div>
              @if($errors->has('title'))
                <span class="error">{{ $errors->first('title') }}</span>
              @endif
          </div>

          <div class="form-group">
            <input type="file" name="image" value="{{ $old->image }}">
            @if($errors->has('image'))
              <span class="error">{{ $errors->first('image') }}</span>
            @endif
          </div>

          <div class="form-group">
            <input type="file" name="book" value="{{ $old->book }}">
            @if($errors->has('book'))
              <span class="error">{{ $errors->first('book') }}</span>
            @endif
          </div>

          <input type="submit" name="" value="Update" class="btn btn-success">
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
