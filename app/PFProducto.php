<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PFProducto extends Model
{
    protected $fillable = [
        "categoria",
        "nombre",
        "precio",
        "descripcion",
        "existencias",
        "presentacion",
        "imagen",
    ];
}
