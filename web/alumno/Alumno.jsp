<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>:::Geolitic:::Bienvenido Alumno</title>
        <link type="text/css" rel="stylesheet" href="./css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="./css/estilos.css"/>
        <link type="text/css" rel="stylesheet" href="./css/modals.css"/>
        <link type="text/css" rel="stylesheet" href="./css/sweetalert.css"/>        
        <script src="./js/jquery-2.2.0.js"></script>
        <script src="./js/bootstrap.min.js"></script>        
        <script src="./js/sweetalert.min.js"></script>        
        <script src="./js/funciones.js"></script>                
        <script>
             $(document).ready(function () {
                $("#inscribir").click(function () {
                    $("#myModal").modal();
                });
            });
        </script>
    </head>
    <body>
        <div class="container">            
            <br>            
            <br>
            <div class="row">
                <h1 class="col-md-6"><a href="./Alumno.jsp" style="text-decoration: none; color: #FFF;">Geolitic</a></h1> 
                <div class="row">
                    <p class="col-md-6">
                        <a onclick="cerrarsesion()" style="text-decoration:underline; color: #FFF;"><h5>Cerrar Sesión</h5></a>                                            
                    </p>
                </div>
                <p class="col-md-6 lead" style="top:25px; left: 300px;">
                    <h2>Bienvenido Alumn@: ${nombre}</h2>                       
                </p>                   
            </div>                   
                <br>                
            <!--Aqui se da informacion de la pagina para el alumno-->                
                <div class="container">
                    <div class="row">
                        <div class="col-md-6" style="top:80px;">
                            <h3>Hola Alumn@, gracias por usar nuestro sistema ya que te 
                                permitirá resolver problemas de geometría analítica, así 
                                como también recibir las ecuaciones de tu profesor para 
                                resolver tus dudas que tengas al respecto.                               
                            </h3>
                            <a href="./alumno/vergrafica.jsp" class="btn btn-primary center-block" style="height: 45px; width: 150px; font-size: 23px;">Ver gráficas</a>                            
                            <br>                            
                            <a id="inscribir" class="btn btn-primary center-block" style="height: 45px; width: 250px; font-size: 23px;">Inscribirse a un grupo</a>
                        </div>                        
                        <div class="col-md-6">
                            <img class="img-responsive img-thumbnail" src="./img/alumnos.jpg"/>
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
        <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header modal-has-primary" style="padding: 35px 50px;">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="center-block">
                                <span class="glyphicon glyphicon-globe"></span> Nuevo grupo
                            </h4>
                            <h5>Inscripción de grupos</h5>                            
                        </div>
                        <div class="modal-body" style="padding: 40px 50px; color: #000;">
                            <s:form action="#" method = "POST" onsubmit="#">                                
                                <div class="form-group" id="Nombre">
                                    <label for="nombre" class="control-label col-md-4">Nombre del grupo:</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ingresa el nombre del grupo">
                                        <h6><span id="nombre01" class="hidden glyphicon form-control-feedback"></span></h6>
                                        <h6><span id="nombre02" class="text-center help-block hidden"></span></h6>
                                    </div>
                                </div>              
                                <s:submit cssClass="btn btn-info" value="Inscribirse"></s:submit>
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
    </body>
</html>