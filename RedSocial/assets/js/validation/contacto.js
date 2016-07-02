var aux01 = '<div class="alert alert-danger" role="alert"><label><i class="glyphicon glyphicon-warning-sign"></i>&nbsp&nbsp¡';
var aux02 = '!</label></div>';
var aux03 = '<div class="alert alert-danger" role="alert"><label>¡';


$(document).ready(function() {

    $('#form3').validate({
        rules: {
            empresa: {
                character: true,
                required: true,
                maxlength: 40,
                minlength: 3,
                alpha: true
            },

            correo: {
                character: true,
                required: true,
                ismail: true
            },

            telefono: {
                character: true,
                required: true,
                minlength : 6,
                maxlength: 40,
                
            },

            pais: {
                character: true,
                required: true,
                maxlength: 40,
                minlength: 3
            },

            ciudad: {
                character: true,
                required: true,
                maxlength: 60,
                minlength: 3
            },

            calle: {
                character: true,
                required: true,
                maxlength: 60,
                minlength: 3
            },

            descripcion: {
                character: true,
                required: true,
                maxlength: 80,
                minlength: 3
            },

            url: {
                required: true
            }

        },
       
        submitHandler: function(form){
            form.submit();
        },
        
        messages: {

            empresa: {
                required: aux01+'Debe poner el nombre de la empresa'+aux02,
                character: aux01+'Caracter invalido'+aux02,
                maxlength: aux01+'Maximo 40 caracteres'+aux02,
                minlength: aux01+'Debe ingresar al menos 3 caracteres'+aux02,
                alpha: aux01+'Solo puede ingresar letras'+aux02,      
            },

            correo: {
                character: aux01+'Caracter invalido'+aux02,
                required: aux01+'Debe poner su correo'+aux02,
                ismail: aux01+'Ingrese un correo valido'+aux02
            },

            telefono: {
                character: aux01+'Caracter invalido'+aux02,
                required: aux01+'Debe ingresar su telefono'+aux02,
                minlength : aux01+'Debe ingresar al menos 7 caracteres'+aux02,
                maxlength: aux01+'Maximo 11 caracteres'+aux02,
            },

            pais: {
                required: aux01+'Este campo de requerido'+aux02,
                character: aux01+'Caracter invalido'+aux02,
                maxlength: aux01+'Maximo 40 caracteres'+aux02,
                minlength: aux01+'Debe ingresar al menos 3 caracteres'+aux02,
            },

            ciudad: {
                required: aux01+'Este campo de requerido'+aux02,
                character: aux01+'Caracter invalido'+aux02,
                maxlength: aux01+'Maximo 60 caracteres'+aux02,
                minlength: aux01+'Debe ingresar al menos 3 caracteres'+aux02,  
            },

            calle: {
                required: aux01+'Este campo de requerido'+aux02,
                character: aux01+'Caracter invalido'+aux02,
                maxlength: aux01+'Maximo 60 caracteres'+aux02,
                minlength: aux01+'Debe ingresar al menos 3 caracteres'+aux02,  
            },

            descripcion: {
                required: aux01+'Este campo de requerido'+aux02,
                character: aux01+'Caracter invalido'+aux02,
                maxlength: aux01+'Maximo 80 caracteres'+aux02,
                minlength: aux01+'Debe ingresar al menos 3 caracteres'+aux02,     
            },

            url: {
                required: aux01+'Este campo de requerido'+aux02
            }

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


    $('#form4').validate({
        rules: {
            url: {
                required: true
            }
        },
       
        submitHandler: function(form){
            form.submit();
        },
        
        messages: {
            url: {
                required: aux01+'Este campo de requerido'+aux02
            }
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
        return this.optional( element ) || /^[a-zA-Z0-9.!()#$,%&*+\@ñÑ /=?^_{|}~-]+$/.test( value );
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