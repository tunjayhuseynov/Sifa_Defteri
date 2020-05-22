@extends('layout.home')
@section('content')

@if(session()->has('success'))
<div class="alert alert-success">
    {{ session()->get('success') }}
</div>
@endif

@if(session()->has('error'))
<div class="alert alert-danger">
    {{ session()->get('error') }}
</div>
@endif

<table id="blogList" class="table table-striped table-bordered responsive" style="width:100%">
    <thead>
        <tr>
            <th>Title</th>
            <th>Category</th>
            <th style="width: 60px">Id</th>
            <th style="width: 220px;">Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($data as $item)
        <tr>
            <td>{{$item->title}}</td>
            <td>
                {{$item->name}}
            </td>
            <td>{{$item->id}}</td>
            <td style="text-align: center;">
                <div class="container-fluid" style="padding-left: 0">
                    <div class="row">
                        <div class="col-4">
                            <form action="{{url('/adminpanel/deleteBlog/'.$item->id)}}" method="post">
                                @csrf
                                <button class="btn btn-primary"
                                    onclick="return confirm('Do you really want to delete it?');"
                                    type="submit">Delete</button>
                            </form>
                        </div>
                        <div class="col-4">
                            <div style="margin: 0 15px">
                                <a href="{{url('/adminpanel/updateBlogPage/'.$item->id)}}" target="_blank" class="btn btn-primary editButton">Edit</a>
                            </div>
                        </div>
                        <div class="col-4">
                            <div style="margin: 0 15px">
                            <a href="{{url('/adminpanel/blog/'.$item->id)}}" target="_blank" class="btn btn-primary editButton">View</a>
                            </div>
                        </div>
                    </div>
                </div>

            </td>
        </tr>

        @endforeach
    </tbody>
</table>



<script>
    $(document).ready(function() {
    $('#blogList').DataTable({
        responsive: true,
        dom: 'lBfrtip',
        buttons: [
                        {
                extend: 'excelHtml5',
                title: 'Blog List',
                exportOptions: {
                    columns: [ 0, 1, 2 ,3]
                }
            },
            {
                extend: 'pdfHtml5',
                title: 'Blog List',
                exportOptions: {
                    columns: [ 0, 1, 2, 3]
                }
            },
            {
                text: 'Add Blog',
                action: function ( e, dt, node, config ) {
                    window.open("/adminpanel/addBlogPage", "_blank")
                }
            }
     
        ],
        order: [[3,"desc"]],
    });
} );
</script>
@endsection