<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\users;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index(){
        return users::all();
    }

    public function create(request $request){
        $users = new users;
        $users->name = $request->name;
        $users->phone = $request->phone;
    }
}
