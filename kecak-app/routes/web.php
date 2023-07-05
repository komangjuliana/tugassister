<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/home',[HomeController::class,'index'])->name('lending');
Route::get('pesantiket', function () {return view('frontpage.pemesanantiket');});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
