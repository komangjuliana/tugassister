<?php

namespace App\Http\Controllers;

use App\Models\Packages;
use Illuminate\Http\Request;

class HomeController extends Controller
{
 function index(){
        $title="lending page";
        //$packages=[(object)[
        //    'package_code'=>'DUmmy_Code',
        //    'package_name'=>'DUmmy_Name',
        //    'package_desc'=>'DUmmy_Desc'
        //    ],(object)[
        //    'package_code'=>'DUmmy_Code 2',
        //    'package_name'=>'DUmmy_Name 2',
        //    'package_desc'=>'DUmmy_desc 2'
        //    ], (object)[
        //    'package_code'=>'DUmmy_Code 3',
        //    'package_name'=>'DUmmy_Name 3',
        //    'package_desc'=>'DUmmy_desc 4'
        //    ]];
        $packages=Packages::all();
        return view ('frontpage.lendingpage', compact ('title', 'packages'));
    }
}

