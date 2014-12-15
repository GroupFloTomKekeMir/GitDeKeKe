/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import dao.OffreDAO;
import dao.UtilisateurDAO;
import entites.Offre;
import entites.Utilisateur;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kévin
 */
@WebServlet(name = "servlet_casting", urlPatterns = {"/servlet_casting"})
public class servlet_casting extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Class.forName("com.mysql.jdbc.Driver");

        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }

        String url = "jdbc:mysql://localhost/megacasting";
        Connection cnx = null;
        int metier = 1;
        try {
            cnx = DriverManager.getConnection(url, "root", "");
            System.out.println("Connexion réussie !");

            String login = request.getParameter("identifiant");  // on récupérer  le champ "identifiant" de l'utilisateur      
            String password = request.getParameter("password"); // on récupère le champ "password" de l'utilisateur

            int ok = 0;
            for (metier = 0; metier < 6; metier++) {
                ok = OffreDAO.listerMusiciens(cnx, metier);
                request.setAttribute("ok", ok);
            }
            RequestDispatcher rd = request.getRequestDispatcher("castings.jsp");
            rd.forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {

            if (cnx != null) {
                try {
                    cnx.close();
                } catch (SQLException ex) {
                }
            }
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}