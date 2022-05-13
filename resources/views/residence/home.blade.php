@extends( "layout.main" )

@section( "cssExtra" )
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
        <div class="col-md-8 offset-md-2">
            <div class="row">
                
                @foreach( $residences as $residence )
                    <a href="{{ route( 'residence-detail', $residence->url ) }}">
                    <div class="col-md-4 text-center">
                        <img class="img-fluid rounded-circle" src="{{ asset( $residence->cover ) }}" alt="{{ $residence->name }}">
                        <h6>{{ $residence->name }}</h6>
                    </div></a>
                @endforeach
            </div>
        </div>
    </div>
@endsection

@section( "scriptExtra" )

    <script src="{{ asset( 'js/user.js' ) }}"></script>
@endsection