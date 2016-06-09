<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>:::Geolitic:::Grupos</title>
        <link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="../css/estilos.css"/>
        <link type="text/css" rel="stylesheet" href="../css/sweetalert.css"/>
        <link type="text/css" rel="stylesheet" href="../css/modals.css"/>
        <script src="../js/jquery-2.2.0.js"></script>       
        <script src="../js/bootstrap.min.js"></script>        
        <script src="../js/sweetalert.min.js"></script>        
        <script src="../js/funciones.js"></script>  
        <script>
            $(document).ready(function () {
                $("#agregar").click(function () {
                    $("#myModal").modal();
                });
            });
        </script>       
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
                <h2>Bienvenido Profesor(a): ${nombre}</h2>                
                </p>                   
            </div>   
            <br>
            <h2>Grupos</h2>
            <br>
            <br>
            <div class="table-responsive">                
                <table class="table">
                    <thead>
                        <tr style="color: #FFF; background: #3f51b5;">
                            <th>Nombre del Grupo</th>
                            <th>Profesor Encargado</th>                                                        
                            <th colspan="2"></th>                            
                        </tr>                            
                    </thead>
                    <tbody style="background: #FFF; color: #000;">
                    <s:iterator value="usuarios" var="c" status="estado">
                        <tr>
                            <td><s:property value = "name"/></td>
                            <td><s:property value = "ApPat"/></td>                           
                            <td colspan="2">
                                <s:if test="rol==1">Administrador</s:if>
                                <s:elseif test="rol==2">Profesor</s:elseif>
                                <s:elseif test="rol==3">Alumno</s:elseif>                                                            
                            </td>                                
                            <td><s:url action='Modificar' var="urlMod">
                                <s:param name="idUser" value="idUser"></s:param>
                                </s:url><a href="<s:property value="urlMod"/>"><span class="glyphicon glyphicon-pencil"></span> Editar</a></td>
                            <td><s:url action="Eliminar" var="urlTag">
                                <s:param name="idUser" value="idUser"></s:param>
                            </s:url> <a href="<s:property value="urlTag"/>"><span class="glyphicon glyphicon-trash"></span> Eliminar</a></td>
                        </tr>  
                    </s:iterator>                        
                    </tbody>                         
                </table>
            </div>      
            <div class="row">
                <div class="col-md-offset-11">
                    <a class="btn btn-primary" id="agregar" style="width:65px; height: 45px;"><span class="glyphicon glyphicon-plus-sign lead"></span></a>
                </div>                
            </div>
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header modal-has-primary" style="padding: 35px 50px;">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="center-block">
                                <span class="glyphicon glyphicon-user"></span>  Agregar Usuario
                            </h4>
                            <h5>Aquí puedes agregar nuevos usuarios</h5>                            
                        </div>
                        <div class="modal-body" style="padding: 40px 50px; color: #000; height: 500px;">
                            <s:form action="AgregaAction" method = "POST" onsubmit="return agregarva();">                                
                                <div class="form-group" id="Nombre">
                                    <label for="nombre" class="control-label col-md-4"><span class="glyphicon glyphicon-user"></span> Nombre:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ingresa nombre(s)">
                                        <h6><span id="nombre01" class="hidden glyphicon form-control-feedback"></span></h6>
                                        <h6><span id="nombre02" class="text-center help-block hidden"></span></h6>
                                    </div>
                                </div>
                                <div class="form-group" id="Appaterno">
                                    <label for="appat" class="control-label col-md-4"><span class="glyphicon glyphicon-user"></span> Apellido Paterno:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="appat" id="appat" placeholder="Ingresa apellido paterno">
                                        <h6><span id="appat01" class="hidden glyphicon form-control-feedback"></span></h6>
                                        <h6><span id="appat02" class="text-center help-block hidden"></span></h6>
                                    </div>
                                </div>
                                <div class="form-group" id="Apmaterno">
                                    <label for="apmat" class="control-label col-md-4"><span class="glyphicon glyphicon-user"></span> Apellido Materno:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="apmat" id="apmat" placeholder="Ingresa apellido materno" >
                                        <h6><span id="apmat01" class="hidden glyphicon form-control-feedback"></span></h6>
                                        <h6><span id="apmat02" class="text-center help-block hidden"></span></h6>
                                    </div>
                                </div>
                                <div class="form-group" id="Boleta">
                                    <label for="idUser" class="control-label col-md-4"> <span class="glyphicon glyphicon-user"></span> Boleta:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="idUser" id="idUser" placeholder="Ingresa boleta">
                                        <h6><span id="iduser01" class="hidden glyphicon form-control-feedback"></span></h6>
                                        <h6><span id="iduser02" class="text-center help-block hidden"></span></h6>
                                    </div>
                                </div>
                                <div class="form-group" id="Sexo">
                                    <label for="sexo" class="control-label col-md-4"style="top:10px;"><span class="glyphicon glyphicon-user"></span> Sexo:</label>
                                    <div class="col-md-5">
                                        <label class="radio-inline lead" style="left:-20px;top:-10px;">M:<input type="radio" id="sexo" name="sexo" value="M" style="left:70px; top:10px;"></label>
                                        <label class="radio-inline lead" style="left:-20px;top:-10px;">F:<input type="radio" id="sexo" name="sexo" value="F" style="left:60px; top:10px;" ></label>                                                                
                                        <h6><span id="sexo01" class="hidden glyphicon form-control-feedback"></span></h6>
                                        <h6><span id="sexo02" class="text-center help-block hidden"></span></h6>
                                    </div>                            
                                </div>
                                <div class="form-group" id="Edad">
                                    <label for="edad" class="control-label col-md-4"><span class="glyphicon glyphicon-user"></span> Edad:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="edad" id="edad" placeholder="Ingresa edad">
                                        <h6><span id="edad01" class="hidden glyphicon form-control-feedback"></span></h6>
                                        <h6><span id="edad02" class="text-center help-block hidden"></span></h6>
                                    </div>
                                </div>
                                <div class="form-group" id="Username">
                                    <label for="username" class="control-label col-md-4"><span class="glyphicon glyphicon-user"></span> Nombre de Usuario:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="username" id="username" placeholder="Ingresa nombre de usuario">
                                        <h6><span id="username01" class="hidden glyphicon form-control-feedback"></span></h6>
                                        <h6><span id="username02" class="text-center help-block hidden"></span></h6>
                                    </div>
                                </div>
                                <div class="form-group" id="Pass1">
                                    <label for="pass" class="control-label col-md-4"><span class="glyphicon glyphicon-eye-open"></span> Contraseña:</label>
                                    <div class="col-md-7">
                                        <input type="password" class="form-control" name="pass" id="pass" placeholder="Ingresa contraseña">
                                        <h6><span id="pass01" class="hidden glyphicon form-control-feedback"></span></h6>
                                        <h6><span id="pass02" class="text-center help-block hidden"></span></h6>                                                                                                                      
                                    </div>
                                      <s:submit cssClass="btn btn-info" value="Registrar"></s:submit>
                                </div>                                
                            </s:form>
                        </div>
                        <div class="modal-footer modal-has-primary">
                            <button type="submit" class="btn btn-primary pull-left"
                                    data-dismiss="modal">
                                <span class="glyphicon glyphicon-remove"></span>Cancelar
                            </button>                                                                                    
                        </div>
                    </div>
                </div>
            </div>
            <footer>
                <p class="text-center">@GAWAD::2016 &COPY;Copyright Todos los derechos Reservados</p>                                
            </footer>
    </body>
</html>
