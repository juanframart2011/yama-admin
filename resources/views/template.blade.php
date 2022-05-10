<!DOCTYPE html>
<html lang="es">
        
    @include( "layout.helper.head" )

    <body>
        
        @include( "layout.helper.header" )

        <main>

            <section class="login">
                    
                <section class="contact" id="contact">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-12 col-md-4 col-lg-3 line" data-aos="fade-right" data-aos-duration="2500">
                                <h2 class="contact-title main-title">CONTACTO</h2>
                            </div>
                            <div class="col-12 col-md-8 col-lg-7">

                                <form action="" method="post" autocomplete="off" class="col-12 col-lg-11" id="contact-form" target="refresh" data-subject="Contacto" novalidate>
                                    <div class="contact-form__content">
                                        <div class="form-group">
                                            <input name="name" type="text" id="contact-name" class="form-control input-control" placeholder="Nombre completo *" data-name="Nombre">
                                        </div>
                                        <div class="form-group">
                                            <input name="email" type="email" id="contact-email" class="form-control input-control" placeholder="Correo electronico *" data-name="Email">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-sm-4 col-lg-3 order-1 order-sm-2">
                                            <input type="submit" value="ENVIAR" class="form-control submit-control">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
            </section>
        </main>

        @include( "layout.helper.footer" )

        @include( "layout.helper.script" )
    </body>
</html>