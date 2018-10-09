<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Category;
use App\Post;
use App\Advertisement;

class HomeController extends Controller
{

    public function __construct()
    {

    }

    public function index()
    {

        $category1 = Category::where('priority', 1)->first();
        $category2 = Category::where('priority', 2)->first();
        $category3 = Category::where('priority', 3)->first();
        $category4 = Category::where('priority', 4)->first();

        $post1 = Post::where('category_id', $category1->id)->get();
        $post2 = Post::where('category_id', $category2->id)->get();
        $post3 = Post::where('category_id', $category3->id)->get();
        $post4 = Post::where('category_id', $category4->id)->get();

        $interrupt_advs = Advertisement::where('type', 'interrupt')->get();
        $adv_ary = array();
        $i = 0;
        foreach ($interrupt_advs as $interrupt_adv) {
          $adv_ary[$i]['image'] = $interrupt_adv->image;
          $adv_ary[$i]['link'] = $interrupt_adv->link;
          $i++;
        }

        $rightside_advs = Advertisement::where('type', 'right-side')->get();

        $categories = Category::all();
        return view('index', compact('category1', 'category2', 'category3', 'category4', 'post1', 'post2', 'post3', 'post4', 'categories', 'adv_ary'
        , 'rightside_advs'));
    }
}
