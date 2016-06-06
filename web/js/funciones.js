function validar() {
    
    var nombre = $("#nombre").val();
    var pass = $("#contra").val();
    var nombres = false,contrasenas = false;          
        function valusers(name) {
        var ts = /^[a-zA-Z0-9àáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð -]+$/u;
                return ts.test(name);
                }
    
    if (nombre === "") {
                $("#Nombre").attr("class", "form-group has-feedback has-error");
                $("#nombre01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#nombre02").removeClass("hidden");
                $("#nombre02").text("El campo nombre no puede estar vacío.");                
                } else if (!valusers(nombre)) {
                $("#Nombre").attr("class", "form-group has-feedback has-error");
                $("#nombre01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#nombre02").removeClass("hidden");
                $("#nombre02").text("El formato del campo nombre es incorrecto.");                
                } else {
                $("#Nombre").attr("class", "form-group has-feedback has-success");
                $("#nombre01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#nombre02").addClass("hidden");
                nombres = true;
                }
        if (pass === "") {
                $("#Pass1").attr("class", "form-group has-feedback has-error");
                $("#pass01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#pass02").removeClass("hidden");
                $("#pass02").text("El campo contraseña no puede estar vacío.");                
                }else {
                $("#Pass1").attr("class", "form-group has-feedback has-success");
                $("#pass01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#pass02").addClass("hidden");
                contrasenas = true;
                }
        if(nombres && contrasenas){
            return true;
        }else{
            return false;
        }                  
}

function registro() {
        var nombres = false, contrasenas = false, tipo = false, ages = false, users = false,boletas = false;
        var nombre = $("#nombre").val();
        var appat = $("#appat").val();
        var apmat = $("#apmat").val();
        var id = $("#idUser").val();        
        var sexo = $('input[name=sexo]:checked', '#RegistraLogin').val();
        var edad = $("#edad").val();
        var username = $("#username").val();
        var pass = $("#pass").val();
        var repass = $("#repcontra").val();
               function valname(name) {
                var ts = /^[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð -]+$/u;
                        return ts.test(name);
                }
        function valusers(name) {
        var ts = /^[a-zA-Z0-9àáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð -]+$/u;
                return ts.test(name);
                }
        function valedad(name) {
        var ts = /^[0-9]+$/;
                return ts.test(name);
                }
            function valboleta(boleta) {
	var ts = /^[0-9]{8,10}$/;
	return ts.test(boleta);
}

        if (nombre === "") {
        $("#Nombre").attr("class", "form-group has-feedback has-error");
                $("#nombre01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#nombre02").removeClass("hidden");
                $("#nombre02").text("El campo nombre no puede estar vacío.");
                nombres = false;
                } else if (!valname(nombre)) {
        $("#Nombre").attr("class", "form-group has-feedback has-error");
                $("#nombre01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#nombre02").removeClass("hidden");
                $("#nombre02").text("El formato del campo nombre  es incorrecto.");
                nombres = false;
                } else {
        $("#Nombre").attr("class", "form-group has-feedback has-success");
                $("#nombre01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#nombre02").addClass("hidden");
                nombres = true;
                }
//Apellido Paterno
        if (appat === "") {
        $("#Appaterno").attr("class", "form-group has-feedback has-error");
                $("#appat01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#appat02").removeClass("hidden");
                $("#appat02").text("El campo apellido paterno no puede estar vacío.");
                nombres = false;
                } else if (!valname(appat)) {
        $("#Appaterno").attr("class", "form-group has-feedback has-error");
                $("#appat01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#appat02").removeClass("hidden");
                $("#appat02").text("El formato del campo apellido paterno es incorrecto.");
                nombres = false;
                } else {
        $("#Appaterno").attr("class", "form-group has-feedback has-success");
                $("#appat01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#appat02").addClass("hidden");
                nombres = true;
                }
//Apellido Materno
        if (apmat === "") {
        $("#Apmaterno").attr("class", "form-group has-feedback has-error");
                $("#apmat01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#apmat02").removeClass("hidden");
                $("#apmat02").text("El campo apellido materno no puede estar vacío.");
                nombres = false;
                } else if (!valname(apmat)) {
        $("#Apmaterno").attr("class", "form-group has-feedback has-error");
                $("#apmat01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#apmat02").removeClass("hidden");
                $("#apmat02").text("El formato del campo apellido materno es incorrecto.");
                nombres = false;
                } else {
        $("#Apmaterno").attr("class", "form-group has-feedback has-success");
                $("#apmat01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#apmat02").addClass("hidden");
                nombres = true;
                }
                //validando boleta
                if(id === ""){                     
                $("#Boleta").attr("class", "form-group has-feedback has-error");
                $("#iduser01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#iduser02").removeClass("hidden");
                $("#iduser02").text("El campo boleta no puede estar vacío.");
                boletas = false;
                }else if (!valboleta(id)) {
                    $("#Boleta").attr("class", "form-group has-feedback has-error");
                    $("#iduser01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                    $("#iduser02").removeClass("hidden");
                    $("#iduser02").text("El formato del campo boleta es incorrecto.");
                    boletas = false;
                } else {
                    $("#Boleta").attr("class", "form-group has-feedback has-success");
                    $("#iduser01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                    $("#iduser02").addClass("hidden");
                    boletas = true;
                }
//Validando radio button        
            if ($('input[name="sexo"]').is(':checked')) {                   
                $("#Sexo").attr("class", "form-group has-feedback has-success");                
                $("#sexo02").addClass("hidden");
                    tipo = true;
            } else {
                swal("huy...error","Selecciona un sexo","error");                
                $("#Sexo").attr("class", "form-group has-feedback has-error");                
                $("#sexo02").removeClass("hidden");
                tipo = false;
            }               
//Validando edad
        if (edad === "") {
        $("#Edad").attr("class", "form-group has-feedback has-error");
                $("#edad01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#edad02").removeClass("hidden");
                $("#edad02").text("El campo edad no puede estar vacío.");
                ages = false;
                } else if (!valedad(edad)) {
        $("#Edad").attr("class", "form-group has-feedback has-error");
                $("#edad01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#edad02").removeClass("hidden");
                $("#edad02").text("El formato del campo edad es incorrecto.");
                ages = false;
                }else if(edad >= 10 && edad<= 130){
                $("#Edad").attr("class", "form-group has-feedback has-success");
                $("#edad01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#edad02").addClass("hidden");
                    ages = true;
                }else {
                        ages = false;
                }
//Validando el nombre del usuario
        if (username === "") {
        $("#Username").attr("class", "form-group has-feedback has-error");
                $("#username01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#username02").removeClass("hidden");
                $("#username02").text("El campo nombre de usuario no puede estar vacío.");
                users = false;
                } else if (!valusers(username)) {
        $("#Username").attr("class", "form-group has-feedback has-error");
                $("#username01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#username02").removeClass("hidden");
                $("#username02").text("El formato del campo nombre de usuario es incorrecto.");
                users = false;
                } else {
        $("#Username").attr("class", "form-group has-feedback has-success");
                $("#username01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#username02").addClass("hidden");
                users = true;
                }

        if (pass == ""){
        $("#Pass1").attr("class", "form-group has-feedback has-error");
                $("#pass01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#pass02").removeClass("hidden");
                contrasenas = false;
                }if (repass == ""){
        $("#Pass2").attr("class", "form-group has-feedback has-error");
                $("#repass01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#repass02").removeClass("hidden");
                $("#repass02").text("El campo contraseña  no puede estar vacío");
                contrasenas = false;
                } else if (pass != repass){
        $("#Pass1").attr("class", "form-group has-feedback has-error");
                $("#pass01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#pass02").removeClass("hidden");
                $("#Pass2").attr("class", "form-group has-feedback has-error");
                $("#repass01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#repass02").removeClass("hidden");
                $("#repass02").text("Las contraseñas no coinciden");
                contrasenas = false;
                } else{
        $("#Pass1").attr("class", "form-group has-feedback has-success");
                $("#pass01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#pass02").addClass("hidden");
                $("#Pass2").attr("class", "form-group has-feedback has-success");
                $("#repass01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#repass02").addClass("hidden");
                contrasenas = true;
                }
        if (nombres && tipo && ages && users && contrasenas && boletas){                        
                return true;
        }else{        
        swal("huy...existen errores", "Revisa que no hallan errores","error");                
        return false;
    }
}

function limpiar() {
document.getElementById("RegistraLogin").reset();
}

function cerrarsesion(){           
    swal(
        {
         title: "Cerrando Sesion",   
         text: "Hasta pronto!!",   
         timer: 3000,   
         showConfirmButton: false });    
        var salir = document.getElementById('salir');
        salir.innerHTML = "<% session.removeAttribute('nombre');\n\
                              session.removeAtribute('pass'); \n\
                           %>";
        setTimeout ("redireccionar()",1000);
        
}

function redireccionar(){
    window.location="./index.jsp";
} 

function agregarva(){
       var nombres = false, contrasenas = false, tipo = false, ages = false, users = false,boletas = false;
        var nombre = $("#nombre").val();
        var appat = $("#appat").val();
        var apmat = $("#apmat").val();
        var id = $("#idUser").val();        
        var sexo = $('input[name=sexo]:checked', '#RegistraLogin').val();
        var edad = $("#edad").val();
        var username = $("#username").val();
        var pass = $("#pass").val();                
               function valname(name) {
                var ts = /^[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð -]+$/u;
                        return ts.test(name);
                }
        function valusers(name) {
        var ts = /^[a-zA-Z0-9àáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð -]+$/u;
                return ts.test(name);
                }
        function valedad(name) {
        var ts = /^[0-9]+$/;
                return ts.test(name);
                }
            function valboleta(boleta) {
	var ts = /^[0-9]{8,10}$/;
	return ts.test(boleta);
}

        if (nombre === "") {
        $("#Nombre").attr("class", "form-group has-feedback has-error");
                $("#nombre01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#nombre02").removeClass("hidden");
                $("#nombre02").text("El campo nombre no puede estar vacío.");
                nombres = false;
                } else if (!valname(nombre)) {
        $("#Nombre").attr("class", "form-group has-feedback has-error");
                $("#nombre01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#nombre02").removeClass("hidden");
                $("#nombre02").text("El formato del campo nombre  es incorrecto.");
                nombres = false;
                } else {
        $("#Nombre").attr("class", "form-group has-feedback has-success");
                $("#nombre01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#nombre02").addClass("hidden");
                nombres = true;
                }
//Apellido Paterno
        if (appat === "") {
        $("#Appaterno").attr("class", "form-group has-feedback has-error");
                $("#appat01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#appat02").removeClass("hidden");
                $("#appat02").text("El campo apellido paterno no puede estar vacío.");
                nombres = false;
                } else if (!valname(appat)) {
        $("#Appaterno").attr("class", "form-group has-feedback has-error");
                $("#appat01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#appat02").removeClass("hidden");
                $("#appat02").text("El formato del campo apellido paterno es incorrecto.");
                nombres = false;
                } else {
        $("#Appaterno").attr("class", "form-group has-feedback has-success");
                $("#appat01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#appat02").addClass("hidden");
                nombres = true;
                }
//Apellido Materno
        if (apmat === "") {
        $("#Apmaterno").attr("class", "form-group has-feedback has-error");
                $("#apmat01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#apmat02").removeClass("hidden");
                $("#apmat02").text("El campo apellido materno no puede estar vacío.");
                nombres = false;
                } else if (!valname(apmat)) {
        $("#Apmaterno").attr("class", "form-group has-feedback has-error");
                $("#apmat01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#apmat02").removeClass("hidden");
                $("#apmat02").text("El formato del campo apellido materno es incorrecto.");
                nombres = false;
                } else {
        $("#Apmaterno").attr("class", "form-group has-feedback has-success");
                $("#apmat01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#apmat02").addClass("hidden");
                nombres = true;
                }
                //validando boleta
                if(id === ""){                     
                $("#Boleta").attr("class", "form-group has-feedback has-error");
                $("#iduser01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#iduser02").removeClass("hidden");
                $("#iduser02").text("El campo boleta no puede estar vacío.");
                boletas = false;
                }else if (!valboleta(id)) {
                    $("#Boleta").attr("class", "form-group has-feedback has-error");
                    $("#iduser01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                    $("#iduser02").removeClass("hidden");
                    $("#iduser02").text("El formato del campo boleta es incorrecto.");
                    boletas = false;
                } else {
                    $("#Boleta").attr("class", "form-group has-feedback has-success");
                    $("#iduser01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                    $("#iduser02").addClass("hidden");
                    boletas = true;
                }
//Validando radio button        
            if ($('input[name="sexo"]').is(':checked')) {                   
                $("#Sexo").attr("class", "form-group has-feedback has-success");                
                $("#sexo02").addClass("hidden");
                    tipo = true;
            } else {
                swal("huy...error","Selecciona un sexo","error");                
                $("#Sexo").attr("class", "form-group has-feedback has-error");                
                $("#sexo02").removeClass("hidden");
                tipo = false;
            }               
//Validando edad
        if (edad === "") {
        $("#Edad").attr("class", "form-group has-feedback has-error");
                $("#edad01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#edad02").removeClass("hidden");
                $("#edad02").text("El campo edad no puede estar vacío.");
                ages = false;
                } else if (!valedad(edad)) {
        $("#Edad").attr("class", "form-group has-feedback has-error");
                $("#edad01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#edad02").removeClass("hidden");
                $("#edad02").text("El formato del campo edad es incorrecto.");
                ages = false;
                }else if(edad >= 10 && edad<= 130){
                $("#Edad").attr("class", "form-group has-feedback has-success");
                $("#edad01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#edad02").addClass("hidden");
                    ages = true;
                }else {
                        ages = false;
                }
//Validando el nombre del usuario
        if (username === "") {
        $("#Username").attr("class", "form-group has-feedback has-error");
                $("#username01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#username02").removeClass("hidden");
                $("#username02").text("El campo nombre de usuario no puede estar vacío.");
                users = false;
                } else if (!valusers(username)) {
        $("#Username").attr("class", "form-group has-feedback has-error");
                $("#username01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#username02").removeClass("hidden");
                $("#username02").text("El formato del campo nombre de usuario es incorrecto.");
                users = false;
                } else {
        $("#Username").attr("class", "form-group has-feedback has-success");
                $("#username01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#username02").addClass("hidden");
                users = true;
                }

        if (pass == ""){
        $("#Pass1").attr("class", "form-group has-feedback has-error");
                $("#pass01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#pass02").removeClass("hidden");
                $("#pass02").text("El formato de contraseña no puede estar vacio.");
                contrasenas = false;
                }else{
                $("#Pass1").attr("class", "form-group has-feedback has-success");
                $("#pass01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#pass02").addClass("hidden");                                
                contrasenas = true;
                }               
        if (nombres && tipo && ages && users && contrasenas && boletas){                        
                return true;
        }else{        
        swal("huy...existen errores", "Revisa que no hallan errores","error");                
        return false;
    }
}

function actualizava(){
       var nombres = false, contrasenas = false, tipo = false, ages = false, users = false,boletas = false,roles = false;
        var nombre = $("#nombre").val();
        var appat = $("#appat").val();
        var apmat = $("#apmat").val();
        var id = $("#idUser").val();        
        var sexo = $('input[name=sexo]:checked', '#RegistraLogin').val();
        var edad = $("#edad").val();
        var username = $("#username").val();
        var pass = $("#pass").val();                
        var rol = $("[name='roles']").val();
               function valname(name) {
                var ts = /^[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð -]+$/u;
                        return ts.test(name);
                }
        function valusers(name) {
        var ts = /^[a-zA-Z0-9àáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð -]+$/u;
                return ts.test(name);
                }
        function valedad(name) {
        var ts = /^[0-9]+$/;
                return ts.test(name);
                }
            function valboleta(boleta) {
	var ts = /^[0-9]{8,10}$/;
	return ts.test(boleta);
}

        if (nombre === "") {
        $("#Nombre").attr("class", "form-group has-feedback has-error");
                $("#nombre01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#nombre02").removeClass("hidden");
                $("#nombre02").text("El campo nombre no puede estar vacío.");
                nombres = false;
                } else if (!valname(nombre)) {
        $("#Nombre").attr("class", "form-group has-feedback has-error");
                $("#nombre01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#nombre02").removeClass("hidden");
                $("#nombre02").text("El formato del campo nombre  es incorrecto.");
                nombres = false;
                } else {
        $("#Nombre").attr("class", "form-group has-feedback has-success");
                $("#nombre01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#nombre02").addClass("hidden");
                nombres = true;
                }
//Apellido Paterno
        if (appat === "") {
        $("#Appaterno").attr("class", "form-group has-feedback has-error");
                $("#appat01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#appat02").removeClass("hidden");
                $("#appat02").text("El campo apellido paterno no puede estar vacío.");
                nombres = false;
                } else if (!valname(appat)) {
        $("#Appaterno").attr("class", "form-group has-feedback has-error");
                $("#appat01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#appat02").removeClass("hidden");
                $("#appat02").text("El formato del campo apellido paterno es incorrecto.");
                nombres = false;
                } else {
        $("#Appaterno").attr("class", "form-group has-feedback has-success");
                $("#appat01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#appat02").addClass("hidden");
                nombres = true;
                }
//Apellido Materno
        if (apmat === "") {
        $("#Apmaterno").attr("class", "form-group has-feedback has-error");
                $("#apmat01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#apmat02").removeClass("hidden");
                $("#apmat02").text("El campo apellido materno no puede estar vacío.");
                nombres = false;
                } else if (!valname(apmat)) {
        $("#Apmaterno").attr("class", "form-group has-feedback has-error");
                $("#apmat01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#apmat02").removeClass("hidden");
                $("#apmat02").text("El formato del campo apellido materno es incorrecto.");
                nombres = false;
                } else {
        $("#Apmaterno").attr("class", "form-group has-feedback has-success");
                $("#apmat01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#apmat02").addClass("hidden");
                nombres = true;
                }
                //validando boleta
                if(id === ""){                     
                $("#Boleta").attr("class", "form-group has-feedback has-error");
                $("#iduser01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#iduser02").removeClass("hidden");
                $("#iduser02").text("El campo boleta no puede estar vacío.");
                boletas = false;
                }else if (!valboleta(id)) {
                    $("#Boleta").attr("class", "form-group has-feedback has-error");
                    $("#iduser01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                    $("#iduser02").removeClass("hidden");
                    $("#iduser02").text("El formato del campo boleta es incorrecto.");
                    boletas = false;
                } else {
                    $("#Boleta").attr("class", "form-group has-feedback has-success");
                    $("#iduser01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                    $("#iduser02").addClass("hidden");
                    boletas = true;
                }
//Validando radio button        
            if ($('input[name="sexo"]').is(':checked')) {                   
                $("#Sexo").attr("class", "form-group has-feedback has-success");                
                $("#sexo02").addClass("hidden");
                    tipo = true;
            } else {
                swal("huy...error","Selecciona un sexo","error");                
                $("#Sexo").attr("class", "form-group has-feedback has-error");                
                $("#sexo02").removeClass("hidden");
                tipo = false;
            }               
//Validando edad
        if (edad === "") {
        $("#Edad").attr("class", "form-group has-feedback has-error");
                $("#edad01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#edad02").removeClass("hidden");
                $("#edad02").text("El campo edad no puede estar vacío.");
                ages = false;
                } else if (!valedad(edad)) {
        $("#Edad").attr("class", "form-group has-feedback has-error");
                $("#edad01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#edad02").removeClass("hidden");
                $("#edad02").text("El formato del campo edad es incorrecto.");
                ages = false;
                }else if(edad >= 10 && edad<= 130){
                $("#Edad").attr("class", "form-group has-feedback has-success");
                $("#edad01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#edad02").addClass("hidden");
                    ages = true;
                }else {
                        ages = false;
                }
//Validando el nombre del usuario
        if (username === "") {
        $("#Username").attr("class", "form-group has-feedback has-error");
                $("#username01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#username02").removeClass("hidden");
                $("#username02").text("El campo nombre de usuario no puede estar vacío.");
                users = false;
                } else if (!valusers(username)) {
        $("#Username").attr("class", "form-group has-feedback has-error");
                $("#username01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#username02").removeClass("hidden");
                $("#username02").text("El formato del campo nombre de usuario es incorrecto.");
                users = false;
                } else {
        $("#Username").attr("class", "form-group has-feedback has-success");
                $("#username01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#username02").addClass("hidden");
                users = true;
                }

        if (pass == ""){
        $("#Pass1").attr("class", "form-group has-feedback has-error");
                $("#pass01").attr("class", "glyphicon glyphicon-remove form-control-feedback");
                $("#pass02").removeClass("hidden");
                $("#pass02").text("El formato de contraseña no puede estar vacio.");
                contrasenas = false;
                }else{
                $("#Pass1").attr("class", "form-group has-feedback has-success");
                $("#pass01").attr("class", "glyphicon glyphicon-ok form-control-feedback");
                $("#pass02").addClass("hidden");                                
                contrasenas = true;
                }               
               if(rol == -1){
                   $("#Rol").attr("class", "form-group has-feedback has-error");								
               }else{
                   $("#Rol").attr("class", "form-group has-feedback has-success");								
                   roles = true;
               }
        if (nombres && tipo && ages && users && contrasenas && boletas && roles){                        
                return true;
        }else{        
        swal("huy...existen errores", "Revisa que no hallan errores","error");                
        return false;
    }
