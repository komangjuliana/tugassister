<?php
namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
use App\Models\Student; //add Student Model - Data is coming from the database via Model.
use App\Models\Packages; //add Student Model - Data is coming from the database via Model.

 
class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $packages = Packages::all();
        return view ('students.index')->with('packages', $packages);
    }
 
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $packages=Packages::all();
        return view('students.create', compact('packages'));
    }
 
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)

    // $student = Packages::create($request->all());
    // if($request->hasiFile('img')){
    //     $request
    
    {
        Packages::create([
            'package_name' => $request->name,
            'package_desc' => $request->desc,
            'comunity_id' => $request->comunity,
            'img' => $request->MasukanFoto,
        ]);

        return redirect('student');
    }
 
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $student = Student::find($id);
        return view('students.show')->with('students', $student);
    }
 
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $packages = Packages::find($id);
        return view('students.edit')->with('packages', $packages);
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
        Packages::where('id', $id)->update([
            'package_name' => $request->name,
            'package_desc' => $request->desc,
            'comunity_id' => $request->comunity,
        ]);

        return redirect('/student');  
    }
 
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $packages = Packages::find($id);
        $packages->delete();
        return redirect()->back(); 
    }
}