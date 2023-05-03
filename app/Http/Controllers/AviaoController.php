<?php

namespace App\Http\Controllers;

use App\Models\Aviao;
use App\Models\Assento;
use Illuminate\Http\Request;

class AviaoController extends Controller
{
    public function index()
    {
        $avioes = Aviao::all();
        return view('aviao', ['avioes' => $avioes]);
    }

    public function cadastrar(Request $request)
    {
        try {
            // Criando o avião
            $aviao = Aviao::create([
                'codigo_aviao' => $request->codigo_aviao,
                'empresa' => $request->empresa,
                'criado' => date('Y-m-d H:i:s'),
            ]);
            $aviao->CODIGO_AVIAO = $request->codigo_aviao;
            $aviao->EMPRESA = $request->empresa;
            $aviao->save();

            // Gerar 200 assentos
            for ($i = 1; $i <= 200; $i++) {
                // Definir a classe do assento
                if ($i <= 50) {
                    $classe = 'Primeira';
                } else {
                    $classe = 'Econômica';
                }

                // Inserir o assento no banco
                $assento = new Assento();
                $assento->NUMERO_ASSENTO = $i;
                $assento->CLASSE = $classe;
                $assento->FK_AVIAO = $aviao->ID_AVIAO;
                $assento->save();
            }
            return redirect()->route('aviao')->with('success', 'Avião cadastrado com sucesso!');
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Erro ao cadastrar o avião: ' . $e->getMessage());
        }
    }

    public function editar(Request $request)
    {
        try {
            $aviao = Aviao::find($request->id_aviao);

            $aviao->codigo_aviao = $request->codigo_aviao;
            $aviao->empresa = $request->empresa;
            $aviao->modificado = date('Y-m-d H:i:s');

            $aviao->save();

            return redirect()->route('aviao')->with('success', 'Avião atualizado com sucesso!');
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Erro ao editar o avião: ' . $e->getMessage());
        }
    }

    public function excluir(Aviao $aviao)
    {
        try {
            $assentos = $aviao->assentos;
            foreach ($assentos as $assento) {
                $assento->delete();
            }
            $aviao->delete();
            return redirect()->route('aviao')->with('success', 'Avião excluído com sucesso!');
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Erro ao excluir o avião: ' . $e->getMessage());
        }
    }

    public function show($id)
    {
        $aviao = Aviao::find($id);
        return view('aviao', ['aviao' => $aviao]);
    }
}
