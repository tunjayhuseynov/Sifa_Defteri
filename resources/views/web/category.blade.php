@extends("web.layout.home")

@section("content")


<?php 
$len = count($dataCollectoin)-1;
$blogCount = 24;
$blogs = array();
$domain = Session::get("domain");


if(count($dataCollectoin)/$blogCount > intdiv(count($dataCollectoin),$blogCount)){
    $pagecount = intdiv(count($dataCollectoin),$blogCount)+1;
}else{
    $pagecount = intdiv(count($dataCollectoin),$blogCount);
}

if (isset($_GET['p'])) {
    $par = (int)$_GET['p']-1;
} else {
    $par = 0;
}

for ($i=0+($par*$blogCount); $i < $blogCount + ($par*$blogCount); $i++){
    if($i <= $len){
        array_push($blogs, $dataCollectoin[$i]);
    }
}

?>


<section class="site-section">
    <div class="container">
        <div class="row mb-4">
            <div class="col-md-6">
                <h2 class="mb-4">{{isset($isSearch)?'Arama':'Kategori'}}: {{$categoryName}}</h2>
            </div>
        </div>
        <div class="row blog-entries">
            <div class="col-md-12 col-lg-8 main-content">
                <div class="row mb-5 mt-5">
                    <div class="col-md-12">
                        @foreach($blogs as $item)
                        <div class="post-entry-horzontal">
                            <a href="{{url('/blog/'.$item->id)}}" style="width:100%">
                                <div class="image element-animate" data-animate-effect="fadeIn"
                                    style="background-image: url({{$domain.$item->image}});"></div>
                                <span class="text">
                                    <div class="post-meta">
                                        <span class="category">{{$item->name}}</span>
                                        <span class="mr-2">{{ iconv('latin5','utf-8',strftime('%d %B %Y',strtotime($item->createdDate)))}} </span> &bullet;
                                        <!-- <span class="ml-2"><span class="fa fa-comments"></span> 3</span> -->
                                    </div>
                                    <h2>{{$item->title}}</h2>
                                </span>
                            </a>
                        </div>
                        @endforeach

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <nav aria-label="Page navigation" class="text-center">
                            <ul class="pagination">
                            <?php 
                            $prev = $par==0?1:$par;
                           
                            $next = $pagecount-1>$par?$par+2:$par+1;
                            
                            ?>
                                <li class="page-item "><a class="page-link" href="?p={{$prev}}">Prev</a></li>
                                @for ($i = 1; $i <= $pagecount; $i++) <li class="page-item {{$par+1==$i?'active':''}}">
                                    <a class="page-link" href="?p={{$i}}">{{$i}}</a></li>
                                    @endfor
                                    <li class="page-item"><a class="page-link" href="?p={{$next}}">Next</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

            @include('web.layout.sidebar')

        </div>
    </div>
</section>

@endsection