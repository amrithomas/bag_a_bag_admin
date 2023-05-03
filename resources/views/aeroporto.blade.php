<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Aeroportos') }}
        </h2>
    </x-slot>

    <!-- Botão para cadastrar um novo aeroporto  -->
    <div class="max-w mx-auto mt-10 sm:px-6 lg:px-8 flex justify-content-center">
        <button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#exampleModal">Cadastrar novo Aeroporto</button>
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
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Cadastrar novo Aeroporto</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="{{route('aeroporto.cadastrar')}}" method="POST">
                        @csrf
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-default">Sigla</span>
                            <input type="text" name="sigla" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-default">Nome do Aeroporto</span>
                            <input type="text" name="nome_aeroporto" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-default">País</span>
                            <input type="text" name="pais" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-default">Cidade</span>
                            <input type="text" name="cidade" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                        </div>
                        <div class="modal-footer">
                            <button type="reset" class="btn btn-outline-danger" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-outline-success">Cadastrar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
                @foreach ($aeroportos as $aeroporto)
                <div class="rounded-lg bg-white p-6 shadow-[0_2px_15px_-3px_rgba(0,0,0,0.07),0_10px_20px_-2px_rgba(0,0,0,0.04)] dark:bg-neutral-700">
                    <h5 class="mb-2 text-xl font-medium leading-tight text-neutral-800">
                        {{$aeroporto->SIGLA}} - {{$aeroporto->NOME_AEROPORTO}}
                    </h5>
                    <p class="mb-4 text-base text-neutral-600 ">
                        {{$aeroporto->PAIS}} - {{$aeroporto->CIDADE}}
                    </p>
                    <div class="flex align-items-center">
                        <button type="button" class="btn btn-outline-primary edit-button" style="margin-right: 5px;" data-bs-toggle="modal" data-bs-target="#editModal">Editar</button>
                        <form method="POST" action="{{ url('/aeroporto/' . $aeroporto->ID_AEROPORTO) }}">
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

                const confirmed = confirm('Tem certeza de que deseja excluir este aeroporto?');

                if (confirmed) {
                    event.target.closest('form').submit();
                }
            });
        });
    </script>
</x-app-layout>
