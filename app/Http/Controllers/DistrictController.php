<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class DistrictController extends Controller
{
    public function selDistrict($id)
    {
        $District = DB::table('district')->where('id','=',$id) -> get();
        return $District;
        
    }

    public function getDistrict(){
        $District = DB::table('district')->get();
        return $District;
    }

    public function saveDistrict(Request $request){
        //guarda el registro
        $District = DB::table('district')->insert(array(
            'districtCode' => $request->input ('districtCode'),
            'idRegion' => $request->input ('idRegion'),
            'idProvince' => $request->input ('idProvince'),
            'description' => $request->input ('description'),        
        ));
    }

    public function deleteDistrict($id){
        $District = DB::table('district')->where('id','=',$id) -> delete();
        return $District;
    }

    public function updateDistrict($id, Request $request){
        $District = DB::table('district')   ->where('id','=',$id)
                                            ->update(array(
                                                'districtCode' => $request->input ('districtCode'),
                                                'idRegion' => $request->input ('idRegion'),
                                                'idProvince' => $request->input ('idProvince'),
                                                'description' => $request->input ('description'),        
        ));
        return $District;
    }


}
