<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BusController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//ROUTES BUS
Route::get('/bus', 'App\Http\Controllers\BusController@index');
Route::post('/bus', 'App\Http\Controllers\BusController@store');
Route::put('/bus/{id}', 'App\Http\Controllers\BusController@update');
Route::delete('/bus/{id}', 'App\Http\Controllers\BusController@destroy');

//ROUTES TRAVEL
Route::get('/travel', 'App\Http\Controllers\TravelController@index');
Route::post('/travel', 'App\Http\Controllers\TravelController@store');
Route::put('/travel/{id}', 'App\Http\Controllers\TravelController@update');
Route::delete('/travel/{id}', 'App\Http\Controllers\TravelController@destroy');

//ROUTES USERS
Route::get('/userk', 'App\Http\Controllers\UserKuskatanController@index');
Route::post('/userk', 'App\Http\Controllers\UserKuskatanController@store');
Route::put('/userk/{id}', 'App\Http\Controllers\UserKuskatanController@update');

//ROUTES PASSENGER
Route::get('/passenger', 'App\Http\Controllers\PassengerController@index');
Route::post('/passenger', 'App\Http\Controllers\PassengerController@store');
Route::put('/passenger/{id}', 'App\Http\Controllers\PassengerController@update');

//ROUTES DEPARTURES
Route::get('/departure', 'App\Http\Controllers\DepartureController@index');
Route::post('/departure', 'App\Http\Controllers\DepartureController@store');
Route::put('/departure/{id}', 'App\Http\Controllers\DepartureController@update');

//ROUTES TICKET
Route::get('/ticket', 'App\Http\Controllers\TicketController@index');
Route::post('/ticket', 'App\Http\Controllers\TicketController@store');
Route::put('/ticket/{id}', 'App\Http\Controllers\TicketController@update');

//ROUTES ARRIVAL
Route::get('/arrival', 'App\Http\Controllers\ArrivalController@index');
Route::post('/arrival', 'App\Http\Controllers\ArrivalController@store');
Route::put('/arrival/{id}', 'App\Http\Controllers\ArrivalController@update');
Route::delete('/arrival/{id}', 'App\Http\Controllers\ArrivalController@destroy');