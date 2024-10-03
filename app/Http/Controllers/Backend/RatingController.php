<?php

namespace App\Http\Controllers\Backend;

use App\Models\Rating;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\RatingRepository;

class RatingController extends Controller
{
    protected $ratingRepo;

    public function __construct(RatingRepository $ratingRepo)
    {
        $this->ratingRepo = $ratingRepo;
    }

    public function store(Request $request)
    {
        $ratingData = [
            'book_id' => $request->book_id,
            'user_id' => auth()->id(),
            'rating' => $request->rating,
        ];

       $this->ratingRepo->store($ratingData);
       
        return response()->json([
            "msg" => 'success',
            "status" => 200,
        ]);
        
    }
}
