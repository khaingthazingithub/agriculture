<?php

namespace App\Http\Controllers;

use App\Post;
use App\Category;
use App\Sublist;
use App\Advertisement;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests\StorePost;

class PostController extends Controller
{

    public function index()
    {
        $posts = Post::all();
        return view('backends.posts.index', compact('posts'));
    }

    public function create()
    {
        $categories = Category::pluck('name', 'id');
        $sublists = Sublist::pluck('name', 'id');
        return view('backends.posts.create', compact('categories', 'sublists'));
    }

    public function store(StorePost $request)
    {
        $file = $request->file('file');
        $filename = uniqid() . '_' . $file->getClientOriginalName();
        Storage::putFileAs('public/images', $file, $filename);
        Post::create([
          'category_id' => $request->category_id,
          'sublist_id' => $request->sublist_id,
          'title' => $request->title,
          'image' => $filename,
          'description' => $request->description,
        ]);

        return redirect('/posts');
    }

    public function show($id)
    {
        $post = Post::find($id);
        $rightside_advs = Advertisement::where('type', 'right-side')->get();
        $category = Category::where('id', $post->category_id)->first();
        return view('frontends.posts.show', compact('post', 'rightside_advs', 'category'));
    }

    public function edit($id)
    {
        $old = Post::find($id);
        $categories = Category::pluck('name', 'id');
        $sublists = Sublist::pluck('name', 'id');
        return view('backends.posts.edit', compact('id', 'old', 'categories', 'sublists'));
    }

    public function update(Request $request, $id)
    {
      $file = $request->file('file');
      $filename = uniqid() . '_' . $file->getClientOriginalName();
      Storage::putFileAs('public/images', $file, $filename);
      Post::where('id', $id)->update([
        'category_id' => $request->category_id,
        'sublist_id' => $request->sublist_id,
        'title' => $request->title,
        'image' => $filename,
        'description' => $request->description,
      ]);

      return redirect('/posts');
    }


    public function destroy($id)
    {
        Post::destroy($id);
        return redirect('/posts');
    }

    // public function getList($category_id) {
    //     $lists = \DB::table('sublists')->where('category_id', $category_id)->pluck('name', 'id');
    //     return response()->json($lists);
    // }
}
