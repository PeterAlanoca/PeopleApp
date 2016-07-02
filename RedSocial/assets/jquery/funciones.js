$(document).ready(function(){
    //utilizamos el evento keyup para coger la información
    //cada vez que se pulsa alguna tecla con el foco en el buscador
    $(".titulo").keyup(function(){
 		console.log($(this).html());
        //en info tenemos lo que vamos escribiendo en el buscador
        var info = $(this).val();
        //hacemos la petición al método poblaciones del controlador buscador
        //pasando la variable info
        $.post('buscador/noticias',{ info : info }, function(data){
 
            //si autocompletado nos devuelve algo
            if(data != '')
            {
                //en el div con clase contenedor mostramos la info
                $(".muestra_noticias").show();
                $(".muestra_noticias").html(data);
 				
            }else{
                $(".muestra_noticias").html('');
            }
        });
    });
 
 	$(".muestra_noticias").find("a").live('click',function(e){
		e.preventDefault();
		$(".muestra_noticias").hide();
	});
	
	//al hacer submit al formulario comprobamos que
	//los 3 campos no vengan vacíos
	
});
$(function(){
    $("#form").submit(function(){
        
        var titulo = $("#titulo").val();
        //var encabezado = $(".encabezado").val();
        //var cuerpo = $(".cuerpo").val();
        
        if(titulo == '') //&& encabezado == '' && cuerpo == '')
        {
            alert('Escoge algún filtro para tu búsqueda');
                  
        }
    
    });    
});
