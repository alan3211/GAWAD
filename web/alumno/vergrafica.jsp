<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
    <head>                
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">        
        <title>:::Bienvenido::: Alumno</title>
        <link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="../css/estilos.css"/>
        <link type="text/css" rel="stylesheet" href="../css/sweetalert.css"/>
        <link type="text/css" rel="stylesheet" href="../css/modals.css"/>
        <script src="../js/jquery-2.2.0.js"></script> 
        <script src="../js/math.js"></script>
        <script src="../js/bootstrap.min.js"></script>        
        <script src="../js/sweetalert.min.js"></script>        
        <script src="../js/funciones.js"></script>  
    </head>
    <body>
        <div class="container">            
            <br>
            <br>
            <br>
            <div class="row">
                <h1 class="col-md-6"><a href="ExtraccionGraphicAction.action" style="text-decoration: none; color: #FFF;">Geolitic</a></h1> 
                <div class="row">
                    <p class="col-md-6">
                        <a onclick="cerrarsesion()" style="text-decoration:underline; color: #FFF; top:25px; left: 600px;"><h5>Cerrar Sesión</h5></a>                                            
                    </p>
                </div>
                <p class="col-md-6 lead" style="top:25px; left: 300px;">
                <h2>Bienvenido Alumn@: ${nombre}</h2>                
                </p>                   
            </div>
               <h2>Lista de Gráficas</h2>
            <br>
            <br>
            <div class="table-responsive">                
                <table class="table">
                    <thead>
                        <tr style="color: #FFF; background: #3f51b5;">
                            <th>Grupo</th>
                            <th>Profesor</th>
                            <th>Gráfica</th>                                                        
                            <th colspan="2"></th>                            
                        </tr>                            
                    </thead>
                    <tbody style="background: #FFF; color: #000;">
                    <s:iterator value="usuarios" var="c" status="estado">
                        <tr>
                            <td><s:property value = "name"/></td>
                            <td><s:property value = "ApPat"/></td>
                            <td><s:property value = "ApMat"/></td>
                            <td><s:property value = "username"/></td>
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
            <br>
            <footer>
                <p class="text-center">@GAWAD::2016 &COPY;Copyright Todos los derechos Reservados</p>                                
            </footer>
        </div>
    </body>
</html>