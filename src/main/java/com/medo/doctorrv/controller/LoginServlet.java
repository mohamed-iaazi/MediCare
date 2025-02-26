package com.medo.doctorrv.controller;

import com.medo.doctorrv.dao.LoginDao;
import com.medo.doctorrv.service.LoginService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (LoginService.login(username,password)) {
            resp.setContentType("text/html;charset=utf-8");
            resp.getWriter().write("success");
        }
        else {
            resp.setContentType("text/html;charset=utf-8");
            resp.getWriter().write("fail");
        }

    }
}
