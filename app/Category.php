<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['name' , 'priority'];

    public function lists() {
      return $this->hasMany(Sublist::class);
    }

    public function posts() {
      return $this->hasMany(Post::class);
    }
}
