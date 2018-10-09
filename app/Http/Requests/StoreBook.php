<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreBook extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'author' => 'required',
            'title' => 'required',
            'image' => 'required',
            'book' => 'required',
        ];
    }
}
