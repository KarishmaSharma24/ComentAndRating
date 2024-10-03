<?php

use App\Models\Comment;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Backend\BookController;
use App\Http\Controllers\Backend\RatingController;
use App\Http\Controllers\Backend\CommentController;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::group(['middleware' => 'auth'], function()
{
    Route::get('/home', [HomeController::class, 'index'])->name('home');
    Route::post('/rating/store', [RatingController::class, 'store'])->name('rating.store');
    Route::get('/comment/create/{id}', [CommentController::class, 'create'])->name('comment.create');
    Route::get('/comment/show/{id}', [CommentController::class, 'show'])->name('comment.show');
    Route::post('/comment/store', [CommentController::class, 'store'])->name('comment.store');
    Route::post('/books/{id}/comment', [HomeController::class, 'comment'])->name('books.comment');
});

