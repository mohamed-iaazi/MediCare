package com.medo.doctorrv.model;

import java.lang.reflect.Array;
import java.util.ArrayList;

public class Doctor extends  User
{
    private int id;
    private String specialisation;

    public Doctor(int id,String fullame, String email, String password, int numberPhone, String specialisation) {
        super(fullame, email, password, numberPhone);
        this.id = id;
        this.specialisation = specialisation;
    }

    public Doctor(String fullame, String email, String password, int numberPhone, String specialisation) {
        super(fullame, email, password, numberPhone);
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
