<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PFPresentacionProducto extends Model
{
    protected $fillable = [
        'producto',
        'presentacion',
    ];
}
