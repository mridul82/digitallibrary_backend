<?php

use Illuminate\Http\Request;
use Illuminae\Support\Facades\Route;
use App\Http\Controllers\LoginController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
\Route::post('user/login',[LoginController::class, 'userLogin'])->name('userLogin');
\Route::group( ['prefix' => 'user','middleware' => ['auth:user-api','scopes:user'] ],function(){
    // authenticated staff routes here 
     \Route::get('dashboard',[LoginController::class, 'userDashboard']);
 });