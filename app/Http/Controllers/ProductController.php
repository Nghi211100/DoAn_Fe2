<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\Type;
use App\Models\User;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showProductDetail($id)
    {
        $product = Product::find($id);
        return view('products.detail')->with('product', $product);
    }
    
    public function show(Request $request)
    {
        $id = $request->productId;
        $product = Product::with('categories')->find($id);
        return $product;
    }
    public function productTypes($type_id)
    {
        $types = Type::find($type_id);
        $categories = $types->categories()->get();
        $products = $types->products()->paginate(4);
        return view('components.types-product')-> with('products', $products)
                                               -> with('categories', $categories);
    }
    public function getcategory(Request $request)
    {
        $idlist = $request->categoryId;
        $categories = Category::whereIn('id', $idlist)->get();
        $products = [];
        foreach($categories as $cate){
            $products[] = $cate->products()->with('categories')->get();
        }
        return $products;
    }
    public function getproductsearch(Request $request)
    {
        $keySearch = $request->keySearch;
        $products = Product::where('product_name','like', '%'.$keySearch.'%')->get();
        return $products;
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function like(Request $request)
    {
        $userId = $request->idUser;
        $user = User::find($userId);
        $liked = $user->products()->where('product_id', $request->productId)->get();
        if($liked->isEmpty()==false){
            $product = Product::find($request->productId);
            return $product;
        }
        else{
            $product = Product::find($request->productId);
            $currentLikes = $product->likes;
            $currentLikes++;
            $product->likes = $currentLikes;
            $product->save();
            $product->users()->save($user);
            return $product;
        } 
    }

    public function loadMore(Request $request)
    {
        $products = Product::with('categories')->paginate(4);
        return $products;
    }
}
