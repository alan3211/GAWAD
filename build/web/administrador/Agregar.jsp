<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>:::AgregarUsuario:::</title>
        <link type="text/css" rel="stylesheet" href="../css/bootstrap.css">
        <link type="text/css" rel="stylesheet" href="../css/estilos.css">
        <link type="text/css" rel="stylesheet" href="../css/sweetalert.css">
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/jquery-2.2.0.js"></script>
        <script src="../js/sweetalert.min.js"></script>        
        <script src="../js/funciones.js"></script>
    </head>
    <body>
           <div class="container">            
            <br>
            <br>
            <br>
             <div class="row">
                <h1 class="col-md-6"><a href="Administrador.jsp" style="text-decoration: none; color: #FFF;">Geolitic</a></h1> 
                <div class="row">
                    <p class="col-md-6">
                        <a onclick="cerrarsesion()" style="text-decoration:underline; color: #FFF; top:25px; left: 600px;"><h5>Cerrar Sesión</h5></a>                                            
                    </p>
                </div>
                <p class="col-md-6 lead" style="top:25px; left: 300px;">
                <h2>Bienvenido Administrador: ${nombre}</h2>                
                </p>                   
            </div>  
            <br>
            <br>
            <br>
            <div class="container caja2">
               
                <div class="row">
                    <p class="text-center col-md-12 ">Agregar Usuario</p>
                </div>   
                <br>
                <div class="row">
                    <form action="AgregaAction" method="POST" class="form-horizontal" id="AgregaLogin" name="AgregaLogin" onsubmit="return agregarva();">
                        <div class="form-group" id="Nombre">
                            <label for="nombre" class="control-label col-md-4 lead">* Nombre:</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ingresa nombre(s)">
                                <h5><span id="nombre01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="nombre02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Appaterno">
                            <label for="appat" class="control-label col-md-4 lead">* Apellido Paterno:</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="appat" id="appat" placeholder="Ingresa apellido paterno">
                                <h5><span id="appat01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="appat02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Apmaterno">
                            <label for="apmat" class="control-label col-md-4 lead">* Apellido Materno:</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="apmat" id="apmat" placeholder="Ingresa apellido materno" >
                                <h5><span id="apmat01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="apmat02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Boleta">
                            <label for="idUser" class="control-label col-md-4 lead">* Boleta:</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="idUser" id="idUser" placeholder="Ingresa boleta">
                                <h5><span id="iduser01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="iduser02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Sexo">
                            <label for="sexo" class="control-label col-md-4 lead"style="top:10px;">* Sexo:</label>
                            <div class="col-md-5">
                                <label class="radio-inline lead" style="left:-20px;top:-10px;">M:<input type="radio" id="sexo" name="sexo" value="M" style="left:70px; top:10px;"></label>
                                <label class="radio-inline lead" style="left:-20px;top:-10px;">F:<input type="radio" id="sexo" name="sexo" value="F" style="left:60px; top:10px;" ></label>                                                                
                                <h5><span id="sexo01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="sexo02" class="text-center help-block hidden"></span></h5>
                            </div>                            
                        </div>
                        <div class="form-group" id="Edad">
                            <label for="edad" class="control-label col-md-4 lead">* Edad:</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="edad" id="edad" placeholder="Ingresa edad">
                                <h5><span id="edad01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="edad02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Username">
                            <label for="username" class="control-label col-md-4 lead">* Nombre de Usuario:</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="username" id="username" placeholder="Ingresa nombre de usuario">
                                <h5><span id="username01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="username02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Pass1">
                            <label for="pass" class="control-label col-md-4 lead">* Contraseña:</label>
                            <div class="col-md-7">
                                <input type="password" class="form-control" name="pass" id="pass" placeholder="Ingresa contraseña">
                                <h5><span id="pass01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="pass02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Pass2">
                            <label for="repcontra" class="control-label col-md-4 lead">* Repite contraseña:</label>
                            <div class="col-md-7">
                                <input type="password" class="form-control" name="repcontra" id="repcontra" placeholder="Confirma contraseña">
                                <h5><span id="repass01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="repass02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>                        
                        <div class="form-group" id="Rol">
                            <label for="roles" class="control-label col-md-4 lead">* Tipo de usuario:</label>
                            <div class="col-md-7">
                                <select name="roles" class="form-control">
                                    <option value="-1">Selecciona un tipo de usuario</option>
                                    <option value="1">Administrador</option>
                                    <option value="2">Profesor</option>
                                    <option value="3">Alumno</option>
                                </select>
                            </div> 
                        </div>
                        <div class="form-group-sm">                            
                            <p class="lead" style="margin-left:40px;">* Campos Obligatorios</p>   
                            <div class="col-md-offset-6">                                                   
                                <input type="submit" class="btn btn-primary" value="Enviar" id="btn_enviar1" style="height: 45px; width: 150px; font-size: 23px;"/>
                                <input type="button" class="btn btn-primary" value="Cancelar" id="cancelar" onclick="window.location = '../Administrador.jsp'" style="height: 45px; width: 150px; font-size: 23px; margin-left:30px;"/>
                            </div>
                        </div>
                    </form>
                </div>                
            </div>
            <br>
            <footer>
                <p class="text-center">@GAWAD::2016 &COPY;Copyright Todos los derechos Reservados</p>                                
            </footer>
        </div>
    </body>
</html>
