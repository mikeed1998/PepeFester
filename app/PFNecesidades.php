<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PFNecesidades extends Model
{
    protected $fillable = [
        'tipo_sector',
        'sector',
        'necesidades',
    ];
}
