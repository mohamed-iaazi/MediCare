package com.medo.doctorrv.model;

import java.lang.reflect.Array;
import java.util.ArrayList;

public class Doctor extends  User
{
    private int Doctor_id;
    private String specialisation;


    public Doctor(int id, String fullame, String email, String password, int numberPhone, Role role, String specialisation) {
        super(id, fullame, email, password, numberPhone, role);
        this.specialisation = specialisation;
    }

    public Doctor(int id, String fullame, String email, String password, int numberPhone, Role role, int doctor_id, String specialisation) {
        super(id, fullame, email, password, numberPhone, role);
        Doctor_id = doctor_id;
        this.specialisation = specialisation;
    }

    public Doctor() {
    }




    public String getSpecialisation() {
        return specialisation;
    }

    public void setSpecialisation(String specialisation) {
        this.specialisation = specialisation;
    }
}
