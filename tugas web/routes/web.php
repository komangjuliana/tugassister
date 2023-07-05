<?php
use Illuminate\Support\Facades\Route;
//memanggil file controller
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PengenalanController;


Route::get('/', [HomeController::class, 'index']);
Route::get('/kalkulator', [PengenalanController::class, 'index']);
Route::post('/hasil', [PengenalanController::class, 'hasil']);


Route::get('/dashboard', function () {
    return view('dashboard');
   })->middleware(['auth'])->name('dashboard');
   require __DIR__.'/auth.php';
        