package com.geolitic.hibernate;
// Generated 4/06/2016 11:32:32 PM by Hibernate Tools 4.3.1



/**
 * User generated by hbm2java
 */
public class User  implements java.io.Serializable {


     private String idUser;
     private String name;
     private String apPat;
     private String apMat;
     private String age;
     private String sex;
     private String username;
     private String pass;
     private int rol;

    public User() {
    }

    public User(String idUser, String name, String apPat, String apMat, String age, String sex, String username, String pass, int rol) {
       this.idUser = idUser;
       this.name = name;
       this.apPat = apPat;
       this.apMat = apMat;
       this.age = age;
       this.sex = sex;
       this.username = username;
       this.pass = pass;
       this.rol = rol;
    }
   
    public String getIdUser() {
        return this.idUser;
    }
    
    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getApPat() {
        return this.apPat;
    }
    
    public void setApPat(String apPat) {
        this.apPat = apPat;
    }
    public String getApMat() {
        return this.apMat;
    }
    
    public void setApMat(String apMat) {
        this.apMat = apMat;
    }
    public String getAge() {
        return this.age;
    }
    
    public void setAge(String age) {
        this.age = age;
    }
    public String getSex() {
        return this.sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
    }
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPass() {
        return this.pass;
    }
    
    public void setPass(String pass) {
        this.pass = pass;
    }
    public int getRol() {
        return this.rol;
    }
    
    public void setRol(int rol) {
        this.rol = rol;
    }




}

