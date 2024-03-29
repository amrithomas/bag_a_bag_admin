<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Escala extends Model
{
    use HasFactory;

    protected $table = 'escala';

    public function aeroporto() {
        return $this->belongsTo(Aeroporto::class, 'FK_AEROPORTO_ESCALA', 'ID_AEROPORTO');
    }

}
