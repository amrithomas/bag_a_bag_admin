<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Voos') }}
        </h2>
    </x-slot>

    <!-- Botão para cadastrar um novo voo  -->
    <div class="max-w mx-auto mt-10 sm:px-6 lg:px-8 flex justify-content-center">
        <button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#exampleModal">Cadastrar novo Voo</button>
    </div>

    <!-- Retorno de mensagens para o admin  -->
    @if(session('error'))
    <div class="alert alert-danger mt-10 container text-center" role="alert">
        {{ session('error') }}
    </div>
    @elseif(session('success'))
    <div class="alert alert-success mt-10 container text-center" role="alert">
        {{ session('success') }}
    </div>
    @endif

    <!-- Modal para cadastrar um novo aeroporto  -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Cadastrar novo Voo</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="" method="POST">
                        @csrf
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
                @foreach ($voos as $voo)
                <div class="rounded-lg bg-white p-6 shadow-[0_2px_15px_-3px_rgba(0,0,0,0.07),0_10px_20px_-2px_rgba(0,0,0,0.04)] ">
                    <h5 class="mb-2 text-center text-xl font-medium leading-tight text-neutral-800 ">
                        Numero do voo - {{$voo->ID_VOO}}
                    </h5>

                    <br>
                    <p class="mb-4 text-base text-neutral-600 ">
                        <strong>Origem</strong> - {{$voo->origem->NOME_AEROPORTO}}
                        <br><br>
                        <strong>Destino</strong> - {{$voo->destino->NOME_AEROPORTO}}
                    </p>
                    <p class="mb-4 text-base text-neutral-600 ">
                        <strong>Preço base</strong> - {{$voo->VALOR_PASSAGEM}}
                        <br><br>
                        <strong>Horario de Ida</strong> - {{$voo->IDA_HORARIO_PARTIDA}}
                        <br><br>
                        <strong>Previsão de chegada</strong> - {{$voo->IDA_HORARIO_CHEGADA}}
                        <br><br>
                        <strong>Horario de Volta</strong> - {{$voo->VOLTA_HORARIO_PARTIDA ? $voo->VOLTA_HORARIO_PARTIDA : 'N/A'}}
                        <br><br>
                        <strong>Previsão de chegada</strong> - {{$voo->VOLTA_HORARIO_CHEGADA ? $voo->VOLTA_HORARIO_CHEGADA : 'N/A'}}
                    </p>
                    <p class="mb-4 text-base text-neutral-600 ">
                        <strong>Avião Ida</strong> - {{$voo->aviaoIda->CODIGO_AVIAO}}
                        <br><br>
                        <strong>Avião Volta</strong> - {{$voo->aviaoVolta->CODIGO_AVIAO}}
                    </p>
                    <p class="mb-4 text-base text-neutral-600 ">
                        <strong>Escala de Ida</strong> - {{$voo->escalaIda ? $voo->escalaIda->aeroporto->NOME_AEROPORTO : 'N/A'}}
                        <br><br>
                        <strong>Escala de Volta</strong> - {{$voo->escalaVolta ? $voo->escalaVolta->aeroporto->NOME_AEROPORTO : 'N/A'}}
                    </p>
                    <div class="flex align-items-center">
                        <button type="button" class="btn btn-outline-primary edit-button" style="margin-right: 5px;" data-bs-toggle="modal" data-bs-target="#editModal">Editar</button>
                        <form method="POST" action="{{route('voo.excluir', $voo->ID_VOO)}}">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-outline-danger delete-button">Excluir</button>
                        </form>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>

    <!-- Script para confirmar o 'delete' de um avião do banco -->
    <script>
        const deleteButtons = document.querySelectorAll('.delete-button');
        deleteButtons.forEach(button => {
            button.addEventListener('click', (event) => {
                event.preventDefault();

                // const aviaoId = button.getAttribute('data-aviao-id');

                const confirmed = confirm('Tem certeza de que deseja excluir este voo?');

                if (confirmed) {
                    event.target.closest('form').submit();
                }
            });
        });
    </script>
</x-app-layout>
