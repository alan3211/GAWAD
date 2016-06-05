package com.geolitic.model;

import com.geolitic.POJO.LoginBean;
import java.beans.PropertyVetoException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.CookiesAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

public class AccionLogin implements SessionAware,CookiesAware,ServletRequestAware,ServletResponseAware{
    
    private String nombre;
    private String contra;
    private HttpServletRequest request = null;
    private HttpServletResponse response = null;
    private Map<String,Object> session;        
    private Map<String, String> cajagalletas;    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }
            
    public String execute() throws PropertyVetoException, SQLException, IOException{                
        LoginBean lb = new LoginBean();                 
        if(lb.validateUser(nombre,contra)){
            session.put("nombre",nombre);
            session.put("pass",contra);
            Cookie mi_nombre = new Cookie("nombre",nombre);
            Cookie mi_pass = new Cookie("pass",contra);
            mi_nombre.setMaxAge(60*24*30*365);
            mi_pass.setMaxAge(60*24*30*365);
            response.addCookie(mi_nombre);                                    
            response.addCookie(mi_pass); 
            if(cajagalletas == null) cajagalletas = new HashMap<>();
            else{
                cajagalletas.put("nombre", nombre);
                cajagalletas.put("pass", contra);                
            }
            int tipo = lb.tipousuario(nombre,contra);
            switch (tipo) {
                case 1:
                    return "Administrador";  //Si fue Administrador
                case 2:
                    return "Profesor"; //Si fue Profesor
                default:
                    return "Alumno"; //Si fue Alumno
            }            
        }else{
            return "Fracaso";
        }
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session = map;
    }
   
    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        request = hsr;
    }

    @Override
    public void setServletResponse(HttpServletResponse hsr) {
        response = hsr;
    }

    @Override
    public void setCookiesMap(Map<String, String> map) {
        cajagalletas = map;
    }
        
}
