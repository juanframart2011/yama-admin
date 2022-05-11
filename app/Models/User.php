<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    use HasFactory;

    protected $table = 'user';
    public $timestamps = false;

    public function profile(){

        return $this->belongsTo( 'App\Models\Profile', 'profile_id', 'id' );
    }
    
    public function rol(){

        return $this->belongsTo( 'App\Models\Rol', 'rol_id', 'id' );
    }

    public function statu(){

        return $this->belongsTo( 'App\Models\Statu', 'statu_id', 'id' );
    }
}