@props(['aviao'])
<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="editModalLabel">Editar Avião</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="{{ route('aviao.editar', ['id' => $aviao->ID_AVIAO]) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <p>{{$aviao->ID_AVIAO}}</p>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-default">Código da Aeronave</span>
                        <input type="text" value="{{$aviao->CODIGO_AVIAO}}" name="codigo_aviao" id="codigo_aviao" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text" id="inputGroup-sizing-default">Companhia Aérea</span>
                        <input type="text" name="empresa" id="empresa" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>
                    <div class="modal-footer">
                        <button type="reset" class="btn btn-outline-danger" data-bs-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-outline-success">Editar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
