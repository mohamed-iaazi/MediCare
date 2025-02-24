package com.medo.doctorrv.dao;

import com.medo.doctorrv.model.Patient;
import com.medo.doctorrv.utils.ConnectionUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PatienDao {


    private  String INSERT_PATIEN="insert into patien  (username,email,date,doctor)values (?,?,?,?)";
    private  String SELECT_ALL="select * from  patien";

    public void  insertPatien(Patient patient) throws SQLException{
    try (Connection connection = ConnectionUtils.Connection(); PreparedStatement preparedStatement= connection.prepareStatement(INSERT_PATIEN)) {

        preparedStatement.setString(1,patient.getName());
        preparedStatement.setString(2,patient.getEmail());
        preparedStatement.setDate(3,patient.getDate());
        preparedStatement.setString(4,patient.getDoctor());

        preparedStatement.executeUpdate();

    } catch (Exception e) {
        throw new RuntimeException(e);
    }

}


public List<Patient> selectAll(){

        List<Patient> patients= new ArrayList<>();
        try (Connection connection=ConnectionUtils.Connection();PreparedStatement preparedStatement=connection.prepareStatement(SELECT_ALL)) {


            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                String username= resultSet.getString("username");
                String email= resultSet.getString("email");
                Date date= resultSet.getDate("date");
                String doctor= resultSet.getString("doctor");
                patients.add(new Patient(username,email,date,doctor));

            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return patients;

}


}
