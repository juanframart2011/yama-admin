<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redirect;

use App\Models\Rol as RolModel;
use App\Models\User as UserModel;

use Validator;

class User extends Controller
{
    public function delete( Request $request ){

        $userId = $request->get( "user" );

        if( !empty( $userId ) ){


        }
    }

    public function list(){

        $data["metaTitle"] = "Lista de Usuarios";
        $data["page"] = "user";
        $data["users"] = UserModel::Where( "statu_id", 1 )->get();

        return view( "user.list", $data );
    }

    public function login( Request $request ){

        $messages = [
            'user.required' => 'El Correo electrónico es obligatorio',
            'user.email' => 'El Correo debe ser un email',
            'password.required' => 'La Contraseña es obligatoria',
        ];
        $validate = Validator::make( $request->all(), [
            'user' => 'required|email',
            'password' => 'required',
        ], $messages );
        
        if( $validate->fails() ){

            $errors = $validate->errors()->all();
            return redirect()->route( 'home' )
            ->withInput()
            ->withErrors( $errors );
        }
        else{

            $userResult = UserModel::Where([
                "email" => $request['user'],
                "password" => md5( $request['password'] ),
                "statu_id" => 1
            ])->get();

            if( count( $userResult ) > 0 ){
                
                $request->session()->put([
                    env( "APP_CLAVE" ) . '3m41l' => $userResult[0]->email,
                    env( "APP_CLAVE" ) . '1d' => Crypt::encryptString( $userResult[0]->id ),
                    env( "APP_CLAVE" ) . 'n4m3' => $userResult[0]->name,
                    env( "APP_CLAVE" ) . 'l437-n4m3' => $userResult[0]->last_name,
                    env( "APP_CLAVE" ) . 'r01' => Crypt::encryptString( $userResult[0]->rol_id ),
                    env( "APP_CLAVE" ) . 'pr0f1l3' => $userResult[0]->profile->name
                ]);

                return redirect()->route( 'dashboard' );
            }
            else{
                $validate->errors()->add( 'login', 'Los datos son incorrectos' );
                $errors = $validate->errors()->all();
                return redirect()->route( 'home' )
                ->withInput()
                ->withErrors($errors);
            }
        }
    }

    public function logout(Request $request){

        $request->session()->flush();

        return redirect()->route( 'home' );
    }
}