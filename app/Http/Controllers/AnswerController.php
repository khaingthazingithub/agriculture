<?php

namespace App\Http\Controllers;

use App\Answer;
use Illuminate\Http\Request;
use App\Http\Requests\StoreAnswer;

class AnswerController extends Controller
{

  public function __construct() {
    return $this->middleware('auth')->only(['storeAnswer']);
  }

    

}
