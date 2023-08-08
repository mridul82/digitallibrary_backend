<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Middleware\CorsMiddleware;
use App\Http\Controllers\TeacherController;


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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('user/login',[LoginController::class, 'userLogin'])->name('userLogin');
Route::group( ['prefix' => 'user','middleware' => ['auth:user-api','scopes:users'] ],function(){
    // authenticated staff routes here
     Route::get('dashboard',[LoginController::class, 'userDashboard']);
     Route::get('logout',[LoginController::class, 'userLogout']);

 });


 //teachers route
 Route::post('/teacher/register', [LoginController::class, 'teacherRegister'])->name('teacherRegister');
 Route::post('/teacher/login',[LoginController::class, 'teacherLogin'])->name('teacherLogin');
 Route::group( ['prefix' => 'teacher','middleware' => ['auth:teacher-api','scopes:teachers'] ],function(){
    // authenticated staff routes here
    //  Route::get('dashboard',[LoginController::class, 'teacherDashboard']);
     Route::get('logout',[LoginController::class, 'teacherLogout']);
     Route::get('dashboard',[TeacherController::class, 'teacherDashboard']);
     Route::get('content/{id}', [TeacherController::class, 'contentDetails']);
 });

//  Route::middleware([CorsMiddleware::class])->group(function () {
//     // Define your API routes here

// });

 Route::get('/test', function () {
    return 'API Test';
});

