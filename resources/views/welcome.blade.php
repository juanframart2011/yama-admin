<!DOCTYPE html>
<html lang="es">

    @section( "cssExtra" )

        <link href="{{ asset( 'css/login.css' ) }}" rel="preload" as="style">
        <link href="{{ asset( 'css/login.css' ) }}" rel="stylesheet">
    @endsection

    @include( "layout.helper.head" )

    <body>
        
        @include( "layout.helper.header" )

        <main>

            <section class="login">
                
                <div class="row">
                    <div class="col-md-3 offset-md-8">
                        
                        <section class="form-login" id="contact">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-12 col-md-12 col-lg-12" data-aos="fade-right" data-aos-duration="2500">
                                        <h2 class="contact-title main-title">BIENVENIDO A <b>TU ESPACIO</b></h2>
                                    </div>                            

                                    <form action="{{ route( 'login' ) }}" method="post" autocomplete="on" class="col-12 col-md-12 col-lg-12" id="contact-form" novalidate>

                                        <div class="row">
                                            <div class="col-8 col-md-8 col-lg-8 text-center">
                                                
                                                <div class="form-alert-login mb-1"></div>
                                            </div>
                                        </div>

                                        @if( !$errors->isEmpty() )
                                            
                                            <div class="row">
                                                <div class="col-8 col-md-8 col-lg-8 text-center alert alert-danger mb-4" role="alert">
                                                    
                                                    @foreach ( $errors->all() as $error )
                                                        <strong>{{$error}}</strong><br>
                                                    @endforeach
                                                </div>
                                            </div>
                                        @endif

                                        @csrf
                                        <div class="row">
                                            <div class="col-8 col-md-8 col-lg-8">
                                                
                                                <div class="form-group">
                                                    <input name="user" type="email" id="user" class="form-control input-control" placeholder="Usuario *" data-name="Usuario">
                                                </div>
                                            </div>                                                    
                                        </div>
                                        <div class="row">
                                            <div class="col-8 col-md-8 col-lg-8">
                                                
                                                <div class="form-group">
                                                    <input name="password" type="password" id="password" class="form-control input-control" placeholder="Contrase??a *" data-name="Contrase??a">
                                                </div>
                                            </div>                                                    
                                        </div>

                                        <div class="row">
                                            <div class="col-12 col-sm-12 col-lg-12 order-1 order-sm-2">
                                                <button type="submit" id="btn-login" class="form-control submit-control">ENTRAR</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </section>  
                    </div>
                </div>
            </section>
        </main>

        @include( "layout.helper.footer" )

        @include( "layout.helper.script" )

        <script src="{{ asset( 'js/login.js' ) }}"></script>
    </body>
</html>