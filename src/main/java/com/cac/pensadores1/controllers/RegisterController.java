package com.cac.pensadores1.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */

    /**
     *  Movi el cierre de conexion dentro del catch que ejecuta la query
     * Ya que la excepction debe contener todos las ejecuciones que puedas realizar.
     * Ademas de que la redireccion depende de tu rowCont declarado dentro del try.
     - El sql de resources te levanta la bdd entera segun como vi que la estabas haciendo.
     - Cambie el nombre de algunas variables usando camelCase
     - Los estilos de tus jps se deben a que estan mal importadas las rutas de estas.
     */

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uNombre = request.getParameter("nombre");
        String uApellido = request.getParameter("apellido");
        String uEmail = request.getParameter("email");
        String uPwd = request.getParameter("password");
        RequestDispatcher disp = null;
        Connection con = null;


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/conferencia", "root","2005");
            final String STATEMENT = "INSERT INTO usuarios (nombre, apellido, email, password) VALUES (?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(STATEMENT);
            pst.setString(1, uNombre);
            pst.setString(2, uApellido);
            pst.setString(3, uEmail);
            pst.setString(4, uPwd);

            int rowCount = pst.executeUpdate();
            con.close();
            disp = request.getRequestDispatcher("login.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }

            disp.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}