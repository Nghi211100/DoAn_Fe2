<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    public function categories()
    {
        return $this->belongsToMany(Category::class);
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
    public function users()
    {
        return $this->belongsToMany(User::class);
    }
    public function types()
    {
        return $this->belongsToMany(Type::class);
    }
}