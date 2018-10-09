<?php

namespace App\Http\Controllers;

use App\Question;
use App\Advertisement;
use App\Category;
use App\Answer;

use App\Http\Requests\StoreQuestion;
use Illuminate\Http\Request;
use App\Http\Requests\StoreAnswer;

use Illuminate\Support\Facades\Storage;

class QuestionController extends Controller
{

    public function __construct() {
      return $this->middleware('auth')->only(['create', 'storeAnswer']);
    }

    public function index()
    {
        //
    }

    public function create()
    {
        $categories = Category::pluck('name', 'id');
        $rightside_advs = Advertisement::where('type', 'right-side')->get();
        return view('backends.questions.create', compact('rightside_advs', 'categories'));
    }

    public function store(StoreQuestion $request)
    {
      $file = $request->file('file');
      $filename = uniqid() . '_' . $file->getClientOriginalName();
      Storage::putFileAs('public/images', $file, $filename);
      Question::create([
        'category_id' => $request->category_id,
        'user_id' => \Auth::user()->id,
        'image' => $filename,
        'title' => $request->title,
        'question' => $request->question,
      ]);
      return back();
    }

    public function show($id)
    {
        $questions = Question::where('category_id', $id)->orderBy('created_at', 'desc')->get();
        $rightside_advs = Advertisement::where('type', 'right-side')->get();
        $title = Category::where('id', $id)->value('name');
        return view('frontends.questions.show', compact('questions', 'rightside_advs', 'id', 'title'));
    }

    public function storeAnswer(StoreAnswer $request)
    {
        if(\Auth::check()) {
          $user_id = \Auth::user()->id;
        }
        Answer::create([
          'user_id' => $user_id,
          'question_id' => $request->question_id,
          'answer' => $request->answer,
        ]);
        return redirect('/question/'.$request->question_id.'/answer');
    }

    public function edit(Question $question)
    {
        //
    }

    public function update(Request $request, Question $question)
    {
        //
    }

    public function destroy(Question $question)
    {
        //
    }

    public function showAnswer($id) {
      $rightside_advs = Advertisement::where('type', 'right-side')->get();
      $answers = Answer::where('question_id', $id)->get();
      $question = Question::where('id', $id)->first();
      return view('frontends.answers.show', compact('rightside_advs', 'answers', 'id', 'question'));
    }

}
