@extends('students.layout')
@section('content')
  
<div class="card" style="margin:20px;">
  <div class="card-header">Edit Student</div>
  <div class="card-body">
       
      <form action="{{ url('student/' .$packages->id) }}" method="post">
        {!! csrf_field() !!}
        @method("PATCH")
        <label>Name</label></br>
        <input type="text" name="name" id="name" value="{{$packages->name}}" class="form-control"></br>
        <label>Description</label></br>
        <input type="text" name="desc" id="address" value="{{$packages->desc}}" class="form-control"></br>
        <label>Comunity</label></br>
        <input type="text" name="comunity" id="mobile" value="{{$packages->comunity}}" class="form-control"></br>
        
        <input type="submit" class="btn btn-success"></br>
    </form>
    
  </div>
</div>
  
@stop