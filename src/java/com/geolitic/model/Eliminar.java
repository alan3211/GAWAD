package com.geolitic.model;

import com.geolitic.hibernate.HibernateUtil;
import com.geolitic.hibernate.User;
import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Eliminar extends ActionSupport {

    private static final long serialVersionUID = 1L;
    private String idUser;
    Session hibernateSession;
    User user;

    public Session getHibernateSession() {
        return hibernateSession;
    }

    public void setHibernateSession(Session hibernateSession) {
        this.hibernateSession = hibernateSession;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }
 
    public String eliminar() throws Exception {
        hibernateSession = HibernateUtil.getSessionFactory().openSession();
        //Delete
        Transaction t1 = hibernateSession.beginTransaction();
        user = (User) hibernateSession.get(User.class, idUser);
        hibernateSession.delete(user);
        t1.commit();
        return "eliminado";

    }

}
