<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
//get api for fetch user
Route::get('/users/{id?}', [App\Http\Controllers\UserApiController::class, 'showuser']);

// post api for user
Route::post('/adduser', [App\Http\Controllers\UserApiController::class, 'adduser']);

// post api for multy user
Route::post('/addmultiuser', [App\Http\Controllers\UserApiController::class, 'addmultiuser']);

// Put api for update
Route::put('/userupdate/{id}', [App\Http\Controllers\UserApiController::class, 'userupdate']);

// Put api for update
Route::patch('/singleuserupdate/{id}', [App\Http\Controllers\UserApiController::class, 'singleuserupdate']);

// Delete singleuser  api 
Route::delete('/deletesingleuser/{id}', [App\Http\Controllers\UserApiController::class, 'deletesingleuser']);

// Delete multi user api  with json
Route::delete('/deletemultiuser', [App\Http\Controllers\UserApiController::class, 'deletemultiuser']);




// Register user api  
Route::post('/resigteruser', [App\Http\Controllers\Api\UserController::class, 'resigteruser']);
// Route::post('/resigteruser', [UserController::class, 'resigteruser']);  //like another way just user top "use App\Http\Controllers\Api\UserController;"

// Login user api  
Route::post('/userlogin', [App\Http\Controllers\Api\UserController::class, 'userlogin']);
