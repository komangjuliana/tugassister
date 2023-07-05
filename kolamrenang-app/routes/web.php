<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\StudentController;

//Route::get('/', function () {
//    return view('welcome');
//});
Route::get('/', function () {
    return view('welcome');
});
 
Route::resource("/student", StudentController::class);
Route::get('/home',[HomeController::class,'index'])->name('lending');
Route::get('/pesantiket', function () {return view ('frontpage.pemesanantiket');});
Route::post('/store', [StudentController::class, 'store']);

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');
Route::get('/boking', function () {
    return view('boking');
})->middleware(['auth', 'verified'])->name('boking');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
