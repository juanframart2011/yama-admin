$( document ).ready( function(){

    $( ".btn-delete" ).click( function( event ){

        event.preventDefault();
        let userId = $( this ).data( "user" );

        var result = confirm( "Deseas eliminar el usuario: " + $( this ).data( "name" ) );
        if( result == true ){
            
            $.ajax({
                url: baseUrl + '/user/delete',
                type: 'POST',
                dataType: 'json',
                data: {param1: 'value1'},
            })
            .done(function() {
                console.log("success");
            })
            .fail(function( error ){
                
                console.warn( "error => ", error );
            });
        }
    });

	$( "#contact-form" ).submit( function( event ){

		event.preventDefault();

        let user = $( "#user" );
        let password = $( "#password" );
        let formAlertLogin = $( ".form-alert-login" );
        let msgText = "";
        let validateForm = true;

        $( "#user, #password" ).removeClass( "is-invalid" );
        formAlertLogin.html( '' ).removeClass( 'alert-danger, alert-success' ).addClass( "hidden" );

        $( "#btn-login" ).html( 'ACCEDIENDO <i class="fa fa-refresh fa-spin" aria-hidden="true"></i>' ).attr( "disabled", true );

        if( !user.val() ){

            validateForm = false;
            msgText += "El usuario es obligatorio<br>";
            user.addClass( 'is-invalid' );
        }
        if( !password.val() ){

            validateForm = false;
            msgText += "La contraseña es obligatoria<br>";
            password.addClass( 'is-invalid' );
        }

        if( validateForm ){
            
            document.getElementById( "contact-form" ).submit();
        }
        else{

            $( "#btn-login" ).html( 'ENTRAR' ).attr( "disabled", false );
            formAlertLogin.html( msgText ).addClass( 'alert-danger' ).removeClass( "hidden" );
        }
	});
});