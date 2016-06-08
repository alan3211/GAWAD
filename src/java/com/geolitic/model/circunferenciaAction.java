/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geolitic.model;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Berenice
 */
public class circunferenciaAction extends ActionSupport{
    private int radio;

    public int getRadio() {
        return radio;
    }

    public void setRadio(int radio) {
        this.radio = radio;
    }
    
     public String execute() throws Exception {   
         return "figura1";
     }
    
}
