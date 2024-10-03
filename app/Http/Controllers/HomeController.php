<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Comment;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    
    public function index()
    {
        $books = Book::with(['rating' => function ($query) {
            $query->where('user_id', auth()->id());
        }])->get();
        // dd($books);
        return view('home',compact('books'));
    }

    
}
