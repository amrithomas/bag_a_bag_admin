<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Aviao extends Model
{
    protected $table = 'aviao';
    protected $primaryKey = 'ID_AVIAO';
    public $timestamps = false;

    protected $fillable = [
        'codigo_aviao',
        'empresa',
        'criado'
    ];

    public function assentos()
    {
        return $this->hasMany(Assento::class, 'FK_AVIAO', 'ID_AVIAO');
    }
}

