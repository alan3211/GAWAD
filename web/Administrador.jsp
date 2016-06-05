<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <h2><span class=" glyphicon glyphicon-user"></span>   Usuarios registrados</h2>
            <br>
            <br>
            <div class="table-responsive">                
                <table class="table">
                    <thead>
                        <tr style="color: #FFF; background: #3f51b5;">
                            <th>Nombre</th>
                            <th>Apellido Paterno</th>
                            <th>Apellido Materno</th>
                            <th>Nombre de Usuario</th>
                            <th colspan="4">Cargo</th>                                
                        </tr>                            
                    </thead>
                    <tbody style="background: #FFF; color: #000;">
                    <s:iterator value="usuarios" var="c" status="estado">
                        <tr>
                            <td><s:property value="nombre"/></td>
                        <td><s:property value="appat"/></td>
                        <td><s:property value="apmat"/></td>
                        <td><s:property value="username"/></td>
                        <td colspan="2"></td>                                
                        <%--<td><s:url action='Editar' var="urlMod">
                                <s:param name="idUser" value="idUser"></s:param>
                            </s:url><a href="<s:property value="urlMod" />">Editar</a></td>
                        <td><s:url action="Eliminar" var="urlTag">
                                <s:param name="idUser" value="idUser"></s:param>
                            </s:url> <a href="<s:property value="urlTag" />">Eliminar</a></td>--%>
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
                            <s:form action="AgregaAction" theme="bootstrap">                                
                                <div class="form-group" id="Nombre">
                                    <label for="nombre" class="control-label col-md-4"><span class="glyphicon glyphicon-user"></span> Nombre:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ingresa nombre(s)">
                                        <h5><span id="nombre01" class="hidden glyphicon form-control-feedback"></span></h5>
                                        <h5><span id="nombre02" class="text-center help-block hidden"></span></h5>
                                    </div>
                                </div>
                                <div class="form-group" id="Appaterno">
                                    <label for="appat" class="control-label col-md-4"><span class="glyphicon glyphicon-user"></span> Apellido Paterno:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="appat" id="appat" placeholder="Ingresa apellido paterno">
                                        <h5><span id="appat01" class="hidden glyphicon form-control-feedback"></span></h5>
                                        <h5><span id="appat02" class="text-center help-block hidden"></span></h5>
                                    </div>
                                </div>
                                <div class="form-group" id="Apmaterno">
                                    <label for="apmat" class="control-label col-md-4"><span class="glyphicon glyphicon-user"></span> Apellido Materno:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="apmat" id="apmat" placeholder="Ingresa apellido materno" >
                                        <h5><span id="apmat01" class="hidden glyphicon form-control-feedback"></span></h5>
                                        <h5><span id="apmat02" class="text-center help-block hidden"></span></h5>
                                    </div>
                                </div>
                                <div class="form-group" id="Boleta">
                                    <label for="idUser" class="control-label col-md-4"> <span class="glyphicon glyphicon-user"></span> Boleta:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="idUser" id="idUser" placeholder="Ingresa boleta">
                                        <h5><span id="iduser01" class="hidden glyphicon form-control-feedback"></span></h5>
                                        <h5><span id="iduser02" class="text-center help-block hidden"></span></h5>
                                    </div>
                                </div>
                                <div class="form-group" id="Sexo">
                                    <label for="sexo" class="control-label col-md-4"style="top:10px;"><span class="glyphicon glyphicon-user"></span> Sexo:</label>
                                    <div class="col-md-5">
                                        <label class="radio-inline lead" style="left:-20px;top:-10px;">M:<input type="radio" id="sexo" name="sexo" value="M" style="left:70px; top:10px;"></label>
                                        <label class="radio-inline lead" style="left:-20px;top:-10px;">F:<input type="radio" id="sexo" name="sexo" value="F" style="left:60px; top:10px;" ></label>                                                                
                                        <h5><span id="sexo01" class="hidden glyphicon form-control-feedback"></span></h5>
                                        <h5><span id="sexo02" class="text-center help-block hidden"></span></h5>
                                    </div>                            
                                </div>
                                <div class="form-group" id="Edad">
                                    <label for="edad" class="control-label col-md-4"><span class="glyphicon glyphicon-user"></span> Edad:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="edad" id="edad" placeholder="Ingresa edad">
                                        <h5><span id="edad01" class="hidden glyphicon form-control-feedback"></span></h5>
                                        <h5><span id="edad02" class="text-center help-block hidden"></span></h5>
                                    </div>
                                </div>
                                <div class="form-group" id="Username">
                                    <label for="username" class="control-label col-md-4"><span class="glyphicon glyphicon-user"></span> Nombre de Usuario:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="username" id="username" placeholder="Ingresa nombre de usuario">
                                        <h5><span id="username01" class="hidden glyphicon form-control-feedback"></span></h5>
                                        <h5><span id="username02" class="text-center help-block hidden"></span></h5>
                                    </div>
                                </div>
                                <div class="form-group" id="Pass1">
                                    <label for="pass" class="control-label col-md-4"><span class="glyphicon glyphicon-eye-open"></span> Contraseña:</label>
                                    <div class="col-md-7">
                                        <input type="password" class="form-control" name="pass" id="pass" placeholder="Ingresa contraseña">
                                        <h5><span id="pass01" class="hidden glyphicon form-control-feedback"></span></h5>
                                        <h5><span id="pass02" class="text-center help-block hidden"></span></h5>
                                    </div>
                                </div>
                                <div class="form-group" id="Rol">
                                    <label for="roles" class="control-label col-md-4"><span class="glyphicon glyphicon-user"></span> Tipo de usuario:</label>
                                    <div class="col-md-7">
                                        <select name="roles" class="form-control">
                                            <option value="-1">Selecciona un tipo de usuario</option>
                                            <option value="1">Administrador</option>
                                            <option value="2">Profesor</option>
                                            <option value="3">Alumno</option>
                                        </select>
                                    </div> 
                                </div>                                
                                <s:if test="hasActionErrors()">
                                    <div class="errors">
                                        <s:actionerror/>
                                    </div>
                                </s:if>
                                    <s:submit cssClass="btn btn-info btn-block" value="Registrar"></s:submit>                                
                            </s:form>
                        </div>
                        <div class="modal-footer modal-has-primary">
                            <button type="submit" class="btn btn-primary pull-left"
                                    data-dismiss="modal">
                                <span class="glyphicon glyphicon-remove"></span> Cancelar
                            </button>                       
                        </div>
                    </div>
                </div>
            </div>          
    </body>
</html>
