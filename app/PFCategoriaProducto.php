<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PFCategoriaProducto extends Model
{
    protected $fillable = [
        "categoria",
        "icono",
        "aux",
    ];
}
