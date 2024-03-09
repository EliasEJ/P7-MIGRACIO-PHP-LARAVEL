<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ArticlesController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ForgotPasswordController;
use Laravel\Socialite\Facades\Socialite;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [ArticlesController::class, 'show'])->name('articles');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home')->middleware('auth');

Route::get('/login', function () {
    return view('login');
})->name('login');

Route::get('/register', function () {
    return view('register');
})->name('register');

Route::post('/register', [RegisterController::class, 'register'])->name('register');

Route::post('/login', [LoginController::class, 'login'])->name('login');

Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

Route::get('/forgotpassword', [ForgotPasswordController::class, 'index'])->name('forgotpassword');

Route::post('/password/email', 'App\Http\Controllers\ForgotPasswordController@sendResetLinkEmail')->name('password.email');

Route::get('/password/reset/{token}', 'App\Http\Controllers\ResetPasswordController@showResetForm')->name('password.reset');

Route::post('/password/reset', 'App\Http\Controllers\ResetPasswordController@reset')->name('password.update');

Route::get ('/login-google', function () {
    return Socialite::driver('google')->redirect();
})->name('login-google');

Route::get('/google-callback', function () {
    $user = Socialite::driver('google')->user();
    dd($user);
})->name('google-callback');