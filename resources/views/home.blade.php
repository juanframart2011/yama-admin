@extends( "layout.main" )

@section( "cssExtra" )

    <style>
        .content-data{
            background-image: url("../img/bg-home.png");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .title{
            color: white;
        }
        .title b{
            text-transform: uppercase;
        }
    </style>
@endsection

@section( "content" )

	<div class="row">
        <div class="col-md-6 offset-md-3 text-center title">
            <h3>BIENVENIDO <b>{{ session( env( "APP_CLAVE" ) . 'n4m3' ) }}</b></h3>
            <h3>QUE GUSTO TENERTE DE VUELTA</h3>
        </div>
    </div>
@endsection

@section( "scriptExtra" )
@endsection