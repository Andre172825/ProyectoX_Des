<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class ProvinceController extends Controller
{
    public function selProvince($id)
    {
        $Province = DB::table('province')->where('id','=',$id) -> get();
        return $Province;
        
    }

    public function getProvince(){
        $Province = DB::table('province')->get();
        return $Province;
    }

    public function saveProvince(Request $request){
        //guarda el registro
        $Province = DB::table('province')->insert(array(
            'provinceCode' => $request->input ('provinceCode'),
            'idRegion' => $request->input ('description'),
            'description' => $request->input ('description'),
        ));
    }

    
    public function deleteProvince($id){
        $Province = DB::table('province')->where('id','=',$id) -> delete();
        return $Province;
    }

    public function updateProvince($id, Request $request){
        $Province = DB::table('province')       ->where('id','=',$id)
                                                ->update(array(
                                                    'provinceCode' => $request->input ('provinceCode'),
                                                    'idRegion' => $request->input ('description'),
                                                    'description' => $request->input ('description'),
        ));
        return $Province;
    }
    

}
