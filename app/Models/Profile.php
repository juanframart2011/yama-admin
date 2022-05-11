<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;
    protected $table = 'profile';
    public $timestamps = false;

    public function statu(){

        return $this->belongsTo( 'App\Models\Statu', 'statu_id', 'id' );
    }
}