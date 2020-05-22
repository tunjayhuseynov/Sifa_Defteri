<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Storage;

class panel extends Controller
{
    public function home(Request $request)
    {
        return view("panel/home");
    }

    /*BLOG PART*/
    /*BLOG PART*/
    /*BLOG PART*/
    /*BLOG PART*/
    /*BLOG PART*/
    /*BLOG PART*/

    public function listBlog(Request $request)
    {
        $blogs = DB::table('categories')->join("blogs", "blogs.categoryId", "=", "categories.id")->get();
       
        return view("panel/blogList")->with("data", $blogs);
    }

    public function viewBlog(Request $request)
    {
        $blogs = DB::table('categories')->where("blogs.id", $request->route("id"))->join("blogs", "blogs.categoryId", "=", "categories.id")->first();
         
        return view("panel/blog")->with("data", $blogs);
    }

    public function addBlogPage(Request $request) // Page for getting information to add the db
    {
        $category =  DB::table('categories')->get();

        return view("panel/addBlog")->with("data", $category);
    }

    public function addBlog(Request $request) // Post Request
    {
        $title = $request->input("title");
        $text = $request->input("text");
        $category = $request->input("category");

        if($request->hasFile("image") && $request->file("image")->isValid()){
            $image = $request->file("image");
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            Storage::disk('public_uploads')->put("/images/blogs/" . $imageName, file_get_contents($image));
        }

        $id = DB::table('blogs')->insertGetId([
            "title" => $title,
            "image" => "/images/blogs/" . $imageName,
            "text" => $text,    
            "categoryId" => $category
        ]);


        return redirect()->back()->with("success", "Ugurla Elave Olundu");
    }

    public function deleteBlog(Request $request)
    {
        DB::table('blogs')->where("id", $request->route('id'))->delete();

        return redirect()->back()->with("success", "Ugurla Silindi");
    }

    public function updateBlogPaage(Request $request) // Page for getting information to update the db
    {
        $blogs = DB::table('blogs')->where("id", $request->route("id"))->first();
        $category =  DB::table('categories')->get();


        $data = [$blogs, $category];

        return view("panel/updateBlog")->with("data",$data);
    }

    public function updateBlog(Request $request) // Post Reuqest
    {
        $id = $request->route("id");
        $title = $request->input("title");
        $text = $request->input("text");
        $category = $request->input("category");
        $oldImageName = $request->input("oldImage");

        if($request->hasFile("image") && $request->file("image")->isValid()){
            $image = $request->file("image");
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            Storage::disk('public_uploads')->put("/images/blogs/" . $imageName, file_get_contents($image));
        }

        DB::table('blogs')->where("id",$id)->update([
            "title" => $title,
            "image" =>  isset($image) == 1 ?"/images/blogs/".$imageName:$oldImageName,
            "text" => $text,
            "categoryId" => $category
        ]);


        return redirect()->back()->with("success", "Ugurla Yenilendi");
    }
}





    /*HERBS PART*/
    /*HERBS PART*/
    /*HERBS PART*/
    /*HERBS PART*/
/*
    public function viewHerbs(Request $request)
    {
        $data = DB::table('herbs')->get();

        error_log($data);

        return view("panel/herbs")->with("data", $data);
    }

    public function addHerbs(Request $request)
    {
        $name = $request->input("name");

        if ($request->hasFile("img") && $request->file("img")->isValid()) {
            $image = $request->file("img");
            $imageName = time() . '.' . $image->getClientOriginalExtension();
        }else
            return redirect()->back()->with("error", "Ugursuz Prosses");
        

        DB::table('herbs')->insert([
            "name" => $name,
            "image" => "/images/herbs/" . $imageName
        ]);

        Storage::disk('public_uploads')->put("/images/herbs/" . $imageName, file_get_contents($image));

        return redirect()->back()->with("success", "Ugurla Elave Olundu");
    }

    public function deleteHerbs(Request $request)
    {
        DB::table('herbs')->where("id", $request->route("id"))->delete();

        return redirect()->back()->with("success", "Ugurla Silindi");
    }

    public function updateHerbs(Request $request)
    {
        $name = $request->input("name");

        if ($request->hasFile("image") && $request->file("image")->isValid()) {
            $image = $request->file("image");
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            Storage::disk('public_uploads')->put("/images/herbs/" . $imageName, file_get_contents($image));
        }

        DB::table('herbs')->where("id", $request->route("id"))->update([
            "name" => $name,
            "image" => isset($image) == 1? "/images/herbs/" .  $imageName : 
            DB::table('herbs')->where("id", $request->route("id"))->first()->image
        ]);

        return redirect()->back()->with("success", "Ugurla Yenilendi");
    }
    /*

    /*DIEASES PART*/
    /*DIEASES PART*/
    /*DIEASES PART*/
    /*DIEASES PART*/
    /*DIEASES PART*/
    /*
    public function viewDiseases(Request $request)
    {
        $data = DB::table('diseases')->get();

        return view("panel/diseaes")->with("data", $data);
    }

    public function addDiseases(Request $request)
    {
        $name = $request->input("name");

        if ($request->hasFile("img") && $request->file("img")->isValid()) {
            $image = $request->file("img");
            $imageName = time() . '.' . $image->getClientOriginalExtension();
        }else
            return redirect()->back()->with("error", "Ugursuz Prosses");

        DB::table('diseases')->insert([
            "name" => $name,
            "image" => "/images/diseases/" . $imageName
        ]);

        Storage::disk('public_uploads')->put("/images/diseases/" . $imageName, file_get_contents($image));

        return redirect()->back()->with("success", "Ugurla Elave Olundu");
    }

    public function deleteDiseases(Request $request)
    {
        DB::table('diseases')->where("id", $request->route("id"))->delete();

        return redirect()->back()->with("success", "Ugurla Silindi");
    }

    public function updateDiseases(Request $request)
    {
        $name = $request->input("name");
        $oldImageName = $request->input("old");

        if ($request->hasFile("image") && $request->file("image")->isValid()) {
            $image = $request->file("image");
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            Storage::disk('public_uploads')->put("/images/diseases/" . $imageName, file_get_contents($image));
        }

        DB::table('diseases')->where("id", $request->route("id"))->update([
            "name" => $name,
            "image" => "/images/diseases/" . isset($image) == 1 ? $imageName : $oldImageName
        ]);

        return redirect()->back()->with("success", "Ugurla Yenilendi");
    }
  
    */