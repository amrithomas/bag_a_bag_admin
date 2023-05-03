<?php

namespace App\Http\Controllers;
use App\Models\Assento;
use Illuminate\Http\Request;

class AssentoController extends Controller
{
    public function index()
    {
        $assentos = Assento::all();
        return view('assento', ['assentos' => $assentos]);
    }
}
