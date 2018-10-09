<?php

namespace App\Http\Controllers;

use App\Sublist;
use App\Category;
use App\Advertisement;
use App\Post;
use Illuminate\Http\Request;

use App\Http\Requests\StoreSublist;

class SublistController extends Controller
{

    public function index()
    {
        $sublists = Sublist::all();
        return view('backends.sub-lists.index', compact('sublists'));
    }

    public function create()
    {
        $categories = Category::pluck('name', 'id');
        return view('backends.sub-lists.create', compact('categories'));
    }

    public function store(StoreSublist $request)
    {
        Sublist::create([
          'category_id' => $request->category_id,
          'name' => $request->name,
        ]);
        return redirect('sub-lists');
    }

    public function show($id)
    {
      $posts = Post::where('sublist_id', $id)->get();
      $rightside_advs = Advertisement::where('type', 'right-side')->get();
      $sublist_name = Sublist::where('id', $id)->value('name');
      return view('frontends.sublists.show', compact('posts', 'rightside_advs', 'id', 'sublist_name'));
    }

    public function edit($id){
        $categories = Category::pluck('name', 'id');
        $old = Sublist::find($id);
        return view('backends.sub-lists.edit', compact('categories', 'old', 'id'));
    }

    public function update(Request $request, $id)
    {
        Sublist::where('id', $id)->update([
          'category_id' => $request->category_id,
          'name' => $request->name,
        ]);
        return redirect('sub-lists');
    }

    public function destroy($id)
    {
        Sublist::destroy($id);
        return redirect('sub-lists');
    }
}
