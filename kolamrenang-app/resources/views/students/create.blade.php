@extends('students.layout')
@section('content')
  
<div class="card" style="margin:20px;">
  <div class="card-header">Create New Students</div>
  <div class="card-body">
       
      <form action="{{ url('store') }}" method="post">
        {!! csrf_field() !!}
        <label>Nama</label></br>
        <input type="text" name="name" id="name" class="form-control"></br>
        <label>Deskripsi</label></br>
        <input type="text" name="desc" id="address" class="form-control"></br>
        <label>Comunity</label></br>
        <input type="text" name="comunity" id="mobile" class="form-control"></br>
        <label>MasukanFoto</label></br>
        <input type="file" name="img"  class="form-control"></br>
        <input type="submit" class="btn btn-success"></br>
    </form>
    
  </div>
</div>
  
@stop