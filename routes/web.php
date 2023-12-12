<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/get',[App\Http\Controllers\SessionController::class, 'index']);
Route::get('/store',[App\Http\Controllers\SessionController::class, 'store']);
Route::get('/distroy',[App\Http\Controllers\SessionController::class, 'distroy']);

Route::get('/getapi', [App\Http\Controllers\GetApiController::class, 'getapi']);
Route::get('/singlepostapi/{id}', [App\Http\Controllers\GetApiController::class, 'singlepostapi']);
Route::get('/addpotapi', [App\Http\Controllers\GetApiController::class, 'addpotapi']);
Route::get('/singleposteditapi/{id}', [App\Http\Controllers\GetApiController::class, 'singleposteditapi']);
Route::get('/deleteapi/{id}', [App\Http\Controllers\GetApiController::class, 'deleteapi']);

Route::get('/email/verify', function () {
    return view('auth.verify-email');
})->middleware('auth')->name('verification.notice');


/*  Auth::routes(['verify'=> true]); 
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
*/ // for email verify

// Route::group(['middleware' => ['auth', 'verified']], function () {
    //  Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
// });
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home')->middleware(['auth', 'verified']);




