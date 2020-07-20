<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class apiSys extends Controller
{
    public function diseases(Request $request)
    {
        $result = DB::table('blogs')->where("categoryId", 1)->get();

        return response()->json($result, 200, [], JSON_NUMERIC_CHECK);
    }

    public function herbs(Request $request)
    {
        $result = DB::table('blogs')->where("categoryId", 2)->get();

        return response()->json($result, 200, [], JSON_NUMERIC_CHECK);
    }
    
    public static function all()
    {
        return response()->json(DB::table("blogs")->join('categories', 'categories.cId', '=', 'blogs.categoryId')->get());
    }


    //ARRAYS

    public static function allArray()
    {
        return DB::table("blogs")->join('categories', 'categories.cId', '=', 'blogs.categoryId')->get();
    }

    public static function diseasesArray(Request $request)
    {
        return DB::table('blogs')->where("categoryId", 1)->join('categories', 'categories.cId', '=', 'blogs.categoryId')->get();
    }

    public static function herbsArray(Request $request)
    {
        return DB::table('blogs')->where("categoryId", 2)->join('categories', 'categories.cId', '=', 'blogs.categoryId')->get();
    }

    public static function getCategoryName($id)
    {
        return DB::table("categories")->where("cId",$id)->first()->name;
    }

    public function getCategory($id)
    {
        return DB::table("blogs")->where("categoryId",$id)->join('categories', 'categories.cId', '=', 'blogs.categoryId')->get();
    }

    public function getSearch($query)
    {
        return 
        DB::table("blogs")->where('blogs.title','LIKE','%'.$query.'%')
        ->orWhere('blogs.text','LIKE','%'.$query.'%')
        ->join('categories', 'categories.cId', '=', 'blogs.categoryId')->get();
    }

    //Single Blog

    public function getBlog($id)
    {
        $comments= DB::table("comments")->where("postId",$id)->get();
        foreach ($comments as $key => $value) {
         $replies= DB::table("replies")->where("commentId",$value->id)->get();
         $comments[$key]->replies = $replies;
        }
        
        $blog =  DB::table("blogs")->join('categories', 'categories.cId', '=', 'blogs.categoryId')->where("blogs.id",$id)->first();
        $blog->comments = $comments;
        
        return $blog;
    }

    public function getBlogJson($id)
    {
       $comments= DB::table("comments")->where("postId",$id)->get();
       foreach ($comments as $key => $value) {
        $replies= DB::table("replies")->where("commentId",$value->id)->get();
        $comments[$key]->replies = $replies;
       }
       
       $blog =  DB::table("blogs")->join('categories', 'categories.cId', '=', 'blogs.categoryId')->where("blogs.id",$id)->first();
       $blog->comments = $comments;

        return response()->json($blog);
    }
}