<!DOCTYPE html>
<html lang="es">
        
    @include( "layout.helper.head" )

    <body>
        
        @include( "layout.helper.header" )

        <main>

            @yield( "content" )
        </main>

        @include( "layout.helper.footer" )

        @include( "layout.helper.script" )
    </body>
</html>