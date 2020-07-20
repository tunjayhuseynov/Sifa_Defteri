@extends('web.layout.home')

@section('content')

<?php 
$blogCount = 24;
#setlocale(LC_TIME, "turkish"); //başka bir dil içinse burada belirteceksin.
#setlocale(LC_ALL,'turkish'); //başka bir dil içinse burada belirteceksin.
$len = count($data)-1;
if(count($data)/$blogCount > intdiv(count($data),$blogCount)){
    $pagecount = intdiv(count($data),$blogCount)+1;
}else{
    $pagecount = intdiv(count($data),$blogCount);
}
function UniqueRandomArray($min, $max, $quantity) {
    $numbers = range($min, $max);
    shuffle($numbers);
    return array_slice($numbers, 0, $quantity);
}
$ranArr = UniqueRandomArray(0,$len,3);
$ranArr2 = UniqueRandomArray(0,$len,3);
$ranArr3 = UniqueRandomArray(0,$len,3);
$domain = Session::get("domain");


$blogs = array();
if (isset($_GET['p'])) {
    $par = (int)$_GET['p']-1;
} else {
    $par = 0;
}
for ($i=0+($par*$blogCount); $i < $blogCount + ($par*$blogCount); $i++){
    if($i <= $len){
        array_push($blogs, $data[$i]);
    }
}

?>

<section class="site-section pt-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="owl-carousel owl-theme home-slider">
                    @foreach ($ranArr as $e)
                    <div>
                        <a href="{{url('/blog/'.$data[$e]->id)}}" class="a-block d-flex align-items-center height-lg"
                            style="background-image: url('{{$data[$e]->image}}'); ">
                            <div class="text half-to-full">
                                <div class="post-meta">
                                    <span class="category">{{$data[$e]->name}}</span>
                                    <span class="mr-2">{{
                                        iconv('latin5','utf-8',strftime('%d %B %Y',strtotime($data[$e]->createdDate)))
                                        }} </span>
                                    <!-- &bullet;<span class="ml-2"><span class="fa fa-comments"></span> 3</span> -->
                                </div>
                                <h3>{{$data[$e]->title}}</h3>
                                <p>{{$data[$e]->categoryId==1?explode("★",$data[$e]->text)[1]:explode(".",$data[$e]->text)[0]."."}}
                                </p>
                            </div>
                        </a>
                    </div>
                    @endforeach


                </div>
            </div>
        </div>
        <div class="row">
            @foreach($ranArr2 as $e)
            <div class="col-md-6 col-lg-4">
                <a href="{{url('/blog/'.$data[$e]->id)}}" class="a-block d-flex align-items-center height-md"
                    style="background-image: url('{{$domain.$data[$e]->image}}'); ">
                    <div class="text">
                        <div class="post-meta">
                            <span class="category">{{$data[$e]->name}}</span>
                            <span
                                class="mr-2">{{ iconv('latin5','utf-8',strftime('%d %B %Y',strtotime($data[$e]->createdDate)))}}
                            </span>
                            <!-- &bullet;<span class="ml-2"><span class="fa fa-comments"></span> 3</span> -->
                        </div>
                        <h3>{{$data[$e]->title}}</h3>
                    </div>
                </a>
            </div>
            @endforeach
        </div>
    </div>
</section>

<section class="site-section py-sm">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2 class="mb-4">Blog Postalar</h2>
            </div>
        </div>
        <div class="row blog-entries">
            <div class="col-md-12 col-lg-8 main-content">
                <div class="row">
                    @foreach ($blogs as $e)
                    <div class="col-md-6">
                        <a href="{{url('/blog/'.$e->id)}}" class="blog-entry element-animate" data-animate-effect="fadeIn">
                            <img src="{{$domain.$e->image}}" alt="Image placeholder" width="350" height="180">
                            <div class="blog-content-body">
                                <div class="post-meta">
                                    <span class="category">{{$e->name}}</span>
                                    <span
                                        class="mr-2">{{ iconv('latin5','utf-8',strftime('%d %B %Y',strtotime($e->createdDate)))}}
                                    </span>
                                    <!-- &bullet; <span class="ml-2"><span class="fa fa-comments"></span> 3</span> -->
                                </div>
                                <h2>{{$e->title}}</h2>
                            </div>
                        </a>
                    </div>
                    @endforeach
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
                <div class="row mb-5 mt-5">
                    <div class="col-md-12">
                        <h2 class="mb-4">Başka Blog Postalar</h2>
                    </div>
                    <div class="col-md-12">
                        @foreach($ranArr3 as $e)
                        <div class="post-entry-horzontal">
                            <a href="{{url('/blog/'.$data[$e]->id)}}" style="width:100%">
                                <div class="image element-animate" data-animate-effect="fadeIn"
                                    style="background-image: url({{$domain.$data[$e]->image}});"></div>
                                <span class="text">
                                    <div class="post-meta">
                                        <span class="category">{{$data[$e]->name}}</span>
                                        <span
                                            class="mr-2">{{ iconv('latin5','utf-8',strftime('%d %B %Y',strtotime($data[$e]->createdDate)))}}
                                        </span>
                                        <!--&bullet; <span class="ml-2"><span class="fa fa-comments"></span> 3</span>-->
                                    </div>
                                    <h2>{{$data[$e]->title}}</h2>
                                </span>
                            </a>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>

            @include('web.layout.sidebar')
        </div>
</section>
@endsection