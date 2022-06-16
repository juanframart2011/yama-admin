<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Str;

use App\Models\Residence as ResidenceModel;
use App\Models\ResidenceType as ResidenceTypeModel;
use App\Models\ResidenceFloor as ResidenceFloorModel;

use Validator;

class Residence extends Controller
{
    public function detail( Request $request ){
        
        if( $request->ajax() ){

            $message =  [
                "id.required" =>  "El id es obligatorio"
            ];

            $validate = Validator::make($request->all(), [
                'id'            => 'required',
            ], $message );

            if( $validate->fails() ){

                $error = $validate->errors()->all();

                return response()->json([
                    "result" => 2,
                    "message" => $error
                ], 200 );
            }
            else{

                $id = Crypt::decryptString( $request->get( "id" ) );
                try{

                    DB::beginTransaction();

                    $result = ResidenceFloorModel::where( "id", $id )->get();                    

                    DB::commit();

                    return response()->json([
                        "result" => 1,
                        "message" => "Piso",
                        "data" => $result[0]
                    ], 200 );

                }
                catch( \Exception $e ){

                    DB::rollback();

                    Log::warning( "App/RaffleController/delete() :: " . $e->getMessage() );

                    return response()->json([
                        "result" => 2,
                        "message" => "<strong>Ups!</strong> Error al eliminar el Sorteo"
                    ], 200 );
                }
            }
        }
        else{

            abort( 404 );
        }
    }

    public function update( Request $request ){

        $messages = [
            'floor_id.required' => 'El piso es obligatorio',
            'floor_id.exists' => 'El piso no existe'
        ];
        $validate = Validator::make( $request->all(), [
            'floor_id' => 'required|exists:residence_floor,id'
        ], $messages );

        $residenceFloorId = $request->get( "floor_id" );

        $residenceFloorResult = ResidenceFloorModel::Where( "id", $residenceFloorId )->get();
        $residenceTypeName = $residenceFloorResult[0]->residence->residenceType->name;
        $residenceUrl = $residenceFloorResult[0]->residence->url;

        if( count( $residenceFloorResult ) > 0 ){

            if( $validate->fails() ){

                $errors = $validate->errors()->all();
                return redirect()->route('residence-detail',[$residenceUrl] )
                ->withInput()
                ->withErrors( $errors );
            }
            else{

                $name = $request->get( "name" );

                DB::beginTransaction();

                try {

                    $media = $request->file( 'media' );
                    
                    if( !empty( $media ) ){

                        $media_ext = '.' . $request->file( 'media' )->getClientOriginalExtension();

                        $url = Str::slug( $residenceUrl . '-floor-' . $name );

                        if( !file_exists( getcwd() . 'img/residence/' . $residenceTypeName . '/' . $residenceUrl ) ){

                            mkdir( getcwd() . 'img/residence/' . $residenceTypeName . '/' . $residenceUrl, 0777, true );
                        }

                        if( env( 'APP_ENV' ) == 'local' ){

                            $rutaCover = public_path( 'img/residence/' . $residenceTypeName . '/' . $residenceUrl . '/' );
                        }
                        else{

                            $rutaCover = getcwd() . '/img/residence/' . $residenceTypeName . '/' . $residenceUrl . '/';
                        }

                        $mediaName = $url . $media_ext;
                        $media->move( $rutaCover, $mediaName );
                        $urlMedia = '/img/residence/' . $residenceTypeName . '/' . $residenceUrl . '/' . $mediaName;
                    }
                    else{

                        $residenceFloorModel = ResidenceFloorModel::Where( "id", $residenceFloorId )->get();

                        $urlMedia = $residenceFloorModel[0]->media;
                    }

                    ResidenceFloorModel::Where( "id", $residenceFloorId )->update([
                        "media" => $urlMedia,
                        "name" => $name,
                        "last_modification" => date( "Y-m-d H:i:s" )
                    ]);

                    DB::commit();

                    return Redirect::to('admin/availability/residence-detail/' . $residenceUrl )->with( 'message-success', '¡Se actualizo el piso '.$name.' !' );
                }
                catch (\Exception $e) {
                    
                    DB::rollback();

                    Log::warning( "App/Residence/save() :: " . $e->getMessage() );

                    $validate->errors()->add( 'Ocurrio un error', "Vuelve a intentarlo" );
                    $errors = $validate->errors()->all();

                    $errors = $validate->errors()->all();
                    return redirect()->route('residence-detail',[$residenceUrl] )
                    ->withInput()
                    ->withErrors( $errors );
                }
            }
        }
        else{

            abort( 404 );
        }
    }
}