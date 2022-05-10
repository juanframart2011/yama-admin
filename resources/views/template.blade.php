<!DOCTYPE html>
<html lang="es">
        
    @include( "layout.helper.head" )

    <body>
        
        @include( "layout.helper.header" )

        <main>

            <section class="login">
                
            </section>


            <section class="links">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-lg-11 col-xl-8">
                            <div class="row">
                                <div class="col-12 col-sm-4 line">
                                    <div class="content">
                                        <h2 class="links-title">DESARROLLOS</h2>
                                        <ul class="list" id="footer-corporative">
                                            <li class="list-item"> <span>Corporativos:</span></li>
                                            <!-- dynamically generated with javascript (main.js) -->
                                        </ul>
                                        <ul class="list" id="footer-residential">
                                            <li class="list-item"> <span>Residenciales:</span></li>
                                            <!-- dynamically generated with javascript (main.js) -->
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>

        @include( "layout.helper.footer" )

        <!-- Jquery Core Scripts -->
        <script src="dist/js/jquery.min.js"></script>
        
        <!-- Aos Scripts -->
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script src="dist/js/mmenu-light.js"></script>
        <script src="dist/js/main.js"></script>
        <script src="dist/js/home.js"></script>
    </body>
</html>