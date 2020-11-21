<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DocumenttypeController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DistrictController;
use App\Http\Controllers\OccupationController;
use App\Http\Controllers\ProvinceController;
use App\Http\Controllers\UserAreaController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//DocumenttypeController
Route::get('doctype', [DocumenttypeController::class, 'getdoctype']);
Route::get('doctype/{id?}', [DocumenttypeController::class, 'selDocType']);
Route::post('savedoctype', [DocumenttypeController::class, 'saveDocType']);
Route::get('deletedoctype/{id?}', [DocumenttypeController::class, 'deleteDocType']);

//CategoryController
Route::get('category', [CategoryController::class, 'getCategory']);
Route::get('category/{id?}', [CategoryController::class, 'selCategory']);
Route::post('savecategory', [CategoryController::class, 'saveCategory']);
Route::get('deletecategory/{id?}', [CategoryController::class, 'deleteCategory']);

//DistrictController
Route::get('district', [DistrictController::class, 'getDistrict']);
Route::get('district/{id?}', [DistrictController::class, 'selDistrict']);
Route::post('savedistrict', [DistrictController::class, 'saveDistrict']);
Route::get('deletedistrict/{id?}', [DistrictController::class, 'deleteDistrict']);

//OccupationController
Route::get('occupation', [OccupationController::class, 'getOccupation']);
Route::get('occupation/{id?}', [OccupationController::class, 'selOccupation']);
Route::post('saveoccupation', [OccupationController::class, 'saveOccupation']);
Route::get('deleteoccupation/{id?}', [OccupationController::class, 'deleteOccupation']);

//ProvinceController
Route::get('province', [ProvinceController::class, 'getProvince']);
Route::get('province/{id?}', [ProvinceController::class, 'selProvince']);
Route::post('saveprovince', [ProvinceController::class, 'saveProvince']);
Route::get('deleteprovince/{id?}', [ProvinceController::class, 'deleteProvince']);

//RegionController
Route::get('region', [ProvinceController::class, 'getRegion']);
Route::get('region/{id?}', [ProvinceController::class, 'selRegion']);
Route::post('saveregion', [DocumenttypeController::class, 'saveRegion']);
Route::get('deleteregion/{id?}', [ProvinceController::class, 'deleteRegion']);

//UserAreaController
Route::get('userarea', [UserAreaController::class, 'getUserArea']);
Route::get('userarea/{id?}', [UserAreaController::class, 'selUserArea']);
Route::post('saveuserarea', [DocumenttypeController::class, 'saveUserArea']);
Route::get('deleteuserarea/{id?}', [UserAreaController::class, 'deleteUserArea']);