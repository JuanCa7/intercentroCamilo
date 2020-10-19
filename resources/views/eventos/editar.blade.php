<!-- Modal -->
<div class="modal fade" id="editarEvento<?=$num?>" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                <div class="modal-header">
                        <h5 class="modal-title">EDITAR EVENTO</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                    </div>
            <div class="modal-body">
                <div class="container-fluid">

                    <form action="{{ route('eventos.update',$item->id)}}" method="post">
                        @method('PUT')
                        @csrf
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="">Nombre:</label>
                            <input type="text" class="form-control" name="nombre" value="{{ $item->nombre }}" id=""  placeholder="">
                            </div>
                            <div class="col-md-6">
                                <label for="">Fecha:</label>
                            <input type="date" class="form-control" value="{{ $item->fecha }}" name="fecha" id=""  placeholder="">
                            </div>

                        </div>
                        <div class="form-group row">
                            <label for="">Decripcion:</label>
                            <textarea class="form-control" name="descripcion" id="" {{ $item->descripcion }} cols="30" rows="10">{{ $item->descripcion }}</textarea>
                        </div>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button  type="submit" class="btn btn-primary">Edit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

