<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = ['category_id', 'sublist_id', 'title', 'image', 'description'];

    public function category() {
        return $this->belongsTo(Category::class);
    }

    public function sublist() {
        return $this->belongsTo(Sublist::class);
    }
}
