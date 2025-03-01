package com.medo.doctorrv.dao;

import com.medo.doctorrv.model.User;
import com.medo.doctorrv.utils.DatabaseUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegisterDao {

    static  public  boolean CreateAccount(User user) {
        String INSERT_USER ="insert into user" +
                            " (username , email ,password , numberPhone,role) " +
                           "values (? ,? ,? ,?,?)";

      try (Connection connection= DatabaseUtils.geConnection();
           PreparedStatement preparedStatement= connection.prepareStatement(INSERT_USER)) {

          preparedStatement.setString(1 , user.getUsername());
          preparedStatement.setString(2 ,user.getEmail() );
          preparedStatement.setString(3 ,user.getPassword());
          preparedStatement.setInt(4 ,user.getNumberPhone());
          preparedStatement.setString(5 ,user.getRole().getType());
          System.out.println("dao working  ");

          return true;



      } catch (Exception e) {
          throw new RuntimeException(e);
      }



    }
}
