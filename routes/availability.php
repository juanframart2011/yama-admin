<?php
Route::group(['prefix' => 'availability'], function(){

    Route::get( 'detail/{availability}', [ 'as' => 'availability-detail', 'uses' => 'App\Http\Controllers\Availability@residenceTypeDetail' ] );
    Route::get( 'residence-detail/{residence}', [ 'as' => 'residence-detail', 'uses' => 'App\Http\Controllers\Availability@residenceDetail' ] );

    Route::post( 'residence-detail', [ 'as' => 'residence-detail', 'uses' => 'App\Http\Controllers\Residence@detail' ] );
    Route::post( 'update-residence', [ 'as' => 'residence-update', 'uses' => 'App\Http\Controllers\Residence@update' ] );
});