<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Residence extends Model
{
    use HasFactory;
    protected $table = 'residence';
    public $timestamps = false;

    public function residenceFloors(){

        return $this->hasMany( 'App\Models\ResidenceFloor', 'id', 'residence_id' );
    }

    public function residenceType(){

        return $this->belongsTo( 'App\Models\ResidenceType', 'residenceType_id', 'id' );
    }

    public function statu(){

        return $this->belongsTo( 'App\Models\Statu', 'statu_id', 'id' );
    }
}