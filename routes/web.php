<?php

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

Route::get('/', 'HomeController@index');

Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');

Route::post('/register', 'Auth\RegisterController@register');
Route::post('/login', 'Auth\LoginController@login');
Route::get('/logout', 'Auth\LoginController@logout');

Route::get('/admin', 'AdminController@index');

Route::resource('/categories', 'CategoryController');

Route::resource('/sub-lists', 'SublistController');

Route::resource('/posts', 'PostController');

Route::get('/post/getlist/{category_id}', 'PostController@getList');

Route::resource('/advertisements', 'AdvertisementController');

Route::resource('/questions', 'QuestionController');

Route::get('/category/{id}/questions', 'QuestionController@show');

Route::get('/question/{id}/answer', 'QuestionController@showAnswer');

// Route::resource('/answers', 'AnswerController');

Route::post('/answers/', 'QuestionController@storeAnswer');

Route::resource('/books', 'BookController');

Route::get('/show-book', 'BookController@showAllBook');

Route::get('/download-book/{book_path}', 'BookController@downloadBook');

Route::resource('/cities', 'CityController');

Route::resource('/prices', 'PriceController');

Route::get('/show-price', 'PriceController@showAllPrice');

Route::resource('/users', 'UserController');
