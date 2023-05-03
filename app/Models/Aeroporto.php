<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Aeroporto extends Model
{
    use HasFactory;

    protected $table = 'aeroporto';
    protected $primaryKey = 'ID_AEROPORTO';
    public $timestamps = false;

    protected $fillable = [
        'sigla',
        'nome_aeroporto',
        'pais',
        'cidade',
        'criado'
    ];
    public static function getAllAeroportos()
    {
        return Aeroporto::all();

    }
}
