package com.geolitic.POJO;

import java.beans.PropertyVetoException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import org.apache.commons.dbcp.BasicDataSource;

public class DataSource {

    private static DataSource ds;
    private BasicDataSource bds;

    //Patron singlenton
    private DataSource() throws IOException, PropertyVetoException, SQLException {
        bds = new BasicDataSource();
        bds.setDriverClassName("org.gjt.mm.mysql.Driver");
        bds.setUsername("root");
        bds.setPassword("admin");
        bds.setUrl("jdbc:mysql://localhost:3306/BaseGeolitic");
        //Configuraciones
        bds.setMinIdle(5);
        bds.setMaxIdle(20);
        bds.setMaxOpenPreparedStatements(180);
    }

    public static DataSource getInstance() throws IOException, PropertyVetoException, SQLException {
        if (ds == null) {
            ds = new DataSource();
            return ds;
        } else {
            return ds;
        }
    }

    public Connection getConnection() throws SQLException {
        return bds.getConnection();
    }
   
}
