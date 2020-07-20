<div class="col-md-12 col-lg-4 sidebar">
                <div class="sidebar-box search-form-wrap">
                <form action="/search" method="post" class="search-form">
                    @csrf
                        <div class="form-group">
                            <span class="icon fa fa-search"></span>
                            <input type="text" name="kelime" class="form-control" id="s" placeholder="Anahtar Kelime ile arayın...">
                        </div>
                    </form>
                </div>


                <div class="sidebar-box">
                    <h3 class="heading">Son Blog Postlar</h3>
                    <div class="post-entry-sidebar">
                        <ul>
                        <?php 
                        $arr = $data->take(-3);
                        $categories = Session::get("categorySessoin");
                        ?>
                        @foreach($arr as $e)
                            <li>
                                <a href="{{url('/blog/'.$e->id)}}">
                                    <img src="{{Session::get('domain').$e->image}}" alt="Image placeholder" class="mr-4">
                                    <div class="text">
                                        <h4>{{$e->title}}</h4>
                                        <div class="post-meta">
                                            <span class="mr-2">{{iconv('latin5','utf-8',strftime('%d %B %Y',strtotime($e->createdDate)))}} </span> 
                                            <!-- &bullet; <span class="ml-2"><span class="fa fa-comments"></span> 3</span> -->
                                        </div>
                                    </div>
                                </a>
                            </li>
                        @endforeach

                        </ul>
                    </div>
                </div>

                <div class="sidebar-box">
                    <h3 class="heading">Kategoriler</h3>
                    <ul class="categories">
                    @foreach($categories as $item)
                    <li><a style="color: #57af00" href="/category/{{$item->cId}}">{{$item->name}} <span>{{$data->where("categoryId",$item->cId)->count()}}</span></a></li>
                            @endforeach
                    </ul>
                </div>

            </div>