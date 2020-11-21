<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class OccupationController extends Controller
{
    public function selOccupation($id)
    {
        $Occupation = DB::table('occupation')->where('id','=',$id) -> get();
        return $Occupation;
        
    }

    public function getOccupation(){
        $Occupation = DB::table('occupation')->get();
        return $Occupation;
    }

    public function saveOccupation(Request $request){
        //guarda el registro
        $Occupation = DB::table('occupation')->insert(array(
            'idCategory' => $request->input ('idCategory'),
            'description' => $request->input ('description'),
        ));
    }

    public function deleteOccupation($id){
        $Occupation = DB::table('occupation')->where('id','=',$id) -> delete();
        return $Occupation;
    }
    
    public function updateOccupation($id, Request $request){
        $Occupation = DB::table('occupation')    ->where('id','=',$id)
                                                 ->update(array(
                                                    'idCategory' => $request->input ('idCategory'),
                                                    'description' => $request->input ('description'),
        ));
        return $Occupation;
    }
    

}
