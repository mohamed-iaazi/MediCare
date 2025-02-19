package com.medo.doctorrv.model;

import java.sql.Date;

public class Patient {
    private  int id;
    private  String name;
    private  String email;
    private java.sql.Date date;
    private  String Doctor;

    public Patient(String name, String email, java.sql.Date date, String doctor) {
        this.name = name;
        this.email = email;
        this.date = date;
        Doctor = doctor;
    }

    public Patient(int id, String name, String email, java.sql.Date date, String doctor) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.date = date;

    }



    public Patient() {
    }

    public int getId() {

        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public java.sql.Date getDate() {
        return (java.sql.Date) date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDoctor() {
        return Doctor;
    }

    public void setDoctor(String doctor) {
        Doctor = doctor;
    }
}
