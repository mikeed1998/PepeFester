<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PFCategoriaPepes extends Model
{
    protected $fillable = [
        'categoria',
        'iconos',
        'aux',
    ];
}
