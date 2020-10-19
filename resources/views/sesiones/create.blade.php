<!-- Modal -->
<div class="modal fade" id="createSesion" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                <div class="modal-header">
                        <h5 class="modal-title">CREAR SESION</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                    </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="{{ route('sesion.store') }}" method="post">
                        @csrf
                        <input type="hidden" name="fk_eventos" value="{{ $evento->id }}">
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="">Titulo</label>
                                <input class="form-control" type="text" name="titulo" id="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="">Tipo Sesion:</label>
                                <select class="form-control" name="fk_tiposesion" id="">
                                    <option value="1">Charla</option>
                                    <option value="2">Taller</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="">Orador:</label>
                            <input type="date" class="form-control" name="orador" id=""  placeholder="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="">Sala</label>
                                <select class="form-control" name="fk_sala" id="">
                                    <option value="11">Sala A</option>
                                    <option value="12">Sala B</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="">Hora Inicio</label>
                                <input  class="form-control" type="datetime-local" name="horainicio" id="">
                            </div>
                            <div class="col-md-6">
                                <div class="col-md-6">
                                    <label for="">Hora Fin</label>
                                    <input  class="form-control" type="datetime-local" name="horafin" id="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="">Descripcion:</label>
                                <textarea name="descripcion" id="" class="form-control" cols="30" rows="10">

                                </textarea>
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

