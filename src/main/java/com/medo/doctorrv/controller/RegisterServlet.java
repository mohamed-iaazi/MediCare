package com.medo.doctorrv.controller;

import com.medo.doctorrv.model.Doctor;
import com.medo.doctorrv.model.Patient;
import com.medo.doctorrv.model.Role;
import com.medo.doctorrv.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        int numberPhone = Integer.parseInt(req.getParameter("numberPhone"));
        String role = req.getParameter("role");


        if (role.equals("Doctor")) {
            String specialization = req.getParameter("specialization");
            User user=new Doctor();

            Doctor doctor = new Doctor(1,username,password,email,numberPhone,specialization,new Role("Doctor"));

            System.out.println(doctor.getRole().getType());
        }
        else {
            Patient patient=new Patient(1,username,password,email,numberPhone,new Role("Patient"));
            System.out.println(patient.toString());
        }






    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
