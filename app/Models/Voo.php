<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Voo extends Model
{
    use HasFactory;

    protected $table = 'voo';
    protected $primaryKey = 'ID_VOO';


    public function origem()
    {
        return $this->belongsTo(Aeroporto::class, 'FK_ORIGEM_AERO', 'ID_AEROPORTO');
    }

    public function destino()
    {
        return $this->belongsTo(Aeroporto::class, 'FK_DESTINO_AERO', 'ID_AEROPORTO');
    }

    public function escalaIda()
    {
        return $this->belongsTo(Escala::class, 'FK_ESCALA_IDA', 'ID_ESCALA');
    }

    public function escalaVolta()
    {
        return $this->belongsTo(Escala::class, 'FK_ESCALA_VOLTA', 'ID_ESCALA');
    }

    public function aviaoIda()
    {
        return $this->belongsTo(Aviao::class, 'FK_AVIAO_IDA', 'ID_AVIAO')->withDefault();
    }

    public function aviaoVolta()
    {
        return $this->belongsTo(Aviao::class, 'FK_AVIAO_VOLTA', 'ID_AVIAO')->withDefault();
    }

}
