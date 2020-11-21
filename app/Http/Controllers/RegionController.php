<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RegionController extends Controller
{
    public function selRegion($id)
    {
        $Region = DB::table('region')->where('id','=',$id) -> get();
        return $Region;
        
    }

    public function getRegion(){
        $Region = DB::table('region')->get();
        return $Region;
    }

    public function saveRegion(Request $request){
        //guarda el registro
        $Region = DB::table('region')->insert(array(
            'regionCode' => $request->input ('regionCode'),
            'description' => $request->input ('description'),
        ));
    }

    
    public function deleteRegion($id){
        $Region = DB::table('region')->where('id','=',$id) -> delete();
        return $Region;
    }


}
