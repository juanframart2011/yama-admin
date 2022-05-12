$( document ).ready( function(){

    $( ".btn-delete" ).click( function( event ){

        event.preventDefault();
        let userId = $( this ).data( "user" );

        var result = confirm( "Deseas eliminar el usuario: " + $( this ).data( "name" ) );
        if( result == true ){
            
            window.location.href = baseUrl + '/admin/user/delete/' + userId;
        }
    });
});

const User = function() {

    const email_validate  =   /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
    let validateSamePassword = true;
    
    const name = document.querySelector( '#name' ),
        last_name = document.querySelector( '#last_name' ),
        email = document.querySelector( '#email' ),
        password = document.querySelector( '#password' ),
        rePassword = document.querySelector( '#re-password' ),
        rol = document.querySelector( '#rol' ),
        alerta = document.querySelector( '.alerta-mensaje-crear' ),
        alerta_texto = document.querySelector( '#alerta-texto-crear' ),
        formUser = document.querySelector( '#form-user' ),
        formUpdatePassword = document.querySelector( '#form-update-password' ),
        btnAddUser = document.querySelector( '.btn-add-user' ),
        btnUpdateUser = document.querySelector( '.btn-update-user' ),
        btnUpdatePassword = document.querySelector( '.btn-update-password' );

    function agregar(){

        _validatePasswords();

        $( "#form-user" ).submit( function( event ){

            event.preventDefault();
            
            _clearInputs();
            btnAddUser.innerHTML = "Creando Usuario";
            btnAddUser.disabled = true;
            let msgText = "";
            let error = false;
            const url = document.querySelector( "#form-user" ).action;
            
            alerta_texto.innerHTML='';

            if( !validateSamePassword ){
                
                msgText += "<br> Las contraseñas no concuerdan";
                error = true;
            }

            if( name.value == '' ){
                
                name.classList.add('error');
                msgText += "<br> El nombre es obligatorio";
                error = true;
            }
            if( last_name.value == '' ){
                
                last_name.classList.add('error');
                msgText += "<br> El apellido es obligatorio";
                error = true;
            }
            if( password.value == '' ){
                
                password.classList.add('error');
                msgText += "<br> La contraseña es obligatorio";
                error = true;
            }
            if( rePassword.value == '' ){
                
                msgText += "<br> La confirmación de contraseña es obligatorio";
                rePassword.classList.add('error');
                error = true;
            }
            if( profile.value == '' ){
                
                msgText += "<br> El puesto es obligatorio";
                profile.classList.add('error');
                error = true;
            }
            if( rol.value == '' ){
                
                msgText += "<br> El perfil es obligatorio";
                rol.classList.add('error');
                error = true;
            }
            if( email.value == '' ){
                
                msgText += "<br> El email es obligatorio";
                email.classList.add('error');
                error = true;
            }
            if( !email_validate.test( email.value ) ){

                msgText += "<br> El email no esta en un formato permitido";
                email.classList.add('error');   
                error = true;
            }

            if( !error ){

                let meta = document.getElementsByTagName('meta'), 
                    datos = $( '#form-user' ).serialize();   
                
                $.ajax({
                    type: "POST",
                    url: url,
                    data: datos,
                    headers: {
                        'X-CSRF-TOKEN': meta['csrf-token'].getAttribute('content')
                    },
                    success: function(datos) {

                        if( datos.result == 1 ){
                            
                            formUser.reset();

                            alerta.classList.remove('alert-light-danger');
                            alerta.classList.add('alert-light-success');
                            alerta_texto.innerHTML= datos.message;
                            alerta.style.display = "block";
                            window.location.reload();
                        }
                        else{

                            alerta.classList.remove('alert-light-success');
                            alerta.classList.add('alert-light-danger');
                            alerta_texto.innerHTML= datos.message;

                            alerta.style.display = "block";   
                        }
                    },
                    error: function( error ){

                        console.warn( error );
                        btnAddUser.innerHTML = "Agregar";
                        btnAddUser.disabled = false;
                    }
                });

                btnAddUser.innerHTML = "Agregar";
                btnAddUser.disabled = false;
            }
            else{

                btnAddUser.innerHTML = "Agregar";
                btnAddUser.disabled = false;
                alerta.classList.remove('alert-light-success');
                alerta.classList.add('alert-light-danger');
                alerta_texto.innerHTML = msgText;
                alerta.style.display = "block";
            }
        });
    }

    function _clearInputs(){

        name.classList.remove('error');
        email.classList.remove('error');
        password.classList.remove('error');
        rePassword.classList.remove('error');
        rol.classList.remove('error');
    }

    function _functionValidatePassowrds(){

        const helperPassword = document.querySelector( ".helper-password" ),
            helperRePassword = document.querySelector( ".helper-repassword" );

        validateSamePassword = true;
        let helperPasswordtext = "",
            helperRePasswordtext = "";
        password.classList.remove('error');
        rePassword.classList.remove('error');

        if( password.value != rePassword.value ){

            validateSamePassword = false;
            helperPasswordtext = "Las Contraseñas no son iguales";
            helperRePasswordtext = "Las Contraseñas no son iguales";
        }
        if( ( password.value.length < 5 || password.value.length > 11 ) || 
            ( rePassword.value.length < 5 || rePassword.value.length > 11 ) 
        ){

            validateSamePassword = false;
            helperPasswordtext += "\nLas Contraseñas debe ser mayor a 5, menos a 11 caracteres";
            helperRePasswordtext += "\nLas Contraseñas debe ser mayor a 5, menos a 11 caracteres";
        }

        helperPassword.innerHTML = helperPasswordtext;
        if( !validateSamePassword ){

            password.classList.add('error');
            rePassword.classList.add('error');
        }
    }

    function _validatePasswords(){

        password.addEventListener( 'keyup', () =>{

            _functionValidatePassowrds();
        });

        rePassword.addEventListener( 'keyup', () =>{

            _functionValidatePassowrds();
        });
    }
    
    function update(){

        formUser.addEventListener('submit', ( event ) =>{
            
            event.preventDefault();
            
            btnUpdateUser.innerHTML = "Modificando Datos";
            btnUpdateUser.disabled = true;
            let msgText = "";
            let error = false;
            const url = document.querySelector( "#form-user" ).action;
            
            if( name.value == '' ){
                
                name.classList.add('error');
                msgText += "<br> El nombre es obligatorio";
                error = true;
            }
            if( rol.value == '' ){
                
                msgText += "<br> El rol es obligatorio";
                rol.classList.add('error');
                error = true;
            }
            if( email.value == '' ){
                
                msgText += "<br> El email es obligatorio";
                email.classList.add('error');
                error = true;
            }
            if( !email_validate.test( email.value ) ){

                msgText += "<br> El email no esta en un formato permitido";
                email.classList.add('error');   
                error = true;
            }

            if( !error ){

                let meta = document.getElementsByTagName('meta'), 
                    datos = $( '#form-user' ).serialize();   
                
                $.ajax({
                    type: "POST",
                    url: url,
                    data: datos,
                    headers: {
                        'X-CSRF-TOKEN': meta['csrf-token'].getAttribute('content')
                    },
                    success: function(datos) {

                        if( datos.result == 1 ){
                            
                            _messageDeleteSuccess( 'Usuario Modificado', 'success' );
                        }
                        else{

                            _messageDeleteSuccess( datos.message, 'warning' );
                        }
                    },
                    error: function( error ){

                        console.warn( error );   
                    }
                });

                btnUpdateUser.innerHTML = "Modificar Datos";
                btnUpdateUser.disabled = false;
            }
            else{

                _messageDeleteSuccess( msgText, 'warning' );
                btnUpdatePassword.innerHTML = "Modificar Contraseña";
                btnUpdatePassword.disabled = false;
            }
        });
    }

    function updatePassword(){

        _validatePasswords();

        formUpdatePassword.addEventListener('submit', ( event ) =>{
            
            event.preventDefault();
            
            btnUpdatePassword.innerHTML = "Modificando Contraseña";
            btnUpdatePassword.disabled = true;
            let msgText = "";
            let error = false;
            const url = document.querySelector( "#form-update-password" ).action;
            
            if( !validateSamePassword ){
                
                msgText += "<br> Las contraseñas no concuerdan";
                error = true;
            }

            if( password.value == '' ){
                
                password.classList.add('error');
                msgText += "<br> La contraseña es obligatorio";
                error = true;
            }
            if( rePassword.value == '' ){
                
                msgText += "<br> La confirmación de contraseña es obligatorio";
                rePassword.classList.add('error');
                error = true;
            }
            
            if( !error ){

                let meta = document.getElementsByTagName('meta'), 
                    datos = $( '#form-update-password' ).serialize();   
                
                $.ajax({
                    type: "POST",
                    url: url,
                    data: datos,
                    headers: {
                        'X-CSRF-TOKEN': meta['csrf-token'].getAttribute('content')
                    },
                    success: function(datos) {

                        if( datos.result == 1 ){
                            
                            _messageDeleteSuccess( 'Contraseña Modificada', 'success' );
                            document.getElementById( 'form-update-password' ).reset();
                        }
                        else{

                            _messageDeleteSuccess( datos.message, 'warning' );
                        }

                        btnUpdatePassword.innerHTML = "Modificar Contraseña";
                        btnUpdatePassword.disabled = false;
                    },
                    error: function( error ){

                        console.warn( error );
                        btnUpdatePassword.innerHTML = "Modificar Contraseña";
                        btnUpdatePassword.disabled = false;
                    }
                });
            }
            else{

                _messageDeleteSuccess( msgText, 'warning' );
                btnUpdatePassword.innerHTML = "Modificar Contraseña";
                btnUpdatePassword.disabled = false;
            }
        });
    }    

    return {
        detail: function() {
            update(); 
            updatePassword();          
        },
        init: function() {
            agregar();
        }
    }
}();