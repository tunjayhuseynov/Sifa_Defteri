<?php

namespace App\Http\Middleware;

use Closure;
use Session;
use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;

class domainBuilder
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $names = DB::table("blogs")->pluck("title")->toArray();
        array_push($names, "Sifa Defterim", "Şifa Defterim");
        SEOMeta::addKeyword($names);

        SEOMeta::setDescription('Programlamaya dâir yazılar');
        SEOMeta::setCanonical('https://www.sifadefterim.com');
 
        OpenGraph::setDescription('Programlamaya dâir yazılar');
        
        OpenGraph::setUrl('https://www.sifadefterim.com');
        OpenGraph::addProperty('type', 'articles');
 
        
        TwitterCard::setSite('@sifadefterim');

        setlocale(LC_TIME, "turkish");
        setlocale(LC_ALL,'turkish');
        if(!Session::has('domain')){
            Session::put('domain', 'https://sifadefterim.com');
        }
        if(!Session::has('categorySessoin')){
            $category = DB::table("categories")->get();
            Session::put('categorySessoin', $category);
        }

        return $next($request);
    }
}