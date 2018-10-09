<?php

namespace App\Http\Controllers;

use App\Book;
use App\Advertisement;
use Illuminate\Http\Request;
use App\Http\Requests\StoreBook;
use Illuminate\Support\Facades\Storage;
use Symfony\Component\HttpFoundation\Response;

class BookController extends Controller
{

    public function index()
    {
        $books = Book::all();
        return view('backends.books.index', compact('books'));
    }

    public function create()
    {
        return view('backends.books.create');
    }

    public function store(Request $request)
    {
        $image = $request->file('image');
        $imagename = uniqid() . '_' . $image->getClientOriginalName();
        Storage::putFileAs('public/images', $image, $imagename);

        $book = $request->file('book');
        $bookname = uniqid() . '_' . $book->getClientOriginalName();
        Storage::putFileAs('public/books', $book, $bookname);

        Book::create([
          'author' => $request->author,
          'title' => $request->title,
          'image' => $imagename,
          'book' => $bookname,
        ]);

        return redirect('/books');
    }

    public function show(Book $book)
    {
        //
    }

    public function edit($id)
    {
        $old = Book::find($id);
        return view('backends.books.edit', compact('old', 'id'));
    }

    public function update(Request $request, $id)
    {
      $image = $request->file('image');
      $imagename = uniqid() . '_' . $image->getClientOriginalName();
      Storage::putFileAs('public/images', $image, $imagename);

      $book = $request->file('book');
      $bookname = uniqid() . '_' . $book->getClientOriginalName();
      Storage::putFileAs('public/books', $book, $bookname);

      Book::where('id', $id)->update([
        'author' => $request->author,
        'title' => $request->title,
        'image' => $imagename,
        'book' => $bookname,
      ]);

      return redirect('/books');
    }

    public function destroy($id)
    {
        Book::destroy($id);
        return redirect('/books');

    }

    public function downloadBook($book_path) {
      $path = public_path() . "/storage/books/" . $book_path;
      $headers = array(
              'Content-Type: application/pdf',
            );
      return response()->download($path, 'filename.pdf', $headers);
    }

    public function showAllBook() {
      $rightside_advs = Advertisement::where('type', 'right-side')->get();
      $books = Book::all();
      return view('frontends.books.index', compact('rightside_advs', 'books'));
    }
}
