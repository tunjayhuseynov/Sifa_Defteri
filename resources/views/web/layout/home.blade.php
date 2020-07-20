@extends("web.layout.index")

@section('home')
<?php
setlocale(LC_TIME, "turkish"); //başka bir dil içinse burada belirteceksin.
setlocale(LC_ALL,'turkish'); //başka bir dil içinse burada belirteceksin.
$categories = Session::get("categorySessoin");
?>
<header role="banner">
    <div class="top-bar" style="background: #57af00;">
        <div class="container">
            <div class="row">
                <div class="col-9 social">
                    <!-- <a href="#"><span class="fa fa-twitter"></span></a> -->
                    <!-- <a href="#"><span class="fa fa-facebook"></span></a> -->
                    <a href="#"><span class="fa fa-instagram"></span></a>
                </div>
                <div class="col-3 search-top">

                    <form action="/search" method="post" class="search-top-form">
                    @csrf
                        <span class="icon fa fa-search"></span>
                        <input type="text" name="kelime" id="s" placeholder="Anahtar Kelime ile arayın..." style="background: #fff;color: black">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="container logo-wrap">
        <div class="row pt-5">
            <div class="col-12 text-center">
                <a class="absolute-toggle d-block d-md-none" data-toggle="collapse" href="#navbarMenu" role="button"
                    aria-expanded="false" aria-controls="navbarMenu"><span class="burger-lines" style=""></span></a>
                <h1 class="site-logo"><a href="{{url('/')}}"><img src="{{asset('/images/sifa.png')}}" alt="Sifa Defterim Logo" style="width: 80%;height: auto;"></a></h1>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-md  navbar-light bg-light">
        <div class="container">
            <div class="collapse navbar-collapse" id="navbarMenu">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="{{url('/')}}">Ana Sayfa</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="category.html" id="dropdown05" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">Kategori</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown05">
                            @foreach($categories as $item)
                            <a class="dropdown-item" href="/category/{{$item->cId}}">{{$item->name}}</a>
                            @endforeach
                        </div>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href='{{url("/about")}}'>Biz Kimiz?</a>
                    </li> -->
                    <li class="nav-item">
                        <a class="nav-link" href='{{url("/contact")}}'>İletişim</a>
                    </li>
                </ul>
            </div>
        </div>
</header>

@yield('content')


<footer class="site-footer">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-4">
                <h3>Şifa Defterim</h3>
                <p>
                    <img src="{{URL::asset('images/icon.png')}}" alt="Image placeholder" class="img-fluid">
                </p>
                <p>Şifa Defterim kendinizi doğal yollarla tedavi edebilmeniz için hazırlanmıştır</p>
            </div>
            <div class="col-md-6 ml-auto">
                <div class="row">
                    <div class="col-md-7">
                        <h3>Son Blog Postlar</h3>
                        <div class="post-entry-sidebar">
                            <ul>
                                <?php 
                            $arrFoot = $data->take(-3)

                            ?>
                                @foreach($arrFoot as $e)
                                <li>
                                    <a href="{{url('/blog/'.$e->id)}}">
                                        <img src="{{Session::get('domain').$e->image}}" alt="Image placeholder"
                                            class="mr-4">
                                        <div class="text">
                                            <h4>{{$e->title}}</h4>
                                            <div class="post-meta">
                                                <span class="mr-2">{{
                                                    iconv('latin5','utf-8',strftime('%d %B %Y',strtotime($e->createdDate)))
                                                    }} </span>
                                                <!--  &bullet;<span class="ml-2"><span class="fa fa-comments"></span> 3</span>-->
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-4">
                        <div class="mb-5">
                            <h3>Hızlı Navigasyon</h3>
                            <ul class="list-unstyled">
                                <!-- <li><a href="#">Biz Kimiz?</a></li> -->
                                @foreach($categories as $item)
                                <li><a href="/category/{{$item->cId}}">{{$item->name}}</a></li>
                                @endforeach
                                <li><a href="/contact">İletişim</a></li>
                                <li><a href="/mysitemap">Sitemap</a></li>
                            </ul>
                        </div>
                        <div class="mb-5">
                            <h3>Sosyal Medya</h3>
                            <ul class="list-unstyled footer-social">
                                <!-- <li><a href="#"><span class="fa fa-twitter"></span> Twitter</a></li>
                                <li><a href="#"><span class="fa fa-facebook"></span> Facebook</a></li> -->
                                <li><a href="#"><span class="fa fa-instagram"></span> Instagram</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">

                Telif Hakkı &copy;<script type="f4dec04024df57936de1c0e3-text/javascript">
                document.write(new Date().getFullYear());
                </script> Tüm Haklar Korunmaktadır

            </div>
        </div>
    </div>
</footer>
@endsection