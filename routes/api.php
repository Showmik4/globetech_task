<?php

use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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
//Route::get("user",[ApiController::class,"getUser"]);
// Route::post("registration",[UserController::class,"register"]);
// Route::post("login",[UserController::class,"login"]);
//Route::get("user",[UserController::class,"getUser"]);

// Route::middleware('auth:api')->group( function () {
//    // Route::get("user",[UserController::class,"getUser"]);
// });
// Route::middleware('auth:api')->get( '/all',function (Request $request) {
//    return $request->user();
// });

// Route::post("registration",[UserController::class,"register"]);
//     Route::post("login",[UserController::class,"login"]);
Route::prefix('/users')->group(function(){

    Route::post("registration",[UserController::class,"register"]);
    Route::post("login",[UserController::class,"login"]);
    Route::get("logout",[UserController::class,"logout"]);
   // Route::get("all",[UserController::class,"getUser"]);
    Route::middleware('auth:api')->get('/all','UserController@getUser');

    Route::middleware('auth:api')->get('/all_product','UserController@getProduct');
    Route::middleware('auth:api')->get('/all_item','UserController@getItem');
});
