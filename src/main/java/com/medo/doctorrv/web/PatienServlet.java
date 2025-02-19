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

        String action = req.getParameter("action");

        if (action == null) {
                action = "home";
        }
        try {


            switch (action) {
                case "/save":

                    insertPatien(req, resp);
                    System.out.println("save success");

                    break;
                default:

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
        String phone = req.getParameter("doctor");

        Patient patien = new Patient(username,email,address,phone);
        patienDao.insertPatien(patien);
        resp.sendRedirect("./");

    }


}
