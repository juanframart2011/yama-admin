<!-- Modal -->
<div class="modal fade bd-example-modal-lg" id="formEditResidence" tabindex="-1" role="dialog" aria-labelledby="formEditResidenceTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h5 class="modal-title" id="exampleModalLongTitle">{{ $residenceFloors[0]->name }}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12 text-center title">
                        
                        <form enctype="multipart/form-data" id="form-resindece" name="form-resindece" class="section" action="{{ route( 'residence-update' ) }}" method="POST">
                            <h5 class="">Datos del Piso</h5>
                            <div class="row">
                                <div class="col-md-11 mx-auto">
                                    <div class="row">
                                        {{ csrf_field() }}

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="name">Nombre<span>*</span></label>
                                                <input type="text" class="form-control mb-4" id="name" name="name" placeholder="Nombre" value="{{ $residenceFloors[0]->name }}">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="media">Imagen</label>
                                                <input type="file" accept="image/png,image/jpeg" class="form-control mb-4" id="media" name="media">
                                            </div>
                                        </div>

                                        <input type="hidden" id="floor_id" name="floor_id" value="{{ $residenceFloors[0]->id }}">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <div class="alert mb-4 alerta-mensaje-update d-none" role="alert">
                                        <div id="alerta-texto-crear"></div>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-8 offset-md-2 text-center">
                                            <button class="btn btn-block reference btn-update-residence" type="submit">ACTUALIZAR</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>