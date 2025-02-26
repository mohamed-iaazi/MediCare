package com.medo.doctorrv.service;

public class LoginService {

    public static boolean login(String email, String password) {
     
        if (email == null || password == null) {
            return false;
        } else if (email.length()<4 || password.length()<8 || email.endsWith(".") ) {
            
        }

        return true;
    }

}
