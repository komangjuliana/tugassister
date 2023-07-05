<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Packages;

class HomeController extends Controller
{
    public function index(){
        $title="Landing page";
        //$Packages=[(object)[
            //'package_code'=>'DUmmy Code',
            //'package_name'=>'DUmmy Name',
            //'package_desc'=>'DUmmy Desc'
        //],(object)[
            //'package_code'=>'DUmmy Code 2',
            //'package_name'=>'DUmmy Name 3',
            //'package_desc'=>'DUmmy Desc 4'
        //]];
        $packages=Packages::all();
        return view('frontpage.landingpage', compact('title','packages'));
    }

}


