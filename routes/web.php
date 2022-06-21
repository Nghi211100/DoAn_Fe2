<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;

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

// Route::get('/', function () {
//     return view('home');
// });
Route::get('/', function () {
    return view('home');
});
Route::get('/login', function () {
    return view('login');
})->name('login');
Route::get('/signup', function(){
    return view('register');
})->name('signup');

Route::get('/products/{id}', [ProductController::class, 'showProductDetail'])->name('products.detail');
Route::get('/products/search/{keysearch}', [ProductController::class, 'search'])->name('products.search');
Route::get('/products/types/{type_id}', [ProductController::class, 'productTypes'])->name('products.types');