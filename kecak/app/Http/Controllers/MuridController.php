<?php

namespace App\Http\Controllers;
use App\Models\Murid;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MuridController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $murid=Murid::all();
        $title="Daftar Murid";
        //$murid=[(object)[
            //'id_penjual'=>1,'nama'=>'Murid 1','nik' => '123456','alamat'=> 'Singapadu','nama_kelompok'=> 'Jaya Mula','telp' => '082772892','foto' => 'uploads/petanis/petani1.png '
            //],(object)[
            //'id_penjual'=>2,'nama'=>'Murid 2','nik' => '32145','alamat'=> 'Tegalalang','nama_kelompok'=> 'Tani Maju','telp' => '988292882 ','foto' => 'uploads/petanis/petani2.png']];$murid=collect($murid);
            return view('admin.daftarmurid',compact('title','murid'));

           

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $title="Input Murid";
        return view('admin.inputmurid',compact('title',));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $message=[
            'required'=> 'Kolom :attribute Harus lengkap',
            'date'=> 'Kolom :attribute Harus Tanggal',
            'numeric'=> 'Kolom :attribute Harus Angka'
        ];
        $validasi=$request->validate([
            'title'=>'required|unique:murids|max:255',
            'description'=>'required',
            'cover'=>''
            
        ],$message);
        $path = $request->file('cover')->store('covers');
        $validasi['user_id']=Auth::id();
        $validasi['cover']=$path;
        Murid::create($validasi);
        return redirect('murid')->with('success','Data berhasil tersimpan');
    }

    
    
    
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
