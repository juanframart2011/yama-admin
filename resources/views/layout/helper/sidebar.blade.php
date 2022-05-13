<aside class="col-md-2 sidebar left">
    <div class="user-panel">
        <div class="pull-left image">
            <img src="http://via.placeholder.com/160x160" class="rounded-circle" alt="{{ session( env( "APP_CLAVE" ) . 'n4m3' ) . ' ' . session( env( "APP_CLAVE" ) . 'l437-n4m3' ) }}">
        </div>
        <div class="pull-left info">
            <p>{{ session( env( "APP_CLAVE" ) . 'n4m3' ) . ' ' . session( env( "APP_CLAVE" ) . 'l437-n4m3' ) }}</p>
            <a href="#">{{ session( env( "APP_CLAVE" ) . 'pr0f1l3' ) }}</a>
        </div>
    </div>
    <ul class="list-sidebar bg-defoult">
        <li>
            <a class="{{ ( $page == 'user' )?'active' : '' }}" href="{{ route( 'user-list' ) }}"><span class="nav-label">Usuarios</span></a>
        </li>
        <li>
            <a href="#" data-toggle="collapse" data-target="#availability" class="collapsed"><span class="nav-label">Disponibilidad</span><span class="fa fa-chevron-left pull-right"></span></a>
            <ul class="sub-menu" id="availability">
                
                @php
                    $residenceTypes = \App\Models\ResidenceType::Where( "statu_id", 1 )->get();
                @endphp

                @foreach( $residenceTypes as $residenceType )
                    <li>
                        <a class="{{ ( $page == $residenceType->url )?'active' : '' }}" href="{{ route( 'availability-detail', $residenceType->url ) }}" data-toggle="collapse" data-target="#residence-type-{{ $residenceType->name }}" class="collapsed"><span class="nav-label">{{ $residenceType->name }}</span></a>

                        <ul class="sub-menu-residence" id="residence-type-{{ $residenceType->name }}">
                            
                            @php
                                $residences = \App\Models\Residence::Where([
                                    "residenceType_id" => $residenceType->id,
                                    "statu_id" => 1
                                ])->get();
                            @endphp

                            @foreach( $residences as $residence )
                                <li>
                                    <a href=""><span class="nav-label">{{ $residence->name }}</span></a>
                                </li>
                            @endforeach
                        </ul>
                    </li>
                @endforeach
            </ul>
        </li>
        <li>
            <a href=""><span class="nav-label">Materiales para ventas</span></a>
        </li>
    </ul>
</aside>