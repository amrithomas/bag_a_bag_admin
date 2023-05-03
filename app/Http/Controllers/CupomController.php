<?php

namespace App\Http\Controllers;
use App\Models\Cupom;
use Illuminate\Http\Request;

class CupomController extends Controller
{
    public function index() {
        $cupons = Cupom::all();
        return view('cupom', ['cupons' => $cupons]);
    }

    public function cadastrar(Request $request) {
        try {
            $cupom = Cupom::create([
                'codigo_cupom' => $request->codigo_cupom,
                'valor_desconto' => $request->valor_desconto,
            ]);

            $cupom->CODIGO_CUPOM = $request->codigo_cupom;
            $cupom->VALOR_DESCONTO = $request->valor_desconto;
            $cupom->save();

            return redirect()->route('cupom')->with('success', 'Cupom cadastrado com sucesso');
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Erro ao cadastrar o aeroporto: ' . $e->getMessage());
        }
    }

    public function excluir(Cupom $cupom) {
        try {
            $cupom->delete();
            return redirect()->route('cupom')->with('success', 'Cupom excluído com sucesso!');
        } catch(\Exception $e) {
            return redirect()->back()->with('error', 'Erro ao excluir o cupom: ' . $e->getMessage());
        }
    }
}
