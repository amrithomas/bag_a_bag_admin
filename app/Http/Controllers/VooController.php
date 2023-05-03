<?php

namespace App\Http\Controllers;

use App\Models\Voo;
use App\Models\Aeroporto;
use Illuminate\Http\Request;
use PhpParser\Node\Expr\FuncCall;

class VooController extends Controller
{



    public function index()
    {
        try {
            $voos = Voo::with(['origem', 'destino', 'escalaIda', 'escalaVolta', 'aviaoIda', 'aviaoVolta'])->get();
            return view('voo', ['voos' => $voos]);
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Erro ao carregar o conteudo: ' . $e->getMessage());
        }
    }

    public function create()
    {
        $aeroportos = Aeroporto::pluck('NOME_AEROPORTO', 'ID_AEROPORTO');
        return view('voo', compact('aeroportos'));
    }



    public function cadastrar(Request $request)
    {
        try {

            // cria uma nova instância do modelo Voo com os dados do formulário
            $voo = new Voo();
            $voo->FK_ORIGEM_AERO = $request->input('origem');
            $voo->FK_DESTINO_AERO = $request->input('destino');
            $voo->FK_ESCALA_IDA = $request->input('escala_ida');
            $voo->FK_ESCALA_VOLTA = $request->input('escala_volta');
            $voo->VALOR_PASSAGEM = $request->input('valor_passagem');
            $voo->IDA_HORARIO_PARTIDA = $request->input('ida_horario_partida');
            $voo->IDA_HORARIO_CHEGADA = $request->input('ida_horario_chegada');
            $voo->VOLTA_HORARIO_PARTIDA = $request->input('volta_horario_partida');
            $voo->VOLTA_HORARIO_CHEGADA = $request->input('volta_horario_chegada');
            $voo->FK_AVIAO_IDA = $request->input('aviao_ida');
            $voo->FK_AVIAO_VOLTA = $request->input('aviao_volta');
            $voo->CRIADO = now();

            // salva o novo voo no banco de dados
            $voo->save();

            return redirect()->route('voo')->with('success', 'Voo cadastrado com sucesso!');
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Erro ao cadastrar o voo: ' . $e->getMessage());
        }
    }

    public function excluir(Voo $voo)
    {
        try {
            $voo->delete();
            return redirect()->route('voo')->with('success', 'Voo excluído com sucesso!');
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Erro ao excluir o voo: ' . $e->getMessage());
        }
    }
}
