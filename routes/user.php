<?php
Route::group(['prefix' => 'user'], function(){

    Route::get( 'create', [ 'as' => 'user-create', 'uses' => 'App\Http\Controllers\User@create' ] );
    Route::get( 'edit/{user}', [ 'as' => 'user-edit', 'uses' => 'App\Http\Controllers\User@edit' ] );
    Route::get( 'list', [ 'as' => 'user-list', 'uses' => 'App\Http\Controllers\User@list' ] );
    Route::get( 'delete/{user}', [ 'as' => 'user-delete', 'uses' => 'App\Http\Controllers\User@delete' ] );

    Route::post( 'save', [ 'as' => 'user-save', 'uses' => 'App\Http\Controllers\User@save' ] );
    Route::post( 'update/{user}', [ 'as' => 'user-update', 'uses' => 'App\Http\Controllers\User@update' ] );
    Route::post( 'update-password/{user}', [ 'as' => 'user-update-password', 'uses' => 'App\Http\Controllers\User@updatePassword' ] );
});