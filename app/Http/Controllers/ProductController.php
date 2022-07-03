<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Support\Str;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Http\Controllers\AdminController;



class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $products = Product::latest()->paginate(6);

        return view('products.index')->with('products', $products);
    }

    public function femme()
    {
        $femmes = Product::where('category', 'femme')->paginate(6);
        return view('products.femmes', compact('femmes'));
    }
    public function homme()
    {

        $hommes = Product::where('category', 'homme')->paginate(6);
        return view('products.hommes', compact('hommes'));
    }
    public function solde()
    {
        $soldes = Product::where('status', 'en solde')->paginate(6);
        return view('products.soldes', compact('soldes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('products.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreProductRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreProductRequest $request)
    {


        $image = $request->file('image');

        $filename = Str::uuid()->toString(). "." . $image->getClientOriginalExtension();

        $image->move(storage_path('App/public/img'), $filename);





        Product::create([
            'title' => $request->title,
            'description' => $request->description,
            'price' => $request->price,
            'size' => $request->size,
            'image' => $filename,
            'visibility' => $request->visibility,
            'status' => $request->status,
            'reference' => $request->reference,
            'category' => $request->category
        ]);



        return redirect()->back()
                         ->with('success','Product added successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        // $product = Product::find($id);
        return view('products.show', compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        return view('products.edit', compact('product'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateProductRequest  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateProductRequest $request, Product $product)
    {
        $image = $request->file('image');

        $filename = Str::uuid()->toString(). "." . $image->getClientOriginalExtension();

        $image->move(storage_path('App/public/img'), $filename);

        $product->update([
            'title' => $request->title,
            'description' => $request->description,
            'price' => $request->price,
            'size' => $request->size,
            'image' => $filename,
            'visibility' => $request->visibility,
            'status' => $request->status,
            'category' => $request->category
        ]);

        return redirect()->back()
                        ->with('success','Post updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $product->delete();

        return redirect()->back()
                        ->with('success','Post deleted successfully');
    }
}
