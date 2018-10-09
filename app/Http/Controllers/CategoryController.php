<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use App\Advertisement;
use Illuminate\Http\Request;
use App\Http\Requests\StoreCategory;
class CategoryController extends Controller
{

    public function index()
    {
        $categories = Category::all();
        return view('backends.categories.index', compact('categories'));
    }

    public function create()
    {
        return view('backends.categories.create');
    }

    public function store(StoreCategory $request)
    {
      Category::create([
        'name' => $request->name,
        'priority' => $request->priority,
      ]);

      return redirect('/categories');
    }

    public function show($id)
    {
        $category_name = Category::where('id', $id)->value('name');
        $posts = Post::where('category_id', $id)->get();
        $rightside_advs = Advertisement::where('type', 'right-side')->get();
        return view('frontends.categories.show', compact('posts', 'rightside_advs', 'category_name'));
    }

    public function edit($id)
    {
        $old = Category::find($id);
        return view('backends.categories.edit', compact('old'));
    }

    public function update(StoreCategory $request, $id)
    {
        Category::where('id', $id)->update([
          'name' => $request->name,
          'priority' => $request->priority,
        ]);

        return redirect('/categories');
    }

    public function destroy($id)
    {
        Category::destroy($id);
        return redirect('/categories');
    }
}
