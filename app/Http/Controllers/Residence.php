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

class Residence extends Controller
{
    public function update( Request $request ){

        $messages = [
            'media.required' => 'La imagen es obligatoria',
            'floor_id.required' => 'El piso es obligatorio',
            'floor_id.exists' => 'El piso no existe',
            'disponible.required' => 'El disponible es obligatorio',
            'apartado.required' => 'El apartado es obligatorio',
            'vendido.required' => 'El vendido es obligatorio',
        ];
        $validate = Validator::make( $request->all(), [
            'media' => 'required',
            'floor_id' => 'required|exists:residence_floor,id',
            'disponible' => 'required',
            'apartado' => 'required',
            'vendido' => 'required'
        ], $messages );
        
        if( $validate->fails() ){

            $errors = $validate->errors()->all();
            return redirect()->route( 'raffle' )
            ->withInput()
            ->withErrors( $errors );
        }
        else{

            $residenceFloorId = $request->get( "floor_id" );

            $residenceFloorResult = ResidenceFloorModel::Where( "id", $residenceFloorId )->get();

            $disponible = $request->get( "disponible" );
            $apartado = $request->get( "apartado" );
            $vendido = $request->get( "vendido" );

            DB::beginTransaction();

            try {

                $media = $request->file( 'media' );
                $media_ext = '.' . $request->file( 'media' )->getClientOriginalExtension();

                if( env( 'APP_ENV' ) == 'local' ){

                    $rutaCover = public_path( 'img/residence/' . $url . '/' );
                }
                else{

                    $rutaCover = getcwd() . '/img/residence/' . $url . '/';
                }

                $mediaName = $url . $cover_ext;
                $media->move( $rutaCover, $mediaName );
                $urlMedia = 'img/residence/' . $url . '/' . $mediaName;

                ResidenceFloorModel::Where( "id", $residenceFloorId )->update([
                    "disponible" => $disponible,
                    "apartado" => $apartado,
                    "vendido" => $vendido,
                    "media" => $urlMedia
                    "last_modification" => date( "Y-m-d H:i:s" )
                ]);

                DB::commit();

                return Redirect::to( 'admin/availability/residence-detail/' . Crypt::encryptString( $competitionNew->id ) );
            }
            catch (\Exception $e) {
                
                DB::rollback();

                Log::warning( "App/Residence/save() :: " . $e->getMessage() );

                $validate->errors()->add( 'Ocurrio un error', "Vuelve a intentarlo" );
                $errors = $validate->errors()->all();

                $errors = $validate->errors()->all();
                return redirect()->route( 'raffle' )
                ->withInput()
                ->withErrors( $errors );
            }
        }
    }
}