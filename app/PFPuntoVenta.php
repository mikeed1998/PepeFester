<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PFPuntoVenta extends Model
{
    protected $fillable = [
        'direccion',
        'codigo_postal',
        'ciudad',
        'estado',
        'mapa',
    ];
}
