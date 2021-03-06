@extends( "layout.main" )

@section( "cssExtra" )
    <style>
        .residence-detail{
            cursor: pointer;
        }
        .residence-detail h6{
            text-transform: capitalize;
        }
    </style>
@endsection

@section( "content" )

    <div class="row">
        <div class="col-md-6 offset-md-3 text-center title">
            <h3>DISPONIBILIDAD</h3>
        </div>
    </div>

	<div class="row">
        <div class="col-md-12 text-left">

            <h5>{{ $residenceType->name }}</h5>
            <hr>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="row">
                
                @foreach( $residences as $residence )
                    <div class="col-md-4 text-center residence-detail mt-4 mb-4" data-url="{{ $residence->url }}">
                        <img class="img-fluid rounded-circle mb-2" src="{{ asset( $residence->cover ) }}" alt="{{ $residence->name }}">
                        <h6>{{ $residence->name }}</h6>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection

@section( "scriptExtra" )

    <script>
        $( document ).ready( function(){
            $( ".residence-detail" ).click( function(){

                let url = $( this ).data( "url" );
                window.location.href = baseUrl + '/admin/availability/residence-detail/' + url;
            });
        });
    </script>
@endsection