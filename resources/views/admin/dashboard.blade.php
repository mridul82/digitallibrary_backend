@extends('adminlte::page')
@section('content_header')
<h3 class="page-title">Dashboard</h3>
@stop
@section('content')
<div class="row">
    <div class="col-md-4">
        <div class="small-box bg-info">
            <div class="inner">
                <h3>150</h3>
                <p>New Orders</p>
            </div>
            <div class="icon">
                <i class="fas fa-shopping-cart"></i>
            </div>
            <a href="#" class="small-box-footer">
                More info <i class="fas fa-arrow-circle-right"></i>
            </a>
        </div>
    </div>
    <div class="col-md-4">

        <div class="small-box bg-gradient-success">
            <div class="inner">
                <h3>{{ $count_users }}</h3>
                <p>User Registrations</p>
            </div>
            <div class="icon">
                <i class="fas fa-user-plus"></i>
            </div>
            <a href="#" class="small-box-footer">
                More info <i class="fas fa-arrow-circle-right"></i>
            </a>
        </div>
    </div>
    <div class="col-md-4">
        <div class="small-box bg-gradient-danger">
            <div class="inner">
                <h3>44</h3>
                <p>Connections</p>
            </div>
            <div class="icon">
                <i class="fas fa-star"></i>
            </div>
            <a href="#" class="small-box-footer">
                More info <i class="fas fa-arrow-circle-right"></i>
            </a>
        </div>
    </div>
</div>

<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Users</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                  <th>slno</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                            @foreach($users as $i => $user)
                                <tr>
                                  <td>{{ $i+1 }}</td>
                                 
                                    <td>{{ $user->name }}</td>
                                    <td>{{ $user->email }}
                                    </td>
                                  
                                </tr>
                                @endforeach
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
</section>



@stop

@section('js')
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
<script type="text/javascript">
  
$(document).ready(function () {
    $('#example').DataTable();
});
</script>
@stop