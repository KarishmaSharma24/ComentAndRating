<?php

namespace App\Models;

use App\Models\Comment;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Book extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'writer',
        'description',
    ];

    public function rating()
    {
        return $this->hasMany(Rating::class);
    }

   

}
