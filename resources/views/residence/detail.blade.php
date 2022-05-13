@extends( "layout.main" )

@section( "cssExtra" )
    <style>
        .floor-statu{
            height: 12px;
            width: 12px;
            display: inline-block;
            margin: 0 5px 0 0;
        }
    </style>
@endsection

@section( "content" )

    @include( "residence.section.form_edit" )

    <div class="row">
        <div class="col-md-6 offset-md-3 text-center title">
            <h3>DISPONIBILIDAD</h3>
            <h3>{{ $residence->name }}</h3>
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

    @if( !$errors->isEmpty() )

        <div class="row">
            <div class="col-md-6 offset-md-3 text-center">
                
                <div class="alert alert-danger" role="alert">
                    @foreach ( $errors->all() as $error )
                        <strong>{{$error}}</strong><br>
                    @endforeach
                </div>
            </div>
        </div>
    @endif

	<div class="row">
        <div class="col-md-12 text-left">
            <div class="form-group">
                <select class="form-control" id="floor" name="floor">
                    @for( $rf = 0; $rf < count( $residenceFloors ); $rf++ )

                        <option {{ ( $rf == 0 )?'selected' : '' }} value="{{ Crypt::encryptString( $residenceFloors[$rf]->id ) }}">{{ $residenceFloors[$rf]->name }}</option>
                    @endfor
                </select>
            </div>
            <hr>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h3 class="title-floor">{{ $residenceFloors[0]->name }}</h3>
            <hr>
            <div class="row">
                
                <div class="col-md-4">
                    <span style="background-color:#52BE80;" class="floor-statu"></span><b class="floor-disponible">{{ $residenceFloors[0]->disponible }}</b> Disponible
                </div>
                <div class="col-md-4">
                    <span style="background-color:#F4D03F;" class="floor-statu"></span><b class="floor-apartado">{{ $residenceFloors[0]->apartado }}</b> Apartado
                </div>
                <div class="col-md-4">
                    <span style="background-color:#E74C3C;" class="floor-statu"></span><b class="floor-vendido">{{ $residenceFloors[0]->vendido }}</b> Vendido
                </div>
            </div>

            <img class="img-fluid img-floor" src="{{ asset( $residenceFloors[0]->media ) }}" alt="{{ $residenceFloors[0]->name }}">
        </div>
        <div class="col-md-6">
            <img class="img-fluid" src="{{ asset( $residence->cover_floor ) }}" alt="{{ $residence->name }}">
            <br><br>
            <div class="row">
                <div class="col-md-6 offset-md-3 text-center">
                    
                    <div class="row">
                        <div class="col-md-6 offset-md-3 text-center">
                            <button class="btn btn-block btn-edit-residence reference" type="button" data-toggle="modal" data-target="#formEditResidence">EDITAR</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section( "scriptExtra" )

    <script src="{{ asset( 'js/residence.js' ) }}"></script>
    <script>
        $( document ).ready( function(){

            Residence.detail();
        });
    </script>

    <script>

        $( document ).ready( function(){

            
        });
    </script>
@endsection