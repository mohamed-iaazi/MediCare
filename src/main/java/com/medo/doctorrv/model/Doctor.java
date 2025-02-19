package com.medo.doctorrv.model;

import java.lang.reflect.Array;
import java.util.ArrayList;

public class Doctor {
    private int id;
    private String name;
    private  ArrayList<Appointement> Appointements;

    public Doctor(int id, String name, ArrayList<Appointement> appointements) {
        this.id = id;
        this.name = name;
        Appointements = appointements;
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

    public ArrayList<Appointement> getAppointements() {
        return Appointements;
    }

    public void setAppointements(ArrayList<Appointement> appointements) {
        Appointements = appointements;
    }
}
