<!DOCTYPE html>
<html lang="en">

    @include( "layout.helper.head" )
    <body>

        @include( "layout.helper.header" )
        
        <main class="container-fluid">
            
            <div class="row">

                @include( "layout.helper.sidebar" )

                <section class="col-md-10 content-data">@yield( "content" )</section>
            </div>
        </main>

        @include( "layout.helper.footer" )

        @include( "layout.helper.script" )

        <script>
            $(document).ready(function(){
                $('.button-left').click(function(){
                    console.info( "open menu" );
                    $('.sidebar').toggleClass('fliph');
                });
            });
        </script>
    </body>
</html>