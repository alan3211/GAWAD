<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>:::Geolitic:::Bienvenido</title>
        <link type="text/css" rel="stylesheet" href="./css/bootstrap.css">
        <link type="text/css" rel="stylesheet" href="./css/estilos.css">
        <link type="text/css" rel="stylesheet" href="./css/sweetalert.css">
        <script src="./js/bootstrap.min.js"></script>
        <script src="./js/jquery-2.2.0.js"></script>
        <script src="./js/sweetalert.min.js"></script>        
        <script src="./js/funciones.js"></script>
    </head>
    <body>        
        <div class="container">            
            <br>
            <br>
            <br>
            <div class="row">
                <h1 class="col-md-6"><a href="index.jsp"style="text-decoration: none; color: #FFF;">Geolitic</a></h1> 
                <p class="col-md-6 lead" style="top: 25px;">Una página donde podrás resolver problemas de geometría analítica: Línea Recta, Circunferencia y Parábola.</p>                    
            </div>
            <br>
            <br>
            <br>
            <div class="container caja">
                <div class="row">
                    <p class="text-center col-md-12">Ingresar</p>
                </div>             
                <br>
                <div class="row">
                    <form action="LoginAction" method="POST" class="form-horizontal" id="Logininicio" name="Logininicio" onsubmit="return validar()">
                        <div class="form-group" id="Nombre">
                            <label for="nombre" class="control-label col-md-4 lead">Nombre:</label>
                            <div class="col-md-7">                                
                                <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ingresa tu nombre de usuario">
                                <h5><span id="nombre01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="nombre02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Pass1">
                            <label for="contra" class="control-label col-md-4 lead">Contraseña:</label>
                            <div class="col-md-7">
                                <input type="password" class="form-control" name="contra" id="contra" placeholder="Ingresa tu contraseña">
                                 <h5><span id="pass01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="pass02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                                               
                        <div class="form-group">
                            <a href="Registrate.jsp" class="lead col-md-8" style="top: 25px; left: 10px; text-decoration: underline; color: #000;">No tienes cuenta,Registrate!</a>
                            <div class="col-md-3">
                                <input type="submit" class="btn btn-primary" value="Enviar" id="btn_enviar" style="height: 45px; width: 80px; font-size: 23px;"/>
                            </div>
                        </div>
                    </form>
                </div>                
            </div>
            <br>
            <footer>
                <p class="text-center">@GAWAD::2016 &COPY;Copyright Todos los derechos Reservados<br><a href="acercade.html" style="color: #FFF; text-decoration: underline;">Acerca de la aplicación web</a></p>                                
            </footer>
        </div>
    </body>
</html>
