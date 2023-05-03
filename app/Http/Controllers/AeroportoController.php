<?php

namespace App\Http\Controllers;
use App\Models\Aeroporto;
use Illuminate\Http\Request;

class AeroportoController extends Controller
{
    public function index()
    {
        $aeroportos = Aeroporto::all();
        return view('aeroporto', ['aeroportos' => $aeroportos]);
    }

    public function cadastrar(Request $request)
    {
        try{

            $aeroporto = Aeroporto::create([
                'sigla' => $request->sigla,
                'nome_aeroporto' => $request->nome_aeroporto,
                'pais' => $request->pais,
                'cidade' => $request->cidade,
                'criado' => date('Y-m-d H:i:s'),
            ]);

            $aeroporto->SIGLA = $request->sigla;
            $aeroporto->NOME_AEROPORTO = $request->nome_aeroporto;
            $aeroporto->PAIS = $request->pais;
            $aeroporto->CIDADE = $request->cidade;
            $aeroporto->save();

            return redirect()->route('aeroporto')->with('success', 'Aeroporto cadastrado com sucesso!');
        } catch(\Exception $e) {
            return redirect()->back()->with('error', 'Erro ao cadastrar o aeroporto: ' . $e->getMessage());
        }
    }

    public function excluir(Aeroporto $aeroporto)
    {
        try {
            $aeroporto->delete();
            return redirect()->route('aeroporto')->with('success', 'Aeroporto excluido com successo!');
        } catch(\Exception $e) {
            return redirect()->back()->with('error', 'Erro ao excluir o aeroporto: ' . $e->getMessage());
        }
    }
}
