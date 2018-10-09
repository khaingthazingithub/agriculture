<form action="/answers" method="post" class="col s7 offset-s2">
  {{csrf_field()}}
  <input type="hidden" name="question_id" value="{{$id}}">
  <div class="form-group">
    <div class="input-field col s12">
      <textarea id="answer" name="answer" class="materialize-textarea"></textarea>
      <label for="answer" class='active'>Enter Answer</label>
    </div>
    @if($errors->has('answer'))
      <span class="error">{{ $errors->first('answer') }}</span>
    @endif
  </div>


  <div class="form-group center-align" style="margin-top: 20px;">
    <input type="submit" name="" value="Submit" class="btn btn-success">
  </div>

</form>
