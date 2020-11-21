<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function selCategory($id)
    {
        $Category = DB::table('category')->where('id','=',$id) -> get();
        return $Category;
        
    }

    public function getCategory(){
        $Category = DB::table('category')->get();
        return $Category;
    }

    public function saveCategory(Request $request){
        //guarda el registro
        $Category = DB::table('category')->insert(array(
            'description' => $request->input ('description'),
        ));
        return $Category;
    }

    public function deleteCategory($id){
        $Category = DB::table('category')->where('id','=',$id) -> delete();
        return $Category;
    }

}
