<?php

use Illuminate\Http\Request;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group(['prefix' => 'v1'] ,function ()
{
	Route::post('register' , 'AuthController@register');
	Route::post('login' , 'AuthController@login');
	Route::post('logout' , 'AuthController@logout');
	Route::get('user/{id}' , 'DebtController@user');

	Route::prefix('debt')->group(function ()
	{
		Route::resource('' , 'DebtController');
		Route::get('{id}' , 'DebtController@show');
		Route::post('{id}' , 'DebtController@update');
		Route::get('delete/{id}' , 'DebtController@destroy');
	});
});