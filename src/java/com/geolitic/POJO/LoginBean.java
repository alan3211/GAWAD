package com.geolitic.POJO;

import java.beans.PropertyVetoException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginBean {

    private String nombre = "";
    private String pass = "";
    private String tipo = "";

    private Connection con = null;
    private Statement s = null;
    private ResultSet rs = null;

    public boolean validateUser(String name, String password) throws PropertyVetoException, SQLException, IOException {
        try {
            con = DataSource.getInstance().getConnection();
            s = con.createStatement();
            rs = s.executeQuery("SELECT username,pass FROM user WHERE username = '" + name + "' and pass = '" + password + "';");
            while (rs.next()) {
                nombre = rs.getString("username");
                pass = rs.getString("pass");
            }
        } catch (SQLException es) {
        }
        if (nombre.compareTo(name) == 0) {
            if (pass.compareTo(password) == 0) {
                return true;
            }
        }
        return false;
    }

    public int tipousuario(String name, String password) throws IOException, PropertyVetoException, SQLException {
        con = DataSource.getInstance().getConnection();
        s = con.createStatement();
        rs = s.executeQuery("SELECT Rol FROM user WHERE username = '" + name + "' and pass = '" + password + "';");
        if (rs.next()) {
            int tipouser = Integer.parseInt(rs.getString("Rol"));                              
            return tipouser;
        }
        return 0;
    }
}
