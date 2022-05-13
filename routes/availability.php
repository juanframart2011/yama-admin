<?php
Route::group(['prefix' => 'availability'], function(){

    Route::get( 'detail/{availability}', [ 'as' => 'availability-detail', 'uses' => 'App\Http\Controllers\Availability@residenceTypeDetail' ] );
    Route::get( 'residence-detail/{residence}', [ 'as' => 'residence-detail', 'uses' => 'App\Http\Controllers\Availability@residenceDetail' ] );
});