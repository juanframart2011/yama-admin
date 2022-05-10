<!DOCTYPE html>
<html lang="es">
    @include( "layout.helper.head" )

    <body>

        <div class="container-fluid">       

            @include( "layout.helper.header" )

            @yield( "content" )

            @include( "layout.helper.footer" )        
            
            @include( "layout.helper.script" )
        </div>
    </body>
</html>