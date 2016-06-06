package com.geolitic.model;

import com.geolitic.hibernate.HibernateUtil;
import com.geolitic.hibernate.User;
import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class ActualizaAction extends ActionSupport {
    
    private String idUser;
    private String nombre;
    private String appat;
    private String apmat;
    private String sexo;
    private String edad;
    private String username;
    private String pass;
    private int roles;
    private Session hibernateSession;
    private User usuario;

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAppat() {
        return appat;
    }

    public void setAppat(String appat) {
        this.appat = appat;
    }

    public String getApmat() {
        return apmat;
    }

    public void setApmat(String apmat) {
        this.apmat = apmat;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getRoles() {
        return roles;
    }

    public void setRoles(int roles) {
        this.roles = roles;
    }

    public Session getHibernateSession() {
        return hibernateSession;
    }

    public void setHibernateSession(Session hibernateSession) {
        this.hibernateSession = hibernateSession;
    }
    
   public String actualizar() throws Exception{
	
		hibernateSession=HibernateUtil.getSessionFactory().openSession(); 
		 
		 //Update
		Transaction t0 = hibernateSession.beginTransaction();	
		usuario = (User)hibernateSession.get(User.class,idUser);
                usuario.setIdUser(idUser);
                usuario.setName(nombre);
                usuario.setApPat(appat);
                usuario.setApMat(apmat);
                usuario.setSex(sexo);
                usuario.setAge(edad);
                usuario.setUsername(username);
                usuario.setPass(pass);
                usuario.setRol(roles);        
		hibernateSession.update(usuario);
		t0.commit();		
		return "actualizado";    	
    }    
}
