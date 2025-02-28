package com.medo.doctorrv.model;

import java.sql.Date;

public class Patient  extends User{
    private  int id;

    public Patient(int id, String fullame, String email, String password, int numberPhone, Role role) {
        super(id, fullame, email, password, numberPhone, role);
    }

    public Patient(int id, String fullame, String email, String password, int numberPhone, Role role, int id1) {
        super(id, fullame, email, password, numberPhone, role);
        this.id = id1;
    }

    public Patient() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
