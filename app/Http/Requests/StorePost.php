<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StorePost extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'category_id' => 'required',
            'sublist_id' => 'required',
            'title' => 'required',
            'file' => 'required',
            'description' => 'required',
        ];
    }
}
