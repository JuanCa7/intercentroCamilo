<!-- Modal -->
<div class="modal fade" id="createVoleto" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                <div class="modal-header">
                        <h5 class="modal-title">CREAR VOLETO</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                    </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="{{ route('voletos.store') }}" method="post">
                        @csrf
                        <input type="hidden" name="fk_evento" value="{{ $evento->id }}">
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="">Nombre:</label>
                            <input type="text" class="form-control" name="nombre" id=""  placeholder="">
                            </div>
                            <div class="col-md-6">
                                <label for="">Costo:</label>
                            <input type="number" class="form-control" name="costo" id=""  placeholder="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="">tipoVoleto:</label>
                                <select name="fk_tipovoleto" class="form-control" id="">
                                    <option value="">Seleccione uno...</option>
                                    <option value="1">Normal</option>
                                    <option value="2">Madrugador</option>
                                    <option value="3">V.I.P</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="">Cantidad:</label>
                            <input type="number" class="form-control" name="cantidad" id=""  placeholder="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="">Fecha Cierre:</label>
                                <input type="date" class="form-control" name="fechaCierre" id="">
                            </div>
                        </div>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button  type="submit" class="btn btn-primary">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
