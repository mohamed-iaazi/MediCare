package com.medo.doctorrv.model;

import java.sql.Date;

public class Patient  extends User{
    private  int Patient_id;

    public Patient(int id, String fullame, String email, String password, int numberPhone, Role role) {
        super(id, fullame, email, password, numberPhone, role);
    }

    public Patient(int id, String fullame, String email, String password, int numberPhone, Role role, int patient_id) {
        super(id, fullame, email, password, numberPhone, role);
        Patient_id = patient_id;
    }

    public Patient() {
    }

    public int getPatient_id() {
        return Patient_id;

    }
    public void setPatient_id(int patient_id) {
        Patient_id = patient_id;
    }
}
