package com.medo.doctorrv.model;

public class User {
    private String fullame;
    private String email;
    private String password;
    private int numberPhone;

    public User(String fullame, String email, String password, int numberPhone) {
        this.fullame = fullame;
        this.email = email;
        this.password = password;
        this.numberPhone = numberPhone;
    }

    public User() {
    }

    public String getFullame() {
        return fullame;
    }

    public void setFullame(String fullame) {
        this.fullame = fullame;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(int numberPhone) {
        this.numberPhone = numberPhone;
    }
}
