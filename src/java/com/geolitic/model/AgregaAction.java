package com.geolitic.model;

import com.geolitic.hibernate.HibernateUtil;
import com.geolitic.hibernate.User;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class AgregaAction extends ActionSupport {
    
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
    private ArrayList<User> usuarios;

    public ArrayList<User> getUsuarios() {
        return usuarios;
    }

    public void setUsuarios(ArrayList<User> usuarios) {
        this.usuarios = usuarios;
    }
           
    public Session getHibernateSession() {
        return hibernateSession;
    }

    public void setHibernateSession(Session hibernateSession) {
        this.hibernateSession = hibernateSession;
    }

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

    public int getRol() {
        return roles;
    }

    public void setRol(int rol) {
        this.roles = rol;
    }
            
    @Override
    public String execute() throws Exception {        
      
       hibernateSession=HibernateUtil.getSessionFactory().openSession(); 
       if(hibernateSession != null){
        //Insert
        Transaction t0=hibernateSession.beginTransaction();
        User user0 = new User();        
        user0.setIdUser(idUser);
        user0.setName(nombre);
        user0.setApPat(appat);
        user0.setApMat(apmat);
        user0.setSex(sexo);
        user0.setAge(edad);
        user0.setUsername(username);
        user0.setPass(pass);
        user0.setRol(roles);
        hibernateSession.save(user0);
        t0.commit();        
        return "Agregado";    
       }else{
           return "Fallo";
       }
    }
}
