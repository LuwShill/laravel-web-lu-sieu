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

//Route::get('/', function () {
//    return view('layout');
//});

Route::get('/','App\Http\Controllers\HomeController@index');

Route::get('/trangchu','App\Http\Controllers\HomeController@index');
//SHOP
Route::get('/category','App\Http\Controllers\HomeController@category');
Route::get('/single_pr','App\Http\Controllers\HomeController@single_pr');
Route::get('/checkout','App\Http\Controllers\HomeController@checkout');
Route::get('/cart','App\Http\Controllers\HomeController@cart');
Route::get('/confirmation','App\Http\Controllers\HomeController@confirmation');
//BLOG
Route::get('/blog','App\Http\Controllers\HomeController@blog');
Route::get('/single_bl','App\Http\Controllers\HomeController@single_bl');
//PAGES
Route::get('/tracking','App\Http\Controllers\HomeController@tracking');
Route::get('/element','App\Http\Controllers\HomeController@element');
///////////////////////////////////////////////////////////////////////////////
Route::get('/admin/login','App\Http\Controllers\AdminController@login_page');

Route::get('/admin','App\Http\Controllers\AdminController@admin_index');

Route::post('/admin/home','App\Http\Controllers\AdminController@admin_index');

Route::get('/logout','App\Http\Controllers\AdminCOntroller@logout_pages');
//////////////////////////////////////////////////////////////////////////
Route::get('/add_category_product','App\Http\Controllers\CategoryProductController@add_category_product');
Route::get('/all_category_product','App\Http\Controllers\CategoryProductController@all_category_product');
