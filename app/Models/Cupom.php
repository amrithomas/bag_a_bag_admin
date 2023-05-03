<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cupom extends Model
{
    use HasFactory;

    protected $table = 'cupom';
    protected $primaryKey = 'ID_CUPOM';
    public $timestamps = false;

    protected $fillable = [
        'codigo_cupom',
        'valor_desconto'
    ];
}
