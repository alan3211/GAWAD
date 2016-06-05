package com.geolitic.model;

import com.geolitic.hibernate.HibernateUtil;
import com.geolitic.hibernate.User;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import org.hibernate.Session;

public class ExtraccionAction extends ActionSupport {
    
    private ArrayList<User> usuarios;
	Session hibernateSession;
	
	public ArrayList<User> getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(ArrayList<User> usuarios) {
		this.usuarios = usuarios;
	}

	@SuppressWarnings("unchecked")
	public String usuarios() throws Exception{
		
		hibernateSession = HibernateUtil.getSessionFactory().openSession();
		hibernateSession.beginTransaction();
	
		usuarios = (ArrayList<User>) hibernateSession.createQuery("from user").list();
		if(usuarios.isEmpty())
			return null;
		else
			return "tabla";
    }
	        
}
