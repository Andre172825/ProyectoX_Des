<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class DocumenttypeController extends Controller
{
    public function getdoctype(){
        $DocType = DB::table('documenttype')->get();
        return $DocType;
    }
    
}
