<?php
use Illuminate\Support\Facades\Route;
//memanggil file controller
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AritmatikaController;
use App\Http\Controllers\MuridController;
use App\Http\Controllers\StudentController;

//route dasar/home
Route::get('/', function () {return view('frontpage.landingpage');});
Route::get('home',[HomeController::class,'index'])->name('landing');
Route::get('/dashboard', function () {return view('dashboard');})->middleware(['auth'])->name('dashboard');
Route::get('/', function () {return view('frontpage.landingpage');});
Route::get('/pesanikan', function () {return view('frontpage.pemesananikan');});



//route latihan aritmatika
//Route::get('/looping', function () { return view('looping');});
//Route::post('/looping', [AritmatikaController::class, 'index']);
//Route::post('/Aritmatika', [AritmatikaController::class, 'Aritmatika']);




//route murid
//Route::get('/', function () {return view('welcome');});
//Route::get('/dashboard', function () {return view('dashboard');})->middleware(['auth'])->name('dashboard');
//Route::get('home', [HomeController::class,'index'])->name('home');
//Route::group(['middleware'=>'auth:sanctum'], function () {Route::resource('murid', MuridController::class);});

//routestudent
Route::get('/', function () {return view('welcome');});
Route::resource("/student", StudentController::class);

   
   


require __DIR__.'/auth.php';
