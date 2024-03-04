<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PFGaleriaProducto extends Model
{
    protected $fillable = [
        'producto',
        'galeria',
    ];
}
