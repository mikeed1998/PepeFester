<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PFSubcategoriaPepes extends Model
{
    protected $fillable = [
        'categoria',
        'subcategoria',
        'iconos',
        'aux',
    ];
}
