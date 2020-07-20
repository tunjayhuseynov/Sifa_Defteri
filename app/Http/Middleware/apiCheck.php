<?php

namespace App\Http\Middleware;

use Closure;

class apiCheck
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
        if($request->header('auth') == "5591980supertun"){

            return $next($request);
        }

        return response()->json([ 'error' => 403, 'message' => 'Not Auth' ], 403);
    }
}
