@extends('layout.home')
@section('content')

@if(session()->has('message'))
<div class="alert alert-success">
    {{ session()->get('message') }}
</div>
@endif



<form action="{{url('adminpanel/addBlog/')}}" method="post" enctype="multipart/form-data">
    <div class="container-fluid">
        <div class="row">
            @csrf
        <input type="hidden" value="{{$data[0]->image}}" name="oldImage" >
        <input type="hidden" value="{{$data[0]->createdDate}}" name="createdDate" >
            <div class="col-6">
                <label for="name">Title: </label>
                <input class="form-control" type="text" name="title" placeholder="Title" value="{{$data[0]->title}}"
                    required> <br>
                <div>
                    <div class="form-group">
                        <label for="description">Text</label>
                        <textarea id="my-textarea" class="form-control" name="text" rows="8"
                            required>{{$data[0]->text}}</textarea>
                    </div>
                    <label for="Genres">Diseases: </label>
                    <select class="js-example-basic" style="width: 100%" name="category"
                        required>

                        @foreach ($data[1] as $category)
                            
                 
                        @if($category->id == $data[0]->categoryId)
                        <option selected value="{{$category->id}}">{{$category->name}}</option>
                        @else
                        <option  value="{{$category->id}}">{{$category->name}}</option>
                        @endif
             

                        @endforeach

                    </select>
                </div> <br>

            </div>

            <div class="col-6">
                <label for="image">Cover Image: </label> <br>
                <div>
                <img id="blah" width="150" src="{{$data[0]->image}}" alt="Cover" />
                </div><br>


                <div class="custom-file">
                    <input type="file" class="custom-file-input" name="image" id="imgInp">
                    <label class="custom-file-label" for="imgInp">Choose cover</label>
                </div>

            </div>

            <div class="col-12 text-center" style="margin-bottom: 20px"> <br><br>
                <button class="btn btn-primary " type="submit" formmethod="post"
                    formaction="{{url('adminpanel/updateBlog/'.$data[0]->id)}}">Add</button>
            </div>
        </div>
    </div>


</form>

<script>
    $(document).ready(function() {
    $('.js-example-basic-multiple').select2({
        placeholder: 'Select',
        width: 'resolve',
    });
    $('.js-example-basic-single').select2({
        width: 'resolve',
        minimumResultsForSearch: Infinity
    });
    $('.casting').select2({
        width: 'resolve',
        tags: true,
        minimumResultsForSearch: Infinity
    });
    $(".js-example-basic-single").on('change', function(){
      if(this.value == 2){
        $(".movieType").addClass("d-none")
        $(".movieType input").each(function(index){ $(this).prop('required',false) })
      }else{
        $(".movieType").removeClass("d-none")
        $(".movieType input").each(function(index){ $(this).prop('required',true) })
      }
    })
});
function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    
    reader.onload = function(e) {
      $('#blah').attr('src', e.target.result);
    }
    
    reader.readAsDataURL(input.files[0]);
  }
}
$("#imgInp").change(function() {
  readURL(this);
});
</script>
@endsection