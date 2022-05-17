@extends( "layout.main" )

@section( "cssExtra" )
@endsection

@section( "content" )

    <div class="row">
        <div class="col-md-6 offset-md-3 text-center title">
            <h3>EDITAR USUARIO</h3>
        </div>
    </div>

    @if( Session( 'message-success' ) )

        <div class="row">
            <div class="col-md-6 offset-md-3 text-center">
                
                <div class="alert alert-success" role="alert">
                    <p>
                        {{ Session( 'message-success' ) }}
                    </p>
                </div>
            </div>
        </div>
    @endif

	<div class="row">
        <div class="col-md-12 text-center title">
            
            <form id="form-user" name="form-user" class="section" action="{{ route( 'user-update', Crypt::encryptString( $user->id ) ) }}" method="POST">
                
                <h5 class="">Datos del Usuario</h5>
                <div class="row">
                    <div class="col-md-11 mx-auto">
                        <div class="row">
                            {{ csrf_field() }}

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Nombre<span>*</span></label>
                                    <input type="text" class="form-control mb-4" id="name" name="name" placeholder="Nombre" value="{{ $user->name }}">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="last_name">Apellido<span>*</span></label>
                                    <input type="text" class="form-control mb-4" id="last_name" name="last_name" placeholder="Apellido" value="{{ $user->last_name }}">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="rol">Perfil<span>*</span></label>
                                    <select class="form-control" id="rol" name="rol">
                                        <option value="">Selecciona Rol</option>
                                        @foreach( $rols as $rol )

                                            <option {{ ( $user->rol_id == $rol->id )? 'selected' : '' }} value="{{ Crypt::encryptString( $rol->id ) }}">{{ $rol->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">Contacto<span>*</span></label>
                                    <input type="email" class="form-control mb-4" id="email" name="email" placeholder="Contacto" value="{{ $user->email }}">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="profile">Puesto<span>*</span></label>
                                    <input type="text" class="form-control" id="profile" name="profile" placeholder="Puesto" value="{{ $user->profile_id }}">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4 offset-md-4 text-center">
                        <div class="alert alert-arrow-left alert-icon-left  mb-4 alerta-mensaje-crear" role="alert">
                            <div id="alerta-texto-crear"></div>
                        </div>
                        <div class="row">

                            <div class="col-md-8 offset-md-2 text-center">
                                <button class="btn btn-block reference btn-update-user" type="submit">ACTUALIZAR</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 offset-md-3 text-center title">
            <h3>CAMBIAR CONTRASEÑA</h3>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 text-center title">
            
            <form id="form-password" name="form-password" class="section" action="{{ route( 'user-update-password', Crypt::encryptString( $user->id ) ) }}" method="POST">
                
                <h5 class="">Datos del Usuario</h5>
                <div class="row">
                    <div class="col-md-11 mx-auto">
                        <div class="row">
                            {{ csrf_field() }}

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="password">Contraseña<span>*</span></label>
                                    <input type="password" class="form-control mb-4" id="password" name="password" placeholder="Contraseña">
                                    <div class="helper-password text-danger"></div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="re-password">Repetir Contraseña<span>*</span></label>
                                    <input type="password" class="form-control mb-4" id="re-password" name="re-password" placeholder="Repetir Contraseña">
                                    <div class="helper-repassword text-danger"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4 offset-md-4 text-center">
                        <div class="alert alert-arrow-left alert-icon-left  mb-4 alerta-mensaje-crear" role="alert">
                            <div id="alerta-texto-crear"></div>
                        </div>
                        <div class="row">

                            <div class="col-md-8 offset-md-2 text-center">
                                <button class="btn btn-block reference btn-update-password" type="submit">CAMBIAR CONTRASEÑA</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection

@section( "scriptExtra" )

    <script src="{{ asset( 'js/user.js' ) }}"></script>
    <script>
        $( document ).ready( function(){

            User.detail();
        });
    </script>
@endsection