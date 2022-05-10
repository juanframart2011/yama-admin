<!DOCTYPE html>
<html lang="es">
    @include( "layout.helper.head" )

    <body>

        @include( "layout.helper.header" )

        <div class="container-fluid">

            @yield( "content" )

            @include( "layout.helper.footer" )        
            
            @include( "layout.helper.script" )
        </div>
    </body>
</html>