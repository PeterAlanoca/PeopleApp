<% 
    String base_url = "http://localhost/RedSocial/";
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Iniciar session</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!--link rel="stylesheet" type="text/css" href="<%=base_url%>assets/bootstrap/css/bootstrap.css"-->
    <script src="<%=base_url%>assets/js/jquery-latest.min.js"></script>
    <script src="<%=base_url%>assets/js/jquery.backstretch.min.js"></script>    
    <script type="text/javascript">
        $(function(){
            var imagenes = [
                "<%=base_url%>images/login/1.jpg",
                "<%=base_url%>images/login/2.jpg",
                "<%=base_url%>images/login/3.jpg",
                "<%=base_url%>images/login/4.jpg"
            ];

            $(imagenes).each(function(){
            $("body")[0].src = this; 
        });

        var index = 0;

            $.backstretch(imagenes[index], {speed: 500});
            setInterval(function() {
                index = (index >= imagenes.length - 1) ? 0 : index + 1;
                $.backstretch(imagenes[index]);
            }, 3000);
        });
    </script>

</head>

<body>
    
    <%
              
        if(session.getAttribute("usuario") != null && !session.getAttribute("usuario").equals("")){
            response.sendRedirect("menu.jsp");
        } 
            
    %>

<div class="navbar navbar-inverse navbar-fixed-top" style="background-color:black">
    <div class="navbar-header">
      <a class="navbar-brand" href="<?php echo base_url();?>adminweb" style="margin-top:-5px">
        <h2 style="color:white; margin-top: -5px">People App</h2>
      </a>
    </div>
</div>



<div class="container" >
    <div class="row">
        <div class=" col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2  col-md-3 col-md-offset-9">
            <!--PANEL-->
            <div class="alert bg-white" style="background-color: white;margin-top:130px; margin-bottom:0px;">

                <form  id="form1" method="post" action="Login">                     
          <div class="form-group">
                        <center>
                            <h2 style="color:black">People App</h2>
                        </center>
                        <div class="text-center">   
                    </div>
                        
                    </div>  
        
          
          
          <!--CAMPO NOMBRE-->
          <div class="form-group" >
            <div class="input-group input-group-sm">
              <span class="input-group-addon"><i class="glyphicon glyphicon glyphicon-user"></i></span>
              <input type="text" id="username" name="username" placeholder="Ingrese usuario" class="form-control" value="" aria-describedby="sizing-addon3">
            </div>
          </div>    


                <!--CAMPO CONTRASEÑA -->
          <div class="form-group" >
            <div class="input-group input-group-sm">
              <span class="input-group-addon"><i class="glyphicon glyphicon glyphicon-lock"></i></span>
              <input type="password" id="password" name="password" placeholder="Ingrese contraseña" class="form-control" value="">
            </div>
          </div>
          

                    <div class="form-group">
                        <div class="text-center">
                            <a href="<?php echo base_url() ?>adminweb/remember/password">¿Olvidaste tu contraseña?</a>
                        </div>
                    </div>          
                    
                    <!--BOTON-->
                    <div >
                        <button id="btn-registro" type="submit" name="ingresar" value="Registrar" class="btn btn-info btn-sm btn-block" data-toggle="modal" data-target=".alerta">
                        <span class="glyphicon glyphicon-ok-sign"></span>
                        Ingresar
                        </button>
                    </div>

                    
                </form> 
                <br>                

            </div>                      
        </div>      
    </div>
</div>




    
    <script src="<%=base_url%>assets/jquery/jquery.validate.js"></script>
    <script src="<%=base_url%>assets/js/validation/login.js"></script>
    <script src="<%=base_url%>assets/bootstrap/js/bootstrap.js"></script>    
</body>
</html>     

