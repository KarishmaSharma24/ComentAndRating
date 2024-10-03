<?php

namespace App\Models;

use App\Models\Comment;
use Illuminate\Support\Facades\Auth;
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


    public function getUserBookRatingAttribute()
    {
        $data = Rating::where('user_id',Auth::user()->id)->where('book_id',$this->id)->first();
        return $data->rating??0;
        
    }
}
