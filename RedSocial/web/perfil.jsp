<%-- 
    Document   : menu
    Created on : 06-jun-2016, 0:19:43
    Author     : Peter
--%>
<%@page import="model.Publicacion"%>
<%@page import="model.PublicacionModel"%>
<%@page import="model.UsuarioModel"%>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<% 
    String base_url = "http://localhost/RedSocial/";
    String id_usuario1 = "";
    String nombre = "";
    String apellido = "";
    String nameuser = "";
    String password = "";
    String correo = "";
    String foto = "";
    String siguiendo = "";
    String seguidores = "";
    String publicaciones = "";
    
    
    String nombre2 = "";
    String apellido2 = "";
    String nameuser2 = "";
    String password2 = "";
    String correo2 = "";
    String foto2 = "";
    String siguiendo2 = "";
    String seguidores2 = "";
    String publicaciones2 = "";
%>

<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%
     
    if (session != null) {
        if (session.getAttribute("usuario") != null) {
            
            Usuario persona = new Usuario();
            UsuarioModel usuarioModel = new UsuarioModel();
            List<Usuario>lista = usuarioModel.getAll();
    
            for(Usuario usuario: lista){ 
                int id = Integer.parseInt((String)session.getAttribute("id_usuario")); 
                if (id == usuario.getId()) {
                    id_usuario1 = id+"";
                    persona = usuario;
                }
            }
            
            nombre = persona.getNombre();
            apellido = persona.getApellido();
            nameuser = persona.getUsername();
            password = persona.getPassword();
            correo = persona.getCorreo();
            foto = persona.getFoto();
            siguiendo = persona.getSiguiendo();
            seguidores = persona.getSeguidores();
            
            int id_user = Integer.parseInt((String)session.getAttribute("id_usuario")); 
            
            PublicacionModel pm = new PublicacionModel();
            publicaciones = pm.getCount(id_user);
            
            
            
            Usuario persona2 = new Usuario();
            UsuarioModel usuarioModel2 = new UsuarioModel();
            List<Usuario>lista2 = usuarioModel.getAll();
    
            for(Usuario usuario2: lista2){ 
                int id2 = Integer.parseInt((String)request.getParameter("id")); 
                if (id2 == usuario2.getId()) {
                   
                    persona2 = usuario2;
                }
            }
            
            nombre2 = persona2.getNombre();
            apellido2 = persona2.getApellido();
            nameuser2 = persona2.getUsername();
            password2 = persona2.getPassword();
            correo2 = persona2.getCorreo();
            foto2 = persona2.getFoto();
            siguiendo2 = persona2.getSiguiendo();
            seguidores2 = persona2.getSeguidores();
            
            int id_user2 = Integer.parseInt((String)request.getParameter("id")); 
            
            PublicacionModel pm2 = new PublicacionModel();
            publicaciones2 = pm.getCount(id_user2);
            
            
            
        } else {
            response.sendRedirect("index.jsp");
	}
    }

                
    
                                        
%>
<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>People App</title>

    <!--link rel="stylesheet" type="text/css" href="<%=base_url%>assets/bootstrap/css/bootstrap.css"-->
    
    <!--link href="<%=base_url%>assets/bootstrap/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"-->
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

    
    <script src="<%=base_url%>assets/jquery/jquery.js"></script>
    <script src="<%=base_url%>assets/bootstrap/js/bootstrap.js"></script>
    
    <link href="http://localhost/blog/star-rating/fileinput.css" media="all" rel="stylesheet" type="text/css" />
    <script src="http://localhost/blog/star-rating/fileinput.js" type="text/javascript"></script>
    <script src="http://localhost/blog/star-rating/es.js" type="text/javascript"></script>


    <style type="text/css">
    .alert-success{
        background-color: white;
    }
    </style>

</head>

<body class="bg-success">
    <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.6&appId=902167183146279";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>




    
    <!-- Barra de navegacion -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container ">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav" style="font-size:13px">
                    <li>
                        <a href="menu.jsp">
                            <i style="font-size:16px" class="fa fa-home" aria-hidden="true"></i>
                            Inicio
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-bell" aria-hidden="true"></i>
                            Notificaciones
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-envelope-o" aria-hidden="true"></i>
                            Mensajes
                        </a>
                    </li>                  
                </ul>

                <div class="col-sm-6 col-md-6 pull-right">
                    <div class="col-md-7 col-sm-12 col-xs-12">
                        <form class="" role="search" style="margin-top:8px">
                            <div class="input-group ">
                                <input type="text" class="form-control" placeholder="Buscar" name="srch-term" id="srch-term">
                                <div class="input-group-btn">
                                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <button data-toggle="modal" data-target="#pub" type="button" title="Eliminar" style="margin-top:8px" class="btn btn-success btn-block">
                            <i class="fa fa-bolt" aria-hidden="true"></i>
                            Publicar
                        </button>
                        
                    
                         
                    </div>
                    
                   
                    
                    <div class="col-md-2 col-sm-12 col-xs-12">
                        <center>
                            <li class="dropdown" style="margin-top:-11px">
                                <a href="#"  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <img  width="58%" src="<%=base_url%>web/files/<%=foto%>" class="img-responsive img-rounded"></span></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a style="color:black;" href="perfil.jsp?id=<%=id_usuario1%>">
                                            <label>
                                                <i class="fa fa-user" aria-hidden="true"></i>
                                                Ver perfil
                                            </label>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <label>
                                                <i class="fa fa-cog fa-spin" aria-hidden="true"></i>
                                                Configuracion
                                            </label>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="Logout">
                                            <label>
                                                <i class="fa fa-reply" aria-hidden="true"></i>
                                                Cerrar sesion 
                                            </label>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </center>
                    </div>                    
                </div>
            </div>

            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    
    <div class="container-fluid" style="margin-top: 50px;padding:0px">
             
        <div class="row-fluid" style="padding:0px;min-height: 400px;max-height: 400px">
            <div class="col-md-12" style="padding:0px;">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="<%=base_url%>web/files/1.jpg"  style="min-width: 100%; max-height: 400px;min-height: 400px; " alt="...">
                        </div>
                        <div class="item">
                            <img src="<%=base_url%>web/files/2.jpg" style="min-width: 100%; max-height: 400px; min-height: 400px" alt="...">
                        </div>
                        <div class="item">
                            <img src="<%=base_url%>web/files/3.jpg" style="min-width: 100%; max-height: 400px; min-height: 400px" alt="...">
                        </div>
                    </div>
                </div>
                <div class="col-md-12" style="background-color: white; color: black">
                    <br>                    <br>

                </div>
            </div>
        </div>
    </div>
    
    <div class="container" style="margin-top: 15px">
             
        <div class="row">
            <div class="col-md-3 ">
                <div class="row" style="margin-top:10px">
                    <div style="padding:0px" class="col-md-12 bg-success">
                        
                        <div>
                            <div style="background-color:white;margin-top:-145px;padding:7px;border-radius:6px" class="col-xs-8 bg-info">
                                <img style="" src="<%=base_url%>web/files/<%=foto2%>" class="img-responsive img-rounded">
                            </div>
                            
                            <div class="col-xs-7 col-sm-12 col-md-12" style="margin-left:-10px">
                                <h4 style="margin-top:12px"><b style="color:black;"><a style="color:black;" href="perfil.jsp?id=<%=id_usuario1%>"><%=nombre2+" "+apellido2%></a></b></h4>
                                <p style="margin-top:-12px; font-size:12px" class="text-muted">@<%=nameuser2%></p>
                            </div>
                        </div>
                        <div class="row" style="padding-left:10px; padding-left:10px; padding-right:10px">
                            <div class="col-md-4 col-xs-4 col-sm-4">
                                <p style="margin-top:0px; font-size:10px" class="text-muted">PUBLICACIONES</p>
                                <h4 style="margin-top:-10px"><b class="text-success"><%=publicaciones2%></b></h4>
                            </div>
                            <div class="col-md-4 col-xs-4 col-sm-4">
                                <p style="margin-top:0px; font-size:10px" class="text-muted">SIGUIENDO</p>
                                <h4 style="margin-top:-10px"><b class="text-success"><%=siguiendo2%></b></h4>
                            </div>
                            <div class="col-md-4 col-xs-4 col-sm-4">
                                <p style="margin-top:0px; font-size:10px" class="text-muted">SEGUIDORES</p>
                                <h4 style="margin-top:-10px"><b class="text-success"><%=seguidores2%></b></h4>
                            </div>
                        </div>
                        
                    </div>
                    
                </div>
            </div>
                     
            <div class="col-md-6">
                <div class="row" style="padding-left:15px; padding-right:15px;">
                    <div class="col-md-12 alert alert-success" >
                        
                        <div class="col-md-12" style="padding:0px">
                            <%
                                String id_userr = (String)request.getParameter("id");
                                int id_user22 = Integer.parseInt(id_userr);

                                UsuarioModel auxUsuarioModel = new UsuarioModel();
                                PublicacionModel publicacionModel = new PublicacionModel();
                                List<Publicacion>lista = publicacionModel.getAll();
                                for(Publicacion publicacion: lista){ 
                                   
                                    List<Usuario>listaUser = auxUsuarioModel.getAll();
                                    for(Usuario usuario: listaUser){
                                        if(usuario.getId()==publicacion.getIdUsuario() && id_user22==usuario.getId()){
                                            String idUsuarioAux = usuario.getId()+"";
                                            String idPublicacion = publicacion.getId()+"";
                                            String fotoAux = usuario.getFoto();
                                            String nombreCompleto = usuario.getNombre()+" "+usuario.getApellido();
                                            String nameusuario = usuario.getUsername();
                                            String fechaAux = publicacion.getFecha();
                                            String contenido = publicacion.getContenido();
                                           
                                            String contenidoAux = "";
                                            String format = "";
                                            if (contenido.length()>3){
                                                format =  contenido.substring(contenido.length()-3, contenido.length()-0);
                                                
                                            } else {
                                                contenidoAux = contenido;
                                            }
                                           
                                            if (format.equals("mp4") || format.equals("wmp")){
                                                contenidoAux = "<div align='center'><object class='embed-responsive-item'><video width='100%' controls loop ><source src='"+base_url+"web/files/"+contenido+"'/></video></object> </div>";
                                            }
                                            
                                            if (format.equals("mp3") || format.equals("mp2")){
                                                contenidoAux = "<audio src='"+base_url+"web/files/"+contenido+"' controls></audio>";
                                            } 
                                            
                                            if (format.equals("jpg") || format.equals("gif") || format.equals("png")){
                                                contenidoAux = "<img src='"+base_url+"web/files/"+contenido+"' class='img-responsive img-rounded' alt='Responsive image'>";
                                            }
                                            
                                            if (!format.equals("jpg") && !format.equals("gif") && !format.equals("png")
                                                    && !format.equals("mp4") && !format.equals("wmp") 
                                                    && !format.equals("mp3") && !format.equals("mp2")){
                                                contenidoAux = "<p style='color:black'>"+contenido+"</p>";
                                            }
                                           
                               
                            %>
                            
                            <div class="row" style="margin-top:-7px; margin-bottom:-12px;margin-right:-30px">
                                <div class="col-md-2 col-sm-2 col-xs-2">
                                    <img style="" width="50px" src="<%=base_url%>web/files/<%=fotoAux%>" class="img-responsive img-rounded">
                                </div>
                               <div class="col-md-10 col-sm-10 col-xs-10" style="margin-left:-30px;">
                                    <h5 style="margin-top:0px;" class="" >
                                        <a class="text-success"  href="perfil.jsp?id=<%=idUsuarioAux%>">
                                            <b style="color:black"><%=nombreCompleto%></b>
                                        </a>
                                        <span class="text-muted" style="font-size:12px"><%="@"+nameusuario+" "+fechaAux%></span>
                                    </h5>
                                    <!--p style="margin-top:-10px" class="text-muted"-->
                                        <%=contenidoAux%>
                                    <!--/p-->
                                </div>
                                <div class="col-md-10 col-md-offset-2 col-sm-12 col-xs-12" style="margin-top:0px; margin-left:50px; font-size:20px">
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                        <label>
                                            <a class="text-muted" title="Publicar" href="publicacion.jsp?id=<%=idPublicacion%>">
                                                <i class="fa fa-bolt" aria-hidden="true"></i>
                                            </a>
                                        </label>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                        <label>
                                            <a data-toggle="modal" data-target="#ver<%=idPublicacion%>" title="Ver" class="text-muted"  href="#">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </a>
                                        </label>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                        <label>
                                            <a data-toggle="modal" data-target="#elim<%=idPublicacion%>" title="Eliminar" class="text-muted"  href="#">
                                                <i class="fa fa-trash" aria-hidden="true"></i>
                                            </a>
                                        </label>

                                        <!-- Modal Eliminar-->
                                        <div class="modal fade" id="elim<%=idPublicacion%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog modal-sm" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 style="color:black" class="modal-title" id="myModalLabel">Seguro que quieres eliminar esta publicacion?</h4>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">
                                                            No
                                                        </button>
                                                        <a href="EliminarPublicacion?id=<%=idPublicacion%>" type="button" class="btn btn-danger">
                                                            SI
                                                        </a> 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                                            
                                        <!-- Modal Ver-->
                                        <div class="modal fade" id="ver<%=idPublicacion%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <center>
                                                            <%=contenidoAux%>
                                                        </center>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">
                                                            Salir
                                                        </button> 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>



                                    </div>
                                </div>  
                            </div>
                            <hr style="margin-left:-15px;margin-right:-15px">
                            
                            <%
                            
                                         }
                                    }
                                       
                                }
                                    
                            %>
                              

                        </div>          
                    </div>
                </div>
                
            </div>
            
            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-12 alert alert-success">
                        <h4 class="text-muted"><b class="text-muted">Seguidores</b></h4>
                        
                        <%
                            
                            List<Usuario> listaUser = auxUsuarioModel.getAll();
                            int id_user = Integer.parseInt((String)session.getAttribute("id_usuario"));
                            String idUserc = "";
                            for (Usuario us: listaUser){
                                if(id_user!=us.getId()){
                                    idUserc = us.getId()+"";
                                    String nombres = us.getNombre()+" "+us.getApellido();
                                    String fotob = us.getFoto();
                                %>
                                
                        <div class="row">
                            <div class="col-md-3">
                                <img style="" width="60px" src="<%=base_url%>web/files/<%=fotob%>" class="img-responsive img-rounded">
                            </div>
                           <div class="col-md-8" style="margin-left:-10px">
                                <h5 style="margin-top:0px;" class="" ><a class="text-success"  href="perfil.jsp?id=<%=idUserc%>"><b style="color:black"><%=nombres%></b></a></h5>
                                <button style="margin-top:-10px" type="button" class="btn btn-default btn-xs">
                                    <i class="fa fa-user-plus text-success" aria-hidden="true"></i>
                                    <b>Siguiendo</b>
                                </button>
                            </div> 
                        </div>
                                <%
                                }
                            }
                                
                        %>
                        

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12  alert alert-success">
                        <p>© 2016 People App Sobre nosotros Ayuda Condiciones Privacidad Cookies Información sobre anuncios Marca Blog Estado Aplicaciones Empleos Empresas Medios Desarrolladores</p>
                    </div>
                </div>
                
                
                
            </div>   

            
        </div>
    </div>
    <!-- /.container -->

    
        <!-- Modal Publicar-->
        <div class="modal fade" id="pub" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog " role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 style="color:black" class="modal-title" id="myModalLabel">Publicar.</h4>
                    </div>
                    <div class="modal-body">
                        <form method="post" id="form" action="Publicacion" enctype="multipart/form-data">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#estad" aria-controls="estad" role="tab" data-toggle="tab">Estado</a></li>
                                <li role="presentation"><a href="#imag" aria-controls="imag" role="tab" data-toggle="tab">Multimedia</a></li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">        
                                <div role="tabpanel" class="tab-pane fade in active" id="estad">
                                    <div class="input-group">
                                        <input type="text" name="cont" class="form-control" placeholder="Que estas pensando?">
                                        <span class="input-group-btn">
                                        <button class="btn btn-success" type="submit">
                                            <i class="fa fa-bolt" aria-hidden="true"></i>
                                            Publicar
                                        </button>
                                        </span>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="imag">
                                    <input id="imagen1" name="file" class="file" type="file" >
                                    <script>
                                        $("#imagen1").fileinput({
                                            showUpload: true,
                                            showZoom: false,
                                            browseClass: "btn btn-primary",
                                            browseLabel: "Archivo",
                                            browseIcon: "<i class=\"fa fa-file-archive-o\"></i> ",
                                            removeClass: "btn btn-danger",
                                            removeLabel: "Eliminar",
                                            removeIcon: "<i class=\"glyphicon glyphicon-trash\"></i> ",
                                            uploadTitle: "Publicar",
                                            uploadLabel: 'Publicar',
                                            uploadIcon: "<i class=\"fa fa-bolt\"></i> ",
                                            uploadClass: "btn btn-success",
                                            previewFileType: 'image',
                                            maxImageWidth: 5000024,
                                            maxImageHeight: 5000024
                                        });
                                    </script>
                                </div>                       
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            Cancelar
                        </button>
                    </div>
                </div>
            </div>
        </div>

</body>

</html>


