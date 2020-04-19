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

//users
Route::post('/login', 'ControllerUsers@login');
Route::post('/register', 'ControllerUsers@register');
Route::get('/users','ControllerUsers@index');
Route::get('/users/{id}', 'ControllerUsers@show');
Route::post('/users/store', 'ControllerUsers@store');
Route::put('/users/update/{id}', 'ControllerUsers@edit');

//Books
Route::post('/books/store', 'BooksController@store');
Route::get('/books', 'BooksController@index');
Route::put('/books/update/{id}', 'BooksController@edit');
Route::delete('/books/delete/{id}', 'BooksController@destroy');

//History / Transaction
Route::post('/transaction/borrow', 'TransactionController@store');
Route::put('/transaction/return', 'TransactionController@returnBook');
Route::get('/transaction', 'TransactionController@index');
Route::get('/borrowlist/{id}', 'TransactionController@borrowList');
Route::get('/returnlist/{id}', 'TransactionController@returnList');
Route::put('/transaction/update/{id}', 'TransactionController@edit');
Route::delete('/transaction/delete/{id}', 'TransactionController@destroy');