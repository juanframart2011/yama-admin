<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ResidenceType extends Model
{
    use HasFactory;
    protected $table = 'residence_type';
    public $timestamps = false;

    public function residences(){

        return $this->hasMany( 'App\Models\Residence', 'id', 'residence_id' );
    }

    public function statu(){

        return $this->belongsTo( 'App\Models\Statu', 'statu_id', 'id' );
    }
}