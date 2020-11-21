<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

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

    public function updateRegion($id, Request $request){
        $Region = DB::table('region')       ->where('id','=',$id)
                                            ->update(array(
                                                'regionCode' => $request->input ('regionCode'),
                                                'description' => $request->input ('description'),
        ));
        return $Region;
    }
    

}
