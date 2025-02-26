package com.medo.doctorrv.dao;

import com.medo.doctorrv.model.User;
import com.medo.doctorrv.utils.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {

    final static   private  String SELECT_BY_USER = "select * from user ";

    public  static boolean getUserDatabase(String username , String password) {




            try (Connection connection= ConnectionUtils.geConnection(); PreparedStatement preparedStatement=connection.prepareStatement(SELECT_BY_USER)) {

                ResultSet resultSet=preparedStatement.executeQuery();

                while (resultSet.next()) {
                    if (resultSet.getString("username").equals(username) && resultSet.getString("password").equals(password)) {

                        System.out.println(resultSet.getString("username")+"suucess" +"local user name is "+username);
                        return true;


                    }
                }







            } catch (Exception e) {
                throw new RuntimeException(e);
            }





        return false;
    }

}
