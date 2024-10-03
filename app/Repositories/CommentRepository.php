<?php

namespace App\Repositories;

use App\Models\Comment;
use Illuminate\Support\Facades\Request;

class CommentRepository
{
    public function store(array $data): Comment
    {
        return Comment::create($data);
    }

    

}

