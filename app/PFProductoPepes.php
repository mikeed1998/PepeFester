<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PFProductoPepes extends Model
{
    protected $fillable = [
        'subcategoria',
        'nombre',
        'precio',
        'descripcion',
        'existencias',
        'presentacion',
        'imagen',
        'inicio',
    ];
}

