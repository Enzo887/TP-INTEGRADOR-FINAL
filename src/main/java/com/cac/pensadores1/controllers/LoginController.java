package com.cac.pensadores1.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "login", value = "/login")
public class LoginController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uEmail = request.getParameter("email");
        String uPwd = request.getParameter("password");
        HttpSession session = request.getSession();
        RequestDispatcher disp = null;


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/conferencia", "root", "2005");
            final String QUERY = "SELECT * FROM usuarios WHERE email = ? AND password = ?";
            PreparedStatement ps = con.prepareStatement(QUERY);
            ps.setString(1, uEmail);
            ps.setString(2, uPwd);
            ResultSet rs = ps.executeQuery();



            if (rs.next()) {
                session.setAttribute("email", rs.getString("email"));
                session.setAttribute("nombre", rs.getString("nombre"));
                session.setAttribute("apellido", rs.getString("apellido"));
                session.setAttribute("password", rs.getString("password"));

                disp = request.getRequestDispatcher("index.jsp");
            } else {
                request.setAttribute("status", "failed");
                disp = request.getRequestDispatcher("login.jsp");

            }
            con.close();
            disp.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
