<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Price extends Model
{
    protected $fillable = ['city_id', 'name', 'weight', 'price'];

    public function city() {
      return $this->belongsTo(City::class);
    }
}
