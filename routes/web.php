<?php

/** @var \Laravel\Lumen\Routing\Router $router */

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

// $router->get('/', function () use ($router) {
//     return $router->app->version();
// });

// $router->group(['prefix' => 'api'], function () use ($router) {

$router->get('/', function () use ($router) {
    // return $router->app->version();
    return 'hellllllo';
});

/*--------------------------EMAIL---------------------------------*/
//

//localhost:8000/emails
$router->get('emails',['uses' => 'EmailController@getAllEmails']);

//localhost:8000/emails/1
$router->get('emails/{id}',['uses' => 'EmailController@getOneEmail']);


//localhost:8000/emails/
$router->post('emails/create',['uses' => 'EmailController@getcreateEmail']);

//localhost:8000/emails/1
$router->put('emails/{id}',['uses' => 'EmailController@getupdateEmail']);

//localhost:8000/emails/1
$router->delete('emails/{id}',['uses' => 'EmailController@getdeleteEmail']);


/*--------------------------EVENT---------------------------------*/
//

//localhost:8000/events
$router->get('events',['uses' => 'EventController@getAllEvents']);

//localhost:8000/events/1
$router->get('events/{id}',['uses' => 'EventController@getOneEvent']);

//localhost:8000/events/
$router->post('events',['uses' => 'EventController@getcreateEvent']);

//localhost:8000/events/1
$router->put('events/{id}',['uses' => 'EventController@getupdateEvent']);

//localhost:8000/events/1
$router->delete('events/{id}',['uses' => 'EventController@getdeleteEvent']);


/*--------------------------REGISTER---------------------------------*/
//

//localhost:8000/registers
$router->get('registers',['uses' => 'RegisterController@getAllRegisters']);

//localhost:8000/registers/1
$router->get('registers/{id}',['uses' => 'RegisterController@getOneRegister']);

//localhost:8000/registers/
$router->post('registers',['uses' => 'RegisterController@getcreateRegister']);

//localhost:8000/registers/1
$router->put('registers/{id}',['uses' => 'RegisterController@getupdateRegister']);

//localhost:3306/registers/1
$router->delete('registers/{id}',['uses' => 'RegisterController@getdeleteRegister']);


/*--------------------------TESTIMONIAL---------------------------------*/
//

//localhost:3306/testimonials
$router->get('testimonials',['uses' => 'TestimonialController@getAllTestimonials']);

//localhost:3306/testimonials/1
$router->get('testimonials/{id}',['uses' => 'TestimonialController@getOneTestimonial']);

//localhost:3306/testimonials/
$router->post('testimonials',['uses' => 'TestimonialController@getcreateTestimonial']);

//localhost:3306/testimonials/1
$router->put('testimonials/{id}',['uses' => 'TestimonialController@getupdateTestimonial']);

//localhost:3306/testimonials/1
$router->delete('testimonials/{id}',['uses' => 'TestimonialController@getdeleteTestimonial']);

// });