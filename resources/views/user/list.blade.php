@extends( "layout.main" )

@section( "cssExtra" )
@endsection

@section( "content" )

    <div class="row">
        <div class="col-md-6 offset-md-3 text-center title">
            <h3>USUARIOS</h3>
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
            
            <table class="table">
                <thead>
                    <tr>
                        <th>NOMBRE</th>
                        <th>PUESTO</th>
                        <th>PÉRFIL</th>
                        <th>CONTACTO</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach( $users as $user )
                        <tr>
                            <td>{{ $user->name . ' ' . $user->last_name }}</td>
                            <td>{{ $user->profile->name }}</td>
                            <td>{{ $user->rol->name }}</td>
                            <td>{{ $user->email }}</td>
                            <td>
                                <a class="" href="#"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                <a class="text-danger btn-delete" data-name="{{ $user->name }}" data-user="{{ $user->id }}" href="#"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

    <div class="row">
        <div class="col-md-2 offset-md-5 text-center">
            
            <div class="row">
                <div class="col-md-6 offset-md-3 text-center">
                    <a href="{{ route( 'user-create' ) }}"><button class="btn btn-block reference" type="button">AGREGAR</button></a>
                </div>
            </div>
        </div>
    </div>
@endsection

@section( "scriptExtra" )

    <script src="{{ asset( 'js/user.js' ) }}"></script>
@endsection