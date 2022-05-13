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
        <div class="col-md-6">
            <h3>{{ $residenceFloors[0]->name }}</h3>
            <hr>
            <div class="row">
                
                <div class="col-md-4"><span style="background-color:#52BE80;" class="floor-statu"></span>{{ $residenceFloors[0]->disponible }} Disponible</div>
                <div class="col-md-4"><span style="background-color:#F4D03F;" class="floor-statu"></span>{{ $residenceFloors[0]->apartado }} Apartado</div>
                <div class="col-md-4"><span style="background-color:#E74C3C;" class="floor-statu"></span>{{ $residenceFloors[0]->vencido }} Vencido</div>
            </div>

            <img class="img-fluid" src="{{ asset( $residenceFloors[0]->media ) }}" alt="{{ $residenceFloors[0]->name }}">
        </div>
        <div class="col-md-6">
            <img class="img-fluid" src="{{ asset( $residence->cover_floor ) }}" alt="{{ $residence->name }}">
        </div>
    </div>
@endsection

@section( "scriptExtra" )

    <script src="{{ asset( 'js/user.js' ) }}"></script>
@endsection