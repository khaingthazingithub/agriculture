<?php

namespace App\Http\Controllers;

use App\City;
use Illuminate\Http\Request;
use App\Http\Requests\StoreCity;

class CityController extends Controller
{

    public function index()
    {
        $cities = City::all();
        return view('backends.cities.index', compact('cities'));
    }


    public function create()
    {
        return view('backends.cities.create');
    }


    public function store(StoreCity $request)
    {
        City::create([
          'name' => $request->name,
        ]);
        return redirect('/cities');
    }


    public function show(City $city)
    {
        //
    }


    public function edit($id)
    {
        $old = City::find($id);
        return view('backends.cities.edit', compact('id', 'old'));
    }

    public function update(Request $request, $id)
    {
        City::where('id', $id)->update([
          'name' => $request->name,
        ]);
        return redirect('/cities');
    }

    public function destroy($id)
    {
        City::destroy($id);
        return redirect('/cities');
    }
}
