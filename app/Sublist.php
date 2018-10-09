<?php

namespace App;

use App\Category;
use Illuminate\Database\Eloquent\Model;

class Sublist extends Model
{
    protected $fillable = ['category_id', 'name'];

    public function category() {
      return $this->belongsTo(Category::class);
    }
}
