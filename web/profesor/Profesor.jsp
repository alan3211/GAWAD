<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>:::Geolitic:::Bienvenido Profesor</title>
        <link type="text/css" rel="stylesheet" href="./css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="./css/estilos.css"/>
        <link type="text/css" rel="stylesheet" href="./css/sweetalert.css"/>        
        <script src="./js/jquery-2.2.0.js"></script>
        <script src="./js/bootstrap.min.js"></script>        
        <script src="./js/sweetalert.min.js"></script>        
        <script src="./js/funciones.js"></script>                
    </head>
    <body>
        <div class="container">            
            <br>            
            <br>
            <div class="row">
                <h1 class="col-md-6"><a href="./Profesor.jsp" style="text-decoration: none; color: #FFF;">Geolitic</a></h1> 
                <div class="row">
                    <p class="col-md-6">
                        <a onclick="cerrarsesion()" style="text-decoration:underline; color: #FFF;"><h5>Cerrar Sesión</h5></a>                                            
                    </p>
                </div>
                <p class="col-md-6 lead" style="top:25px; left: 300px;">
                    <h2>Bienvenido Profesor(a): ${nombre}</h2>                       
                </p>                   
            </div>                   
                <br>                
                <nav class="navbar navbar-default" style="font-family:'Roboto';">
                    <div class="container-fluid">
                        <div class="collapse navbar-collapse" id="navbar1">
                            <ul class="nav navbar-nav">                                                                                             
                                <li><a href="./profesor/Grupos.jsp">Grupos</a></li>
                                <li><a href="./profesor/ListaAlumnos.jsp">Lista de alumnos</a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Graficar <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="./profesor/recta.jsp">Línea Recta</a></li>
                                        <li><a href="./profesor/circunferencia.jsp">Circunferencia</a></li>
                                        <li><a href="./profesor/parabola.jsp">Parábola</a></li>
                                    </ul>
                                </li>                                                                
                            </ul>
                        </div>
                    </div>
                </nav>
                <!--Aqui se da informacion de la pagina para el profesor-->                
                <div class="container">
                    <div class="row">
                        <div class="col-md-6" style="top:80px;">
                            <h3>Bienvenido profesores,agredecemos el uso de nuestra aplicación web para la enseñanza a los alumnos proporcionando 
                                graficas para su desarrollo escolar,en esta sección podrás ingresar nuevos grupos,
                                ver la lista de alumnos asignados al grupo seleccionado, graficar curvas y
                                el envio de graficas a los alumnos.                                
                            </h3>
                        </div>
                        
                        <div class="col-md-6">
                            <img class="img-responsive img-thumbnail" src="./img/Professor.gif"/>
                        </div>
                    </div>
                </div>
                <br>
                <br>                        
            
            <footer>
                <p class="text-center">
                    @GAWAD::2016 &COPY;Copyright Todos los derechos Reservados<br/>                            
                </p>                                
            </footer>
        </div>
    </body>
</html>