<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');

    Route::group(['prefix' => 'aviao'], function () {
        Route::get('/', [App\Http\Controllers\AviaoController::class, 'index'])->name('aviao');
        Route::put('/{id}/editar', [App\Http\Controllers\AviaoController::class, 'editar'])->name('aviao.editar');
        Route::delete('/{aviao}', [App\Http\Controllers\AviaoController::class, 'excluir'])->name('aviao.excluir');
        Route::post('/cadastrar', [\App\Http\Controllers\AviaoController::class, 'cadastrar'])->name('aviao.cadastrar');
    });

    Route::group(['prefix' => 'voo'], function () {
        Route::get('/', [App\Http\Controllers\VooController::class, 'index'])->name('voo');
        Route::post('/cadastrar', [App\Http\Controllers\VooController::class, 'cadastrar'])->name('voo.cadastrar');
        Route::delete('/{voo}', [App\Http\Controllers\VooController::class, 'excluir'])->name('voo.excluir');
    });

    Route::group(['prefix' => 'aeroporto'], function () {
        Route::get('/', [App\Http\Controllers\AeroportoController::class, 'index'])->name('aeroporto');
        Route::post('/cadastrar', [App\Http\Controllers\AeroportoController::class, 'cadastrar'])->name('aeroporto.cadastrar');
        Route::delete('/{aeroporto}', [\App\Http\Controllers\AeroportoController::class, 'excluir'])->name('aeroporto.excluir');

    });

    Route::group(['prefix' => 'cupom'], function (){
        Route::get('/', [App\Http\Controllers\CupomController::class, 'index'])->name('cupom');
        Route::post('/cadastrar', [App\Http\Controllers\CupomController::class, 'cadastrar'])->name('cupom.cadastrar');
        Route::delete('/{cupom}', [App\Http\Controllers\CupomController::class, 'excluir'])->name('aeroporto.excluir');
    });


    Route::get('/relatorio', function () {
        return view('relatorio');
    })->name('relatorio');
});
