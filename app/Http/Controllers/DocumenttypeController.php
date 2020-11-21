<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class DocumenttypeController extends Controller
{
   
    public function selDocType($id)
    {
        $DocType = DB::table('documenttype')->where('id','=',$id) -> get();
        return $DocType;
        
    }

    public function getDoctype(){
        $DocType = DB::table('documenttype')->get();
        return $DocType;
    }
    
    public function saveDocType(Request $request){
        //guarda el registro
        $DocType = DB::table('documenttype')->insert(array(
            'documentCode' => $request->input ('documentCode'),
            'description' => $request->input ('description'),
            'status' => $request->input ('status'),
        ));
    }

    public function deleteDocType($id){
        $DocType = DB::table('documenttype')->where('id','=',$id) -> delete();
        return $DocType;
    }

}
