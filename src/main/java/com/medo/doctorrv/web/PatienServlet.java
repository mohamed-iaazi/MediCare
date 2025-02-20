package com.medo.doctorrv.web;

import com.medo.doctorrv.dao.PatienDao;
import com.medo.doctorrv.model.Patient;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
@WebServlet("/")
public class PatienServlet extends HttpServlet {
    PatienDao patienDao ;

    @Override
    public void init()  {
        patienDao = new PatienDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action=req.getServletPath();

        try {


            switch (action) {
                case "/insert":

                    insertPatien(req, resp);
                    System.out.println("insert called success");
                    break;
                default:
                    System.out.println("home loaded");
                    RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
                    dispatcher.forward(req, resp);


                    break;

            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);

    }

    private void insertPatien(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {

        String username = req.getParameter("username");
        String email = req.getParameter("email");
        Date address = Date.valueOf(req.getParameter("date"));
        String doctor = req.getParameter("doctor");
        Patient patien = new Patient(username,email,address,doctor);
        patienDao.insertPatien(patien);

        resp.sendRedirect("./?success=1");


    }


}
