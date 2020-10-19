<!-- Modal -->
<div class="modal fade" id="createEvento" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                <div class="modal-header">
                        <h5 class="modal-title">CREAR EVENTO</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                    </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="{{ route('eventos.store') }}" method="post">
                        @csrf
                        <input type="hidden" name="fk_admin" value="{{ Auth::user()->id }}">
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="">Nombre:</label>
                            <input type="text" class="form-control" name="nombre" id=""  placeholder="">
                            </div>
                            <div class="col-md-6">
                                <label for="">Fecha:</label>
                            <input type="date" class="form-control" name="fecha" id=""  placeholder="">
                            </div>

                        </div>
                        <div class="form-group row">
                            <label for="">Decripcion:</label>
                            <textarea class="form-control" name="descripcion" id="" cols="30" rows="10"></textarea>
                        </div>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button  type="submit" class="btn btn-primary">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

