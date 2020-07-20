<?php

use Illuminate\Support\Facades\Route;

//Website Routes
Route::group(['middleware' => ['domainBuilder']], function(){

    Route::get('/', "website@home");
    Route::get('/category/{id}', "website@category");
    //Route::get('/about', "website@about");
    Route::get('/contact', "website@contact");
    Route::post('/sendcontact',"website@sendcontact");
    Route::get('/blog/{id}','website@blog');
    Route::get('/sendEmail','mailSender@sendMail');
    Route::post('/sendComment', 'website@sendComment');
    Route::post('/sendReply', 'website@sendReply');
    Route::post('/search', 'website@search');
});

//Google Play Store
Route::get('/app', function(Request $request){
    return redirect("https://play.google.com/store/apps/details?id=com.webtalanted.sifa_defteri");
});

//Register to AdminPanel Side
Route::get('/adminpanel/login', "authPage@home");
Route::post('/check', "authPage@check");
Route::get('/adminpanel/out', 'authPage@out');

//AdminPanel
Route::group(['prefix' => 'adminpanel','middleware' => ['checkAdmin']], function () {

    Route::get('/home', "panel@home");

    Route::get('/bloglist', "panel@listBlog");
    Route::get('/blog/{id}', "panel@viewBlog");
    Route::get('/addBlogPage', "panel@addBlogPage");
    Route::get('/updateBlogPage/{id}', "panel@updateBlogPaage");
    Route::post('/updateBlog/{id}', "panel@updateBlog");
    Route::post('/deleteBlog/{id}', "panel@deleteBlog");
    Route::post('/addBlog', "panel@addBlog");


    Route::get('/herbs', "panel@viewHerbs");
    Route::post('/addHerb', "panel@addHerbs");
    Route::post('/updateHerb/{id}', "panel@updateHerbs");
    Route::post('/deleteHerb/{id}', "panel@deleteHerbs");


    Route::get('/diseases', "panel@viewDiseases");
    Route::post('/addDiseas', "panel@addDiseases");
    Route::post('/updateDiseas/{id}', "panel@updateDiseases");
    Route::post('/deleteDiseas/{id}', "panel@deleteDiseases");

});

// API System
Route::group(['prefix' => 'api', 'middleware' => ['checkAPI']], function () {
    Route::get('/getDiseases', "apiSys@diseases");
    Route::get('/getHerbs', "apiSys@herbs");
    Route::get('/getAll','apiSys@all');
    Route::get('/getSingle/{id}','apiSys@getBlogJson');
});

Route::get('/mysitemap', function(){

    // create new sitemap object
    $sitemap = App::make("sitemap");

    // add items to the sitemap (url, date, priority, freq)
    //$sitemap->add(URL::to(), '2012-08-25T20:10:00+02:00', '1.0', 'daily');
    $sitemap->add(URL::to('/'), date('Y-m-d H:i:s'), '1', 'daily');
    $sitemap->add(URL::to('/category/1'), date('Y-m-d H:i:s'), '1', 'daily');
    $sitemap->add(URL::to('/category/2'), date('Y-m-d H:i:s'), '1', 'daily');
    $sitemap->add(URL::to('/contact'), date('Y-m-d H:i:s'), '1', 'daily');

    // get all posts from db
    $posts = DB::table('blogs')->get();

    // add every post to the sitemap
    foreach ($posts as $post)
    {
        $sitemap->add(URL::to('/blog/'.$post->id), date('Y-m-d H:i:s'), '1', 'daily');
    }

    // generate your sitemap (format, filename)
    $sitemap->store('xml', 'mysitemap');
    // this will generate file mysitemap.xml to your public folder
    return redirect('mysitemap.xml');
});