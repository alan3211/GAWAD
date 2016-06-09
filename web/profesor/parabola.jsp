<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>:::Geolitic:::Graficando una Parabola</title>
        <link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="../css/estilos.css"/>
        <link type="text/css" rel="stylesheet" href="../css/sweetalert.css"/>
        <link type="text/css" rel="stylesheet" href="../css/modals.css"/>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/jquery-2.2.0.js"></script>
        <script src="../js/sweetalert.min.js"></script>        
        <script src="../js/funciones.js"></script>                        
        <script src="../js/math.js"></script>                               
    </head>
    <body>
        <div class="container">            
            <br>
            <br>
            <br>
            <div class="row">
                <h1 class="col-md-6"><a href="Profesor.jsp" style="text-decoration: none; color: #FFF;">Geolitic</a></h1> 
                <div class="row">
                    <p class="col-md-6">
                        <a onclick="cerrarsesion()" style="text-decoration:underline; color: #FFF; top:25px; left: 600px;"><h5>Cerrar Sesión</h5></a>                                            
                    </p>
                </div>
                <p class="col-md-6 lead" style="top:25px; left: 300px;">
                <h2>Bienvenido Profesor(a): ${nombre}</h2>                
                </p>    
                <br>
                <br>
                <br>
                <h2 style="text-align: center;">Parábola</h2>
                <br><br>
                
                <div class="row">
                    <form id="form" class="form-horizontal">
                        <label for="eq" class="control-label col-md-3"><img class="img-responsive img-thumbnail" src="../img/parabola.jpg" title="Ingresa la ecuación despues del igual" style="margin-top: -5px;"/></label>                        
                        <div class="col-md-7">
                            <input type="text" class="form-control" name="equ" id="eq" placeholder="Ingresa tu ecuación" style="height: 45px;">
                            <h5><span id="eq01" class="hidden glyphicon form-control-feedback"></span></h5>
                            <h5><span id="eq02" class="text-center help-block hidden"></span></h5>
                        </div>
                        <input  type="submit" class="btn btn-primary" value="Gráficar" style="height: 45px; width: 150px; font-size: 23px;"/>
                    </form>   
                    <br>
                    <br>
                    <br>                    
                    <div class="center-block">
                        <div class="container grafica">
                            <p class="text-center col-md-12 ">Gráfica </p>
                            <br>
                            <div id="plot"></div>                            
                        </div>
                    </div>
                    <script>
                        var ecuacion = $("#eq").val();
                        function draw() {
                            try {
                                functionPlot({
                                    target: '#plot',
                                    data: [{
                                            fn: ecuacion,
                                            sampler: 'builtIn', // this will make function-plot use the evaluator of math.js
                                            graphType: 'polyline'
                                        }]
                                });
                            } catch (err) {
                                console.log(err);
                                swal("Error","Hubo un error","error");
                            }
                        }
                        document.getElementById(-1 * 'form').onsubmit = function (event) {
                            event.preventDefault();
                            draw();
                        };
                        draw();

                    </script>
                </div> 
                <br>
                <br>
                <a id="enviar" class="btn btn-primary center-block" style="height: 45px; width: 150px; font-size: 23px;">Enviar</a>
            </div>
            <br>
            <br>
            <footer>
                <p class="text-center">@GAWAD::2016 &COPY;Copyright Todos los derechos Reservados</p>                                
            </footer>
        </div>        
    </body>
</html>
