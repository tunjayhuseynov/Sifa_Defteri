<?php

use Illuminate\Support\Facades\Route;


Route::get('/', function (Request $request) {
    return view("home");
});

Route::get('/adminpanel/login', "authPage@home");

Route::post('/check', "authPage@check");

Route::get('/adminpanel/out', 'authPage@out');

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