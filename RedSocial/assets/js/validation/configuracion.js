var aux01 = '<div class="alert alert-danger" role="alert"><label><i class="glyphicon glyphicon-warning-sign"></i>&nbsp&nbsp¡';
var aux02 = '!</label></div>';
var aux03 = '<div class="alert alert-danger" role="alert"><label>¡';


$(document).ready(function() {

    $('#form2').validate({
        rules: {
            nom_user: {
                character: true,
                required: true,
                maxlength: 40,
                minlength: 3,
                alpha: true
            },

            password: {
                character: true,
                required: true,
                minlength : 8,
                maxlength: 30
                
            },

            password1: {
                character: true,
                required: true,
                minlength : 8,
                maxlength: 30
                
            },

            password2: {
                character: true,
                minlength : 8,
                maxlength: 30,
                equalTo: "#password1"
            },

            correo: {
                character: true,
                required: true,
                ismail: true
            },

            nombre_banco: {
                character: true,
                required: true,
                maxlength: 40,
                minlength: 3,
                alpha: true
            },

            nro_cuenta: {
                character: true,
                required: true,
                minlength : 8,
                maxlength: 30
                
            },

            nombre_destinatario: {
                character: true,
                required: true,
                maxlength: 40,
                minlength: 3,
                alpha: true
            }


        },
       
        submitHandler: function(form){
        
            form.submit();
        },
        
        messages:
        {
            nom_user: {
                required: aux01+'Debe introducir su nombre de usuario'+aux02,
                character: aux01+'Caracter invalido'+aux02,
                maxlength: aux01+'Maximo 40 caracteres'+aux02,
                minlength: aux01+'Minimo 3 caracteres'+aux02,
                alpha: aux01+'Usuario incorrecto '+aux02,      
            },

            password: {
                character: aux01+'Caracter invalido'+aux02,
                required: aux01+'Debe introducir su contraseña'+aux02,
                minlength : aux01+'Minimo 8 caracteres'+aux02,
                maxlength: aux01+'Maximo 40 caracteres'+aux02
            },
            
            password1: {
                character: aux01+'Caracter invalido'+aux02,
                required: aux01+'Debe introducir su contraseña'+aux02,
                minlength : aux01+'Debe ingresar al menos 8 caracteres'+aux02,
                maxlength: aux01+'Maximo 40 caracteres'+aux02
            },

            password2: {
                character: aux01+'Caracter invalido'+aux02,
                minlength : aux01+'Debe ingresar al menos 8 caracteres'+aux02,
                maxlength: aux01+'Maximo 40 caracteres'+aux02,
                equalTo: aux01+'La contraseña no coincide'+aux02
            },

            correo: {
                character: aux01+'Caracter invalido'+aux02,
                required: aux01+'Debe introducir su correo'+aux02,
                ismail: aux01+'Ingrese un correo valido'+aux02
            },

            nombre_banco: {
                required: aux01+'Debe introducir su nombre de la entidad bancaria'+aux02,
                character: aux01+'Caracter invalido'+aux02,
                maxlength: aux01+'Maximo 40 caracteres'+aux02,
                minlength: aux01+'Minimo 3 caracteres'+aux02,
                alpha: aux01+'Usuario incorrecto '+aux02,      
            },

            nro_cuenta: {
                character: aux01+'Caracter invalido'+aux02,
                required: aux01+'Debe introducir su numero de cuenta'+aux02,
                minlength : aux01+'Minimo 8 caracteres'+aux02,
                maxlength: aux01+'Maximo 40 caracteres'+aux02
            },

            nombre_destinatario: {
                required: aux01+'Debe introducir su nombre de destinatario'+aux02,
                character: aux01+'Caracter invalido'+aux02,
                maxlength: aux01+'Maximo 40 caracteres'+aux02,
                minlength: aux01+'Minimo 3 caracteres'+aux02,
                alpha: aux01+'Usuario incorrecto '+aux02,      
            }


           
        }, 

        highlight: function(element){
            //$(element).parent().removeClass('has-success').addClass('has-error');
        },

        success: function(element){
            //$(element).parent().removeClass('has-error').addClass('has-success');
        },

        errorElement: "form-group",

        errorPlacement: function(error, element) {
            element.after(error);
            if ( element.is(":radio") ) {
                error.appendTo( element.parents('.form-group') );
            }
            else { 
                error.insertAfter( element );
            }
            if (element.is(":text") ) {
                error.insertAfter(element.parents('.input-group'));
            }else { 
                error.insertAfter( element );
            }
        }        
    });

    jQuery.validator.addMethod("character", function(value, element) {
        return this.optional( element ) || /^[a-zA-Z0-9.!#$%&*+\@ñÑ /=?^_{|}~-]+$/.test( value );
    }, '<font color="red">Caracter invalido</font>');

    jQuery.validator.addMethod("ismail", function(value, element) {
        return this.optional( element ) || /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/.test( value );
    }, '<font color="red">NOOOOOOOOOOO</font>');

    jQuery.validator.addMethod("alpha", function(value, element) {
        return this.optional( element ) || /^[a-zA-Z\sñÑ]+$/.test( value );
    }, 'Solo letras.');

    jQuery.validator.addMethod("equalstoString", function(value, element, param) { 
        return this.optional(element) || value !== param; 
    }, "noooooooooo");

    jQuery.validator.addMethod('reCaptchaMethod', function (value, element, param) {
            if (grecaptcha.getResponse() == ''){
                return false;
            } else {
                // I would like also to check server side if the recaptcha response is good
                return true
            }
    }, 'You must complete the antispam verification');

});