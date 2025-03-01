package com.medo.doctorrv.dao;

import com.medo.doctorrv.utils.DatabaseUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {

    final static   private  String SELECT_BY_USER = "select * from user where username = ?";

    public  static boolean getUserByUsernameAndPassword(String username , String password) {

            try (Connection connection= DatabaseUtils.geConnection(); PreparedStatement preparedStatement=connection.prepareStatement(SELECT_BY_USER)) {

                preparedStatement.setString(1,username);

                try(ResultSet resultSet=preparedStatement.executeQuery()) {

                    System.out.println(resultSet+username+password);

                    if ((resultSet.next())){

                        String pass=resultSet.getString("password");
                        System.out.println("return "+password.equals(pass));
                        return password.equals(pass);
                    }

                } catch (Exception e) {
                    throw new RuntimeException(e);
                }

            } catch (Exception e) {
                throw new RuntimeException(e);
            }





        return false;
    }

}
