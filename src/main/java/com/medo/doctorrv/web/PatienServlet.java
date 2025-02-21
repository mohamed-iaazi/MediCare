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
import java.util.ArrayList;
import java.util.List;
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
                case  "/appointement":
                    list(req,resp);
                    break;
                case  "/loginForm":
                    RequestDispatcher login = req.getRequestDispatcher("Login.jsp");
                    login.forward(req, resp);
                        break;

                        case  "/login":
                            System.out.println("login called success");
                            list(req,resp);
                            break;
                default:
                    System.out.println("home loaded");
                    RequestDispatcher dispatcher = req.getRequestDispatcher("Home.jsp");
                    dispatcher.forward(req, resp);


                    break;

            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void list(HttpServletRequest req, HttpServletResponse resp) throws  ServletException ,IOException {

        List<Patient> patients =patienDao.selectAll();
        System.out.println(patients.size());
        req.setAttribute("patients", patients);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("Appointement.jsp");
        requestDispatcher.forward(req, resp);


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
        Patient patient = new Patient(username,email,address,doctor);
        patienDao.insertPatien(patient);
        resp.sendRedirect("./?success=1");


    }


}
