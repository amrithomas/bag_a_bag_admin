<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Assento extends Model
{
    use HasFactory;
    protected $table = 'assentos';
    protected $primaryKey = 'ID_ASSENTO';
    public $timestamps = false;
}
