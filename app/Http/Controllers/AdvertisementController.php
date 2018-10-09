<?php

namespace App\Http\Controllers;

use App\Advertisement;
use App\Http\Requests\StoreAdvertisement;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AdvertisementController extends Controller
{

    public function index()
    {
        $advertisements = Advertisement::all();
        return view('backends.advertisements.index', compact('advertisements'));
    }

    public function create()
    {
        return view("backends.advertisements.create");
    }

    public function store(StoreAdvertisement $request)
    {
        $file = $request->file('file');
        $filename = uniqid() . '_' . $file->getClientOriginalName();
        Storage::putFileAs('/public/images/', $file, $filename);
        Advertisement::create([
          'image' => $filename,
          'type' => $request->type,
          'link' => $request->link,
        ]);
        return redirect('/advertisements');
    }

    public function show(Advertisement $advertisement)
    {
        //
    }

    public function edit($id)
    {
        $old = Advertisement::find($id);
        return view('backends.advertisements.edit', compact('old', 'id'));
    }

    public function update(Request $request, $id)
    {
      $file = $request->file('file');
      $filename = uniqid() . '_' . $file->getClientOriginalName();
      Storage::putFileAs('/public/images/', $file, $filename);
      Advertisement::where('id', $id)->update([
        'image' => $filename,
        'type' => $request->type,
        'link' => $request->link,
      ]);
      return redirect('/advertisements');
    }

    public function destroy($id)
    {
        Advertisement::destroy($id);
        return redirect('/advertisements');
    }
}
