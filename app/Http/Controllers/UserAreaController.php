<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserAreaController extends Controller
{
    public function selUserArea($id)
    {
        $UserArea = DB::table('userarea')->where('id','=',$id) -> get();
        return $UserArea;
        
    }

    public function getUserArea(){
        $UserArea = DB::table('userarea')->get();
        return $UserArea;
    }

    public function saveUserArea(Request $request){
        //guarda el registro
        $UserArea = DB::table('userarea')->insert(array(
            'idOccupation' => $request->input ('idOccupation'),
            'description' => $request->input ('description'),
            'status' => $request->input ('status'),
        ));

       // return redirect()->action('UserArea')
    }

    
    public function deleteUserArea($id){
        $UserArea = DB::table('userarea')->where('id','=',$id) -> delete();
        return $UserArea;
    }


}
