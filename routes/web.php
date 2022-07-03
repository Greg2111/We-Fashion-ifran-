<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CartController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AdminController;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Http\Controllers\DisplayController;
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

Route::get('/', function () {
    return view('welcome');
});

// Routes produits

Route::resource('products', ProductController::class);

Route::get('/femmes', [ProductController::class, 'femme']);
Route::get('/hommes', [ProductController::class, 'homme']);
Route::get('/soldes', [ProductController::class, 'solde']);


// routes authentification
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// routes des admins
    /**
        *  on crée des fonctions spécifiques dans les controllers admins et User et on crée les routes correspondantes ,
        * on les nommes pour pouvoir les utilisées plus facilement
    */
Route::group(['prefix'=>'admin', 'middleware'=>['isAdmin', 'auth']], function (){
    Route::get('dashboard', [AdminController::class, 'index'])->name('admin.dashboard');
    Route::get('users', [AdminController::class, 'users'])->name('admin.users');
    Route::get('products', [AdminController::class, 'products'])->name('admin.products');
});

Route::group(['prefix'=>'user', 'middleware'=>['isUser', 'auth']], function (){
    Route::get('dashboard', [UserController::class, 'index'])->name('user.dashboard');
    Route::get('profile', [UserController::class, 'profile'])->name('user.profile');
    Route::get('settings', [UserController::class, 'settings'])->name('user.settings');
});


// routes me donnant acces au Controller de l'admin
Route::resource('admins', AdminController::class);









