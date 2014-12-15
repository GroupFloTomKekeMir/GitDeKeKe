/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import dao.AdresseDAO;
import dao.UtilisateurDAO;
import static dao.UtilisateurDAO.trouverParLogin;
import static dao.UtilisateurDAO.trouverParMail;
import entites.Adresse;
import entites.Utilisateur;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "servlet_inscription", urlPatterns = {"/servlet_inscription"})
public class servlet_inscription extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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

        try {
            Class.forName("com.mysql.jdbc.Driver");

        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }

        String url = "jdbc:mysql://localhost/megacasting";
        Connection cnx = null;

        try {
            cnx = DriverManager.getConnection(url, "root", "");
            System.out.println("Connexion réussie !");

            String login = request.getParameter("identifiant");  // on récupérer  le champ "identifiant" de l'utilisateur      
            String password = request.getParameter("password"); // on récupère le champ "password" de l'utilisateur
            String password2 = request.getParameter("password2");
            String Nom = request.getParameter("nom");
            String Prenom = request.getParameter("prenom");
            int age = Integer.parseInt(request.getParameter("age"));          
            String mail = request.getParameter("email");
            String telephone = request.getParameter("telephone");
            int numero = Integer.parseInt(request.getParameter("numero"));
            String rue = request.getParameter("adresse");
            int codePostal = Integer.parseInt(request.getParameter("CP"));
            String ville = request.getParameter("ville");
            String nom_artiste = request.getParameter("nom_artiste");
            String description = request.getParameter("description");

            Utilisateur verifmail = trouverParMail(cnx, mail);
            Utilisateur veriflogin = trouverParLogin(cnx, login);

            String messageMail = "";
            String messageLogin ="";
            String messageMdp ="";

            if (verifmail != null && !mail.matches("([^.@]+)(\\\\.[^.@]+)*@([^.@]+\\\\.)+([^.@]+)") || mail != null) {
                // throw new Exception("'" + mail + "' existe déja !");
                messageMail = "mail incorrect";
                request.setAttribute("messageMail", messageMail);
                RequestDispatcher rd = request.getRequestDispatcher("inscription.jsp");
                rd.forward(request, response);
            }

            if (veriflogin != null || login != null) {
                messageLogin = "Login incorrect";
                request.setAttribute("messageLogin", messageLogin);
                RequestDispatcher rd = request.getRequestDispatcher("inscription.jsp");
                rd.forward(request, response);
            }

            if (!password.equals(password2)) {
                messageMdp = "MDP incorrect";
                request.setAttribute("messageMdp", messageMdp);
                RequestDispatcher rd = request.getRequestDispatcher("inscription.jsp");
                rd.forward(request, response);
            }

            boolean creation = UtilisateurDAO.creer(cnx, numero, rue, codePostal, ville, login, password, password2, Nom, Prenom, age, mail, telephone, description, nom_artiste);
            request.setAttribute("creation", creation);
            if (creation == true) {
                //  response.sendRedirect("connexion.jsp");
                RequestDispatcher rd = request.getRequestDispatcher("connexion.jsp");
                rd.forward(request, response);
            } else {
                response.sendRedirect("inscription.jsp");

            }

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
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
