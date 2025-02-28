package com.medo.doctorrv.model;

import java.lang.reflect.Array;
import java.util.ArrayList;

public class Doctor extends  User
{
    private int id;
    private String specialisation;

    public Doctor(int id, String fullame, String email, String password, int numberPhone, String specialisation) {
        super(id, fullame, email, password, numberPhone);
        this.specialisation = specialisation;
    }

    public Doctor(int id, String fullame, String email, String password, int numberPhone, int id1, String specialisation) {
        super(id, fullame, email, password, numberPhone);
        this.id = id1;
        this.specialisation = specialisation;
    }
    public Doctor() {
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSpecialisation() {
        return specialisation;
    }

    public void setSpecialisation(String specialisation) {
        this.specialisation = specialisation;
    }
}
