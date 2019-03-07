<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

//Post request for regstration
$router->post('api/register', 'RegistrationController@store');
//Post request for the login
$router->post('api/login', 'LoginController@login');
//Post request for the login
$router->post('api/logout', 'LogoutController@logout');

//User Dashboard Routes
//Get request to show authourize dashboard

$router->group(['prefix' => 'api'], function () use ($router) {

    $router->get('dashboard', 'DashboardController@dashboard');

    $router->put('dashboard/profile', 'DashboardController@update');

    $router->delete('dashboard/delete', 'DashboardController@destroy');

});



$router->group(['prefix' => 'api/dashboard'], function () use ($router) {

    $router->get('goals', 'GoalsController@index');

    $router->get('goals/{id}', 'GoalsController@show');

    // $router->delete('dashboard/delete', 'DashboardController@destroy');

 //    $router->post($uri, $callback);

	// $router->put($uri, $callback);

	// $router->patch($uri, $callback);
	// $router->delete($uri, $callback);
});
