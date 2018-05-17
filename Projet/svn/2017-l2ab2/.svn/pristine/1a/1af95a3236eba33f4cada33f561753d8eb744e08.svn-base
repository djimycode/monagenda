package main.formulaire;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

import main.ech.insert;

@WebServlet(name = "confirmer")
public class confirmer extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Connection connection = null;
        String hamza = "djimy";
        Statement stmt = null;
        PreparedStatement preparedStatement = null;
        request.setAttribute("nom", request.getParameter("nom"));
        request.setAttribute("prenom",request.getParameter("prenom"));
        request.setAttribute("pseudo",request.getParameter("pseudo"));
        request.setAttribute("mail",request.getParameter("mail"));
        request.setAttribute("password",request.getParameter("password"));
        request.setAttribute("confirm_password",request.getParameter("confirm_password"));
        String mail=request.getParameter("nom");
        try {
            connection = insert.getConnection();


            preparedStatement = connection.prepareStatement("INSERT INTO webapp.New_users " + "VALUES ( NULL,NULL,'"+mail+"','"+mail+"','"+mail+"','"+mail+"','"+mail+"')");

            preparedStatement = connection.prepareStatement("INSERT INTO webapp.users " + "VALUES ( NULL,'"+mail+"','"+request.getParameter("password")+"')");

            preparedStatement.executeUpdate();

            System.out.println("INSERT INTO webapp.Utilisateurs \" + \"VALUES ( 19,'\"+request.getParameter(\"nom\")+\"','\"+request.getParameter(\"prenom\")+\"','\"+hamza+\"','\"+hamza+\"')");
            System.out.println("INSERT INTO webapp.users \" + \"VALUES ( NULL,'\"+request.getParameter(\"nom\")+\"','\"+request.getParameter(\"prenom\")+\"')\")");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}