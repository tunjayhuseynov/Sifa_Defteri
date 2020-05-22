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

<table id="herbList" class="table table-striped table-bordered responsive" style="width:100%">
    <thead>
        <tr>
            <th>Name</th>
            <th style="width: 60px">Id</th>
            <th style="width: 150px;">Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($data as $item)

        <tr>
            <td>{{$item->name}}</td>
            <td>{{$item->id}}</td>
            <td style="text-align: center;">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-6">
                            <form action="{{url('/adminpanel/deleteDiseas/'.$item->id)}}" method="post">
                                @csrf
                                <button class="btn btn-primary"
                                    onclick="return confirm('Do you really want to delete it?');"
                                    type="submit">Delete</button>
                            </form>
                        </div>
                        <div class="col-6">
                            <div style="margin: 0 15px">
                                <button onclick="showEditModal(this)" class="btn btn-primary editButton" data-id="{{$item->id}}" data-name="{{$item->name}}">Edit</button>
                            </div>
                        </div>
                    </div>
                </div>

            </td>
        </tr>

        @endforeach
    </tbody>
</table>


<!-- 

    Add Herb Modal

-->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addModalLabel">Add Disease</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{url('/adminpanel/addDiseas')}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-4">
                                <input style="width: 100%" type="text" name="name" required placeholder="Name">
                            </div>
                            <div class="col-7">
                                <input type="file" name="img" required>
                            </div>
                            <div class="col-12 justify-content-center">
                                <br>
                                <button type="submit" style="float: right" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- 

    Edit Herb Modal

-->


<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel">Update Disease</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="editModalForm" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-4">
                                <input id="editName" style="width: 100%" type="text" name="name" required
                                    placeholder="Name">
                            </div>
                            <div class="col-7">
                                <input type="file" name="img">
                            </div>
                            <div class="col-12 justify-content-center">
                                <br>
                                <button type="submit" style="float: right" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script>

    var showEditModal = function(type){
        var id = type.getAttribute("data-id");
        var name = type.getAttribute("data-name");
        var oldImage = type.getAttribute("data-old");

        $("#editName").val(name)
        $("#editModalForm").attr("action", `/adminpanel/updateDiseas/${id}`)

        $('#editModal').modal()
    }
    
    $(document).ready(function() {
    $('#herbList').DataTable({
        responsive: true,
        dom: 'lBfrtip',
        buttons: [
                        {
                extend: 'excelHtml5',
                title: 'Disease List',
                exportOptions: {
                    columns: [ 0, 1]
                }
            },
            {
                extend: 'pdfHtml5',
                title: 'Disease List',
                exportOptions: {
                    columns: [ 0, 1]
                }
            },
            {
                text: 'Add Disease',
                action: function ( e, dt, node, config ) {
                    $('#addModal').modal()
                }
            }
     
        ],
        order: [[0,"desc"]],
    });
} );
</script>
@endsection