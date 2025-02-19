package com.medo.doctorrv.model;

import java.util.Date;

public class Appointement {

    private int id;
    private Date date ;
    private int time ;
    private  boolean status;

    public Appointement(int id, Date date, int time, boolean status) {
        this.id = id;
        this.date = date;
        this.time = time;
        this.status = status;
    }

    public Appointement() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
