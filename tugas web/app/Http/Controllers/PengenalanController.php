<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PengenalanController extends Controller
{
    
    function index(){
        return view('kalkulator');
    }

    function hasil(Request $request){
        
        $angka1 = $request->input('bil_1');
        $angka2 = $request->input('bil_2');
        $pilihan = $request->input('operator');
        $hasil = 0;

        if($pilihan=='penjumlahan'){
            $hasil = $angka1 + $angka2;
        } else if ($pilihan=='pengurangan'){
            $hasil = $angka1 - $angka2;
        } else if ($pilihan=='perkalian'){
            $hasil = $angka1 * $angka2;
        } else if ($pilihan=='pembagian'){
            $hasil = $angka1 / $angka2;
        } else {
            $hasil = 0;
        }

        return redirect('/kalkulator')->with('hasil', "Hasil : " .$hasil);


    }
}
