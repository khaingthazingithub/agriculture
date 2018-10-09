<?php

namespace App\Http\Controllers;

use App\Price;
use App\City;
use App\Advertisement;
use Illuminate\Http\Request;
use App\Http\Requests\StorePrice;

class PriceController extends Controller
{
    public function index()
    {
        $prices = Price::all();
        return view('backends.prices.index', compact('prices'));
    }


    public function create()
    {
        $cities = City::pluck('name', 'id');
        return view('backends.prices.create', compact('cities'));
    }


    public function store(StorePrice $request)
    {
        Price::create([
          'city_id' => $request->city_id,
          'name' => $request->name,
          'weight' => $request->weight,
          'price' => $request->price,
        ]);
        return redirect('/prices');

    }


    public function show(Price $price)
    {
        //
    }


    public function edit($id)
    {
        $old = Price::find($id);
        $cities = City::pluck('name', 'id');
        return view('backends.prices.edit', compact('old', 'id', 'cities'));
    }


    public function update(Request $request, $id)
    {
      Price::where('id', $id)->update([
        'city_id' => $request->city_id,
        'name' => $request->name,
        'weight' => $request->weight,
        'price' => $request->price,
      ]);

      return redirect('/prices');
    }


    public function destroy($id)
    {
        Price::destroy($id);
        return redirect('/prices');

    }

    public function showAllPrice() {
      $cities = City::all();
      $rightside_advs = Advertisement::where('type', 'right-side')->get();
      return view('frontends.prices.show', compact('cities', 'rightside_advs'));
    }
}
