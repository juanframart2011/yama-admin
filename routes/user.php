<?php
Route::group(['prefix' => 'user'], function(){

    Route::get( 'list', [ 'as' => 'user-list', 'uses' => 'App\Http\Controllers\User@list' ] );
    Route::post( 'delete', [ 'as' => 'user-delete', 'uses' => 'App\Http\Controllers\User@delete' ] );
});