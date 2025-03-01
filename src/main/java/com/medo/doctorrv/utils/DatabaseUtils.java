package com.medo.doctorrv.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DatabaseUtils {

    private  static final String url ="jdbc:mysql://localhost:3306/doctordb?useSSL=false";
    private static final String user="root";
    private static final String password="root";
    private static final   String driver="com.mysql.jdbc.Driver";


    public static Connection geConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");

            try {
                connection = DriverManager.getConnection(url, user, password);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }


        return connection;
    }


}
