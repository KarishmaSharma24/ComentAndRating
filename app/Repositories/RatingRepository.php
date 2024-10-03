<?php

namespace App\Repositories;

use App\Models\Rating;
use Illuminate\Support\Facades\Request;

class RatingRepository
{
      public function store(array $data): Rating
      {
          return Rating::updateOrCreate(
              [
                  'book_id' => $data['book_id'],
                  'user_id' => $data['user_id'],
              ],
              [
                  'rating' => $data['rating'],
              ]
          );
      }
    

}

