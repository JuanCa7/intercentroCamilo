<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EventosController;
use App\Http\Controllers\DetailEvenControllers;
use App\Http\Controllers\VoletoController;
use App\Http\Controllers\SesionesController;
Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::resource('eventos', EventosController::class)->names('eventos')->parameters(['eventos'=>'request']);
Route::resource('detailEventos', DetailEvenControllers::class)->names('detailEventos')->parameters(['detailEventos'=>'request']);
Route::resource('voletos', VoletoController::class)->names('voletos')->parameters(['voletos'=>'request']);
Route::resource('sesion', SesionesController::class)->names('sesion')->parameters(['sesion'=>'request']);
