<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class authPage extends Controller
{
    public function home(Request $request)
    {
        return view("log/home");
    }

    public function check(Request $request)
    {
        $username = $request->input("username");
        $password = $request->input("password");

        $db = DB::table('admins')->where("username", $username)->first();
        if(empty($db)){
            return redirect()->back()->with("wrong", "Bele bir Username Movcud Deyil");
        }

        if($db->password == $password){

            $request->session()->put('admin', 1);
            $request->session()->put('name', $db->name);

            return redirect("/adminpanel/home");
        }

        return redirect()->back()->with("wrong", "Sifre Sehvdir");
    }

    public function out(Request $request)
    {
        $request->session()->forget('admin');

        return redirect('/adminpanel/login');
    }
}
