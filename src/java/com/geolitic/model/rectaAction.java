/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geolitic.model;

import com.opensymphony.xwork2.ActionSupport;
import org.hibernate.Session;

/**
 *
 * @author Berenice
 */
public class rectaAction extends ActionSupport{
    private int punto1x;
    private int punto1y;

    public int getPunto1x() {
        return punto1x;
    }

    public void setPunto1x(int punto1x) {
        this.punto1x = punto1x;
    }

    public int getPunto1y() {
        return punto1y;
    }

    public void setPunto1y(int punto1y) {
        this.punto1y = punto1y;
    }

    public int getPunto2x() {
        return punto2x;
    }

    public void setPunto2x(int punto2x) {
        this.punto2x = punto2x;
    }

    public int getPunto2y() {
        return punto2y;
    }

    public void setPunto2y(int punto2y) {
        this.punto2y = punto2y;
    }
    private int punto2x;
    private int punto2y;
    
    
     public String execute() throws Exception {   
         return "figura";
     }
    
     
    
}
