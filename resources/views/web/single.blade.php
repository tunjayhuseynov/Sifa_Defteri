@extends("web.layout.home")

@section("content")
<?php 
$domain = Session::get("domain");
?>
<section class="site-section py-lg">
    <div class="container">
        <div class="row blog-entries">
            <div class="col-md-12 col-lg-8 main-content">
                <h1 class="mb-4">{{$blog->title}}</h1>
                <div class="post-meta">
                    <span class="category">{{$blog->name}}</span>
                    <span
                        class="mr-2">{{ iconv('latin5','utf-8',strftime('%d %B %Y',strtotime($blog->createdDate)))}}</span>
                    &bullet;
                    <span class="ml-2"><span class="fa fa-comments"></span> {{$blog->comments->count()}}</span>
                </div>
                <div class="post-content-body">
                    <div class="row mb-5">
                        <div class="col-md-12 mb-4">
                            <img src="{{$blog->image}}" alt="Image placeholder" class="img-fluid">
                        </div>

                    </div>
                    <pre
                        style="white-space: pre-wrap; word-wrap: break-word; text-align: justify;">{{$blog->text}}</pre>

                </div>
                <!-- <div class="pt-5">
                    <p>Categories: <a href="#">Food</a>, <a href="#">Travel</a> Tags: <a href="#">#manila</a>, <a
                            href="#">#asia</a></p>
                </div> -->
                <div class="pt-5">
                    <h3 class="mb-5">Yorumlar</h3>
                    @if($blog->comments->count() == 0)
                    <h6>Henüz Yorum Yok</h6>
                    @else
                    <ul class="comment-list">
                        @foreach($blog->comments as $comment)
                        <li class="comment">
                            <div class="vcard">
                                <img src="{{$comment->role == 0?'/images/user.png':'/images/admin.png'}}"
                                    alt="Image placeholder">
                            </div>
                            <div class="comment-body">
                                <h3>{{$comment->personName}}</h3>
                                <div class="meta">{{$comment->date}}</div>
                                <p>{{$comment->text}}</p>
                                <p><a onclick="showDetails(this)" data-id="{{$comment->id}}" class="reply" style="cursor:pointer" data-toggle="modal" data-target="#Modal" data-whatever="@mdo">Yanıtla</a></p>
                            </div>
                            @if($comment->replies->count() != 0)
                            <ul class="children">
                                @foreach($comment->replies as $reply)
                                <li class="comment">
                                    <div class="vcard">
                                        <img src="{{$reply->role == 0?'/images/user.png':'/images/admin.png'}}"
                                            alt="Image placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>{{$reply->name}}</h3>
                                        <div class="meta">{{$reply->date}}</div>
                                        <p>
                                            {{$reply->text}}
                                        </p>
                                    </div>
                                </li>
                                @endforeach
                            </ul>
                            @endif
                        </li>
                        @endforeach
                    </ul>
                    @endif
                    <div class="comment-form-wrap pt-5">
                        <h3 class="mb-5">Yorum Yaz</h3>
                        <form action="/sendComment" method="post" class="p-5 bg-light">
                            @csrf
                            <input type="hidden" value="{{$id}}" name="id">
                            <div class="form-group">
                                <label for="name">Isim *</label>
                                <input type="text" name="name" class="form-control" id="name">
                            </div>
                            <div class="form-group">
                                <label for="email">Email *</label>
                                <input type="email" name="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="website">Web Site</label>
                                <input type="url" name="website" class="form-control" id="website">
                            </div>
                            <div class="form-group">
                                <label for="message">Mesaj</label>
                                <textarea name="body" id="message" cols="30" rows="10" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Paylaş" class="btn btn-primary">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            @include('web.layout.sidebar')
        </div>
</section>
<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mb-3 ">Benzer Bloglar</h2>
            </div>
        </div>

        <div class="row">
            @foreach($data->where("categoryId", $blog->categoryId)->shuffle()->take(3) as $item)
            <div class="col-md-6 col-lg-4">
                <a href="#" class="a-block d-flex align-items-center height-md"
                    style="background-image: url('{{$item->image}}'); ">
                    <div class="text">
                        <div class="post-meta">
                            <span class="category">{{$item->name}}</span>
                            <span
                                class="mr-2">{{iconv('latin5','utf-8',strftime('%d %B %Y',strtotime($item->createdDate))) }}</span>
                            <!-- &bullet;<span class="ml-2"><span class="fa fa-comments"></span> 3</span> -->
                        </div>
                        <h3>{{$item->title}}</h3>
                    </div>
                </a>
            </div>
            @endforeach
        </div>

        <div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" style="max-width:768px; margin: 0 auto">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="eModalLabel">Yanıtla</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="padding:0">
                    <form action="/sendReply" method="post" class="p-4 bg-light">
                            @csrf
                            <input type="hidden" id="rpId" value="{{$id}}" name="id">
                            <div class="form-group">
                                <label for="name">Isim *</label>
                                <input type="text" name="name" class="form-control" id="name">
                            </div>
                            <div class="form-group">
                                <label for="email">Email *</label>
                                <input type="email" name="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="website">Web Site</label>
                                <input type="url" name="website" class="form-control" id="website">
                            </div>
                            <div class="form-group">
                                <label for="message">Mesaj</label>
                                <textarea name="body" id="message" cols="30" rows="10" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Paylaş" class="btn btn-primary">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
function showDetails(rId) {
  var id = rId.getAttribute("data-id");
  document.querySelector("#rpId").value = id;
}
</script>
@endsection