package com.medo.doctorrv.dao;

import com.medo.doctorrv.model.Patient;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PatienDao {

    private  String url ="jdbc:mysql://localhost:3306/doctordb?useSSL=false";
    private  String user="root";
    private  String password="root";
    private  String INSERT_PATIEN="insert into patien" + "  (username,email,date,doctor)values"+" (?,?,?,?)";




protected Connection getconection() throws SQLException {
    Connection connection= null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");


        try {
            connection = DriverManager.getConnection(url, user, password);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    } catch (Exception e){
        throw new RuntimeException(e);
    }
    return connection;
}

public void  insertPatien(Patient patient) throws SQLException{
    try (Connection connection = getconection(); PreparedStatement preparedStatement= connection.prepareStatement(INSERT_PATIEN)) {

        preparedStatement.setString(1,patient.getName());
        preparedStatement.setString(2,patient.getEmail());
        preparedStatement.setDate(3,patient.getDate());
        preparedStatement.setString(4,patient.getDoctor());

        preparedStatement.executeUpdate();

    } catch (Exception e) {
        throw new RuntimeException(e);
    }

}


}
