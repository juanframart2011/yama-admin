@extends( "layout.main" )

@section( "cssExtra" )
@endsection

@section( "content" )

    <div class="row">
        <div class="col-md-6 offset-md-3 text-center title">
            <h3>DISPONIBILIDAD</h3>
            <h3>{{ $residence->name }}</h3>
        </div>
    </div>

	<div class="row">
        <div class="col-md-12 text-left">
            <div class="form-group">
                <select class="form-control" id="floor" name="floor">
                    <option value="">Selecciona Piso que quieres consutar</option>
                    @for( $rf = 0; $rf < count( $residenceFloors ); $rf++ )

                        <option {{ ( $rf == 0 )?'selected' : '' }} value="{{ Crypt::encryptString( $residenceFloors[$rf]->id ) }}">{{ $residenceFloors[$rf]->name }}</option>
                    @endfor
                </select>
            </div>
            <hr>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6"></div>
        <div class="col-md-6">
            <img class="img-fluid" src="{{ asset( $residence->cover_floor ) }}" alt="{{ $residence->name }}">
        </div>
    </div>
@endsection

@section( "scriptExtra" )

    <script src="{{ asset( 'js/user.js' ) }}"></script>
@endsection