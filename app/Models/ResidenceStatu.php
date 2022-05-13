<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ResidenceStatu extends Model
{
    use HasFactory;
    protected $table = 'residence_statu';
    public $timestamps = false;

    public function residence(){

        return $this->belongsTo( 'App\Models\Residence', 'residence_id', 'id' );
    }

    public function statu(){

        return $this->belongsTo( 'App\Models\Statu', 'statu_id', 'id' );
    }
}
