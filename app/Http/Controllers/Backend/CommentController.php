<?php

namespace App\Http\Controllers\Backend;

use App\Models\Book;
use App\Models\Comment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\CommentRepository;

class CommentController extends Controller
{
    protected $commentRepo;

    public function __construct(CommentRepository $commentRepo)
    {
        $this->commentRepo = $commentRepo;
    }
    public function create($id){
        $book = Book::find($id);
        return view('backend.comment.create',compact('id','book'));
    }
    public function store(Request $request)
    {
        $request->validate([
            'book_id' => 'required',
            'description' => 'required',
        ]);

        $data = [
            'book_id' => $request->book_id,
            'user_id' => auth()->id(),
            'comment' => $request->description,
        ];

        $this->commentRepo->store($data);

        return redirect()->route('home')->with('message', 'Comment added successfully!');
    }

   
}
