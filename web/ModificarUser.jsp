<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>:::Geolitic:::Bienvenido Administrador</title>
        <link type="text/css" rel="stylesheet" href="./css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="./css/estilos.css"/>
        <link type="text/css" rel="stylesheet" href="./css/sweetalert.css"/>
        <link type="text/css" rel="stylesheet" href="./css/modals.css"/>
        <script src="./js/jquery-2.2.0.js"></script>       
        <script src="./js/bootstrap.min.js"></script>        
        <script src="./js/sweetalert.min.js"></script>        
        <script src="./js/funciones.js"></script>          
    </head>
    <body>
        <div class="container">            
            <br>
            <br>
            <br>
            <div class="row">
                <h1 class="col-md-6"><a href="ExtraccionAction.action" style="text-decoration: none; color: #FFF;">Geolitic</a></h1> 
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
            <div class="container caja1">
                <div class="row">
                    <p class="text-center col-md-12 "> <span class=" glyphicon glyphicon-user"></span> Editar Usuario</p>
                </div>   
                <br>
                <div class="row">
                    <form action="ActualizaAction" method="POST" class="form-horizontal" id="RegistraLogin" name="RegistraLogin" onsubmit="return actualizava();">
                        <div class="form-group" id="Nombre">
                            <label for="nombre" class="control-label col-md-4 lead">* Nombre:</label>
                            <div class="col-md-7">                                
                                <s:textfield name="nombre" cssClass="form-control" id="nombre" value="%{nombre}" placeholder="Ingresa nuevo(s) nombre(s)"></s:textfield>
                                <h5><span id="nombre01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="nombre02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Appaterno">
                            <label for="appat" class="control-label col-md-4 lead">* Apellido Paterno:</label>
                            <div class="col-md-7">                                
                                <s:textfield name="appat" cssClass="form-control" id="appat" value="%{appat}" placeholder="Ingresa nuevo apellido paterno"></s:textfield>
                                <h5><span id="appat01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="appat02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Apmaterno">
                            <label for="apmat" class="control-label col-md-4 lead">* Apellido Materno:</label>
                            <div class="col-md-7">
                                <s:textfield name="apmat" cssClass="form-control" id="apmat" value="%{apmat}" placeholder="Ingresa nuevo apellido materno"></s:textfield>
                                <h5><span id="apmat01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="apmat02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Boleta">
                            <label for="idUser" class="control-label col-md-4 lead">* Boleta:</label>
                            <div class="col-md-7">                                
                                <s:textfield name="idUser" cssClass="form-control" id="idUser" value="%{idUser}" placeholder="Ingresa nueva boleta"></s:textfield>
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
                                <s:textfield name="edad" cssClass="form-control" id="edad" value="%{edad}" placeholder="Ingresa nueva edad"></s:textfield>
                                <h5><span id="edad01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="edad02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Username">
                            <label for="username" class="control-label col-md-4 lead">* Nombre de Usuario:</label>
                            <div class="col-md-7">                                
                                <s:textfield name="username" cssClass="form-control" id="username" value="%{username}" placeholder="Ingresa nuevo nombre de usuario"></s:textfield>
                                <h5><span id="username01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="username02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Pass1">
                            <label for="pass" class="control-label col-md-4 lead">* Contraseña:</label>
                            <div class="col-md-7">
                            <s:password name="pass" cssClass="form-control" id="pass" value="%{pass}" placeholder="Ingresa nueva contraseña"></s:password>
                                <h5><span id="pass01" class="hidden glyphicon form-control-feedback"></span></h5>
                                <h5><span id="pass02" class="text-center help-block hidden"></span></h5>
                            </div>
                        </div>
                        <div class="form-group" id="Rol">
                            <label for="roles" class="control-label col-md-4 lead">* Rol:</label>
                            <div class="col-md-7">
                                <select name="roles" class="form-control">
                                    <option value="-1">Seleccione un rol</option>                                    
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
                                <input type="button" class="btn btn-primary" value="Cancelar" id="cancelar" onclick="limpiar();" style="height: 45px; width: 150px; font-size: 23px; margin-left:30px;"/>
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