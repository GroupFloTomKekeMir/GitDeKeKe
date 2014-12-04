/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

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
import org.apache.openejb.server.httpd.HttpRequest;

/**
 *
 * @author Kévin
 */
@WebServlet(name = "servlet_connexion", urlPatterns = {"/servlet_connexion"})
public class servlet_connexion extends HttpServlet {

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
                        
		}
		
		catch(ClassNotFoundException ex){
			ex.printStackTrace();
		}
                
		String url = "jdbc:mysql://localhost/test";
		Connection cnx = null;
		
		try {			
			cnx = DriverManager.getConnection(url, "root", "");
			System.out.println("Connexion réussie !");
                        
             String mail = request.getParameter("identifiant");  // on récupérer  le champ "identifiant" de l'utilisateur      
             String password = request.getParameter("password"); // on récupère le champ "password" de l'utilisateur
             
            dao.UtilisateurDAO utilisateurDAO = new dao.UtilisateurDAO();
            Utilisateur utilisateur = utilisateurDAO.trouverParMail(cnx,mail); // On recherche l'utilisateur en fonction de son mail
            //
            if(utilisateurDAO == null) { // s'il n'existe pas
               PrintWriter out = response.getWriter();
               out.println("NOK");
               out.close();
            } else {   // s'il existe
                
             
              HttpSession session = request.getSession(); // On créer la session
            

              
                       
              session.setAttribute("mail", mail); // on enregistre dans la session le mail de l'utilisateur
              session.setAttribute("password", password); // on enregistre dans la session le mot de passe de l'utilisateur
           
                response.sendRedirect("evenements.jsp"); // une fois la connexion effectué et la session créé on le redirige vers la page evenement
            }
           
                
            }
            catch (Exception ex) 
            {
                ex.printStackTrace();
            }
            finally{
        
        
                    if(cnx != null){
                            try{
                                cnx.close();
                               }
                            catch(SQLException ex){  }   
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
