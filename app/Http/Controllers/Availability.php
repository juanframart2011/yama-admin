<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redirect;

use App\Models\Residence as ResidenceModel;
use App\Models\ResidenceType as ResidenceTypeModel;
use App\Models\ResidenceFloor as ResidenceFloorModel;

class Availability extends Controller
{
    public function residenceDetail( Request $request, $residenceUrl ){

        $residenceResult = ResidenceModel::Where([
            "url" => $residenceUrl,
            "statu_id" => 1
        ])->get();

        if( count( $residenceResult ) > 0 ){

            $data["metaTitle"] = "Disponibilidad " . $residenceResult[0]->name;
            $data["page"] = $residenceResult[0]->url;
            $data["residenceFloors"] = ResidenceFloorModel::Where([
                "residence_id" => $residenceResult[0]->id,
                "statu_id" => 1
            ])->OrderBy( "orden", "asc" )->get();

            $data["residence"] = $residenceResult[0];

            return view( "residence.detail", $data );
        }
        else{

            abort( 404 );
        }
    }

    public function residenceTypeDetail( Request $request, $residenceTypeUrl ){

        $residenceTypeResult = ResidenceTypeModel::Where([
            "url" => $residenceTypeUrl,
            "statu_id" => 1
        ])->get();

        if( count( $residenceTypeResult ) > 0 ){

            $data["metaTitle"] = "Disponibilidad " . $residenceTypeResult[0]->name;
            $data["page"] = $residenceTypeResult[0]->url;
            $data["residences"] = ResidenceModel::Where([
                "residenceType_id" => $residenceTypeResult[0]->id,
                "statu_id" => 1
            ])->get();

            $data["residenceType"] = $residenceTypeResult[0];

            return view( "residence.home", $data );
        }
        else{

            abort( 404 );
        }
    }
}