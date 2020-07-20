<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\apiSys;
use Session;
use Mail;
use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;

class website extends Controller
{
    private $to_name = "Admin";
    private $to_email = "sifadefterim@gmail.com";

    public function home(Request $request)
    {
        SEOMeta::setTitle('Ana Sayfa');
        OpenGraph::setTitle('Ana Sayfa');
        TwitterCard::setTitle('Ana Sayfa');

        $api = new apiSys();
        
        return view("web.homepage")->with("data", $api->allArray());
    }

    public function category(Request $request, $id)
    {
        $api = new apiSys();
        $categoryName = $api->getCategoryName($id);
        $dataCollectoin = $api->getCategory($id);

        SEOMeta::setTitle($categoryName);
        OpenGraph::setTitle($categoryName);
        TwitterCard::setTitle($categoryName);

        return view("web.category", compact('categoryName','id', 'dataCollectoin'))->with("data", $api->allArray());
    }

    public function contact(Request $request)
    {
        SEOMeta::setTitle("Iletişim");
        OpenGraph::setTitle("Iletişim");
        TwitterCard::setTitle("Iletişim");

        $api = new apiSys();
        return view("web.contact")->with("data", $api->allArray());
    }

    public function sendcontact(Request $request)
    {
        $to_name = $this->to_name;
        $to_email = $this->to_email;
        $data = array("name"=>"Admin", "contactName" => $request->input("name"), "phone" => $request->input("phone"),"email" => $request->input("email"), "body" => $request->input("message"));
        Mail::send('email.mail', $data, function($message) use ($to_name, $to_email) {
            $message->to($this->to_email, $this->to_name)
            ->subject("Biri Sizinle Iletisim Kuruyor");
            $message->from("sifadefterim@gmail.com","Sifa Defterim Iletisim");
            });

        Session::put('done', true);
        return back();
    }

    public function about(Request $request)
    {
        $api = new apiSys();

        return view("web.about")->with("data", $api->allArray());
    }

    public function blog(Request $request, $id)
    {   
        $api = new apiSys();
        $blog = $api->getBlog($id);

        SEOMeta::setTitle($blog->title);
        OpenGraph::setTitle($blog->title);
        TwitterCard::setTitle($blog->title);

        return view("web.single", compact("blog", "id"))->with("data", $api->allArray());
    }

    public function sendComment(Request $req)
    {
        DB::table('comments')->insert(
            [
            'personName' => $req->input("name"), 
            'email' => $req->input("email"), 
            'date' => date('Y-m-d H:i:s'), 
            'role' => 0,
            'text' => $req->input("body"), 
            'postId' => $req->input("id")
            ]
        );

        return redirect()->back();
    }

    public function sendReply(Request $req)
    {
        DB::table('replies')->insert(
            [
            'name' => $req->input("name"), 
            'email' => $req->input("email"), 
            'date' => date('Y-m-d H:i:s'), 
            'role' => 0,
            'text' => $req->input("body"), 
            'commentId' => $req->input("id")
            ]
        );

        return redirect()->back();
    }

    public function search(Request $req)
    {
        $isSearch = true;
        $api = new apiSys();
        $categoryName = $req->input("kelime");
        $dataCollectoin = $api->getSearch($req->input("kelime"));

        SEOMeta::setTitle($req->input("kelime"));
        OpenGraph::setTitle($req->input("kelime"));
        TwitterCard::setTitle($req->input("kelime"));

        return view("web.category", compact('categoryName','dataCollectoin', 'isSearch'))->with("data", $api->allArray());
    }
}