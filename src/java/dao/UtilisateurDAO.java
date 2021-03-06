/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entites.Adresse;
import entites.Utilisateur;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Enzo
 */
public class UtilisateurDAO {
    
    public static boolean creer (Connection cnx,int numero,String rue, int codePostal, String ville,String login,String password,String password2,String nom,String prenom,int age,String mail,String telephone,String description,String nom_artiste)throws Exception {
    

       Statement stmt = null;
        
       int id=0;

        try{
             id = AdresseDAO.creer(cnx, numero, rue, codePostal, ville);
            stmt = stmt = cnx.createStatement();
            stmt.executeUpdate("INSERT INTO Utilisateur ( login, password, nom, prenom, nom_artiste, age, mail, telephone,id_adresse, descr_util) "
                + "Values ('" + login + "', '" + password + "', '" +  nom + "', '" + prenom + "', '" + nom_artiste + "', '" + age + "', '" 
                + mail + "', '" + telephone + "', '" + id + "','" + description + "');" );
            
            return true;
 
        }

        catch(Exception ex){
                ex.printStackTrace();
                System.out.println("Echec creer offre");
                return false;
        }

        finally{
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
       
        
    }
    
    
    public static Utilisateur trouver(Connection cnx, String nom_artiste){
        Utilisateur utilisateur = null;
        Statement stmt = null;
        try{			
            stmt = cnx.createStatement();
            ResultSet rs = stmt.executeQuery("Select nom, prenom, age, mail, telephone, id_adresse, descr_util From utilisateur WHERE nom_artiste = '" + nom_artiste + "';");
            if(rs.next()){
                int idAdr = rs.getInt("idAdr");

                Adresse adresse = AdresseDAO.trouver(cnx , idAdr);
                String login = rs.getString("login");
                String password = rs.getString("password");
                String nom = rs.getString("nom");
                String prenom = rs.getString("prenom");
                String mail = rs.getString("mail");
                String telephone = rs.getString("telephone");
                String descr_util = rs.getString("descr_util");
                int age = rs.getInt("age");
                int id = rs.getInt("id");

                utilisateur = new Utilisateur(login, password, nom, prenom, nom_artiste, age, mail, telephone, adresse, descr_util);
                utilisateur.setId(id);
            }	
        }
        catch(Exception ex){
                ex.printStackTrace();
                System.out.println("Echec trouver personne");
        }finally{
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return utilisateur;
    }
    
    public static Utilisateur trouverParMailEtMDP(Connection cnx, String login, String password){
        Utilisateur utilisateur = null;
        Statement stmt = null;
        try{			
            stmt = cnx.createStatement();
            String query = "Select login, password , nom, prenom, nom_artiste, age, mail, telephone, id_adresse, descr_util From utilisateur WHERE login ='" + login + "'AND password ='" + password + "';";
            ResultSet rs = stmt.executeQuery(query);
            if(rs.next()){
                int idAdr = rs.getInt("id_adresse");

                Adresse adresse = AdresseDAO.trouver(cnx , idAdr);
                String mail = rs.getString("mail");
                String nom = rs.getString("nom");
                String prenom = rs.getString("prenom");
                String nom_artiste = rs.getString("nom_artiste");
                String telephone = rs.getString("telephone");
                String descr_util = rs.getString("descr_util");
                int age = rs.getInt("age");
                

                utilisateur = new Utilisateur(login, password, nom, prenom, nom_artiste, age, mail, telephone, adresse, descr_util);
            }	
        }
        catch(Exception ex){
                ex.printStackTrace();
                System.out.println("Echec trouver personne");
        }finally{
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return utilisateur;
    }
    
        public static Utilisateur trouverParMail(Connection cnx,String mail){
        Utilisateur utilisateur = null;
        Statement stmt = null;
        try{			
            stmt = cnx.createStatement();
            String query = "Select login, password , nom, prenom, nom_artiste, age, mail, telephone, id_adresse, descr_util From utilisateur WHERE mail ='" + mail + "';";
            ResultSet rs = stmt.executeQuery(query);
            if(rs.next()){
                int idAdr = rs.getInt("id_adresse");

                Adresse adresse = AdresseDAO.trouver(cnx , idAdr);
                String login = rs.getString("login");
                String password = rs.getString("password");
                String nom = rs.getString("nom");
                String prenom = rs.getString("prenom");
                String nom_artiste = rs.getString("nom_artiste");
                String telephone = rs.getString("telephone");
                String descr_util = rs.getString("descr_util");
                int age = rs.getInt("age");
                

                utilisateur = new Utilisateur(login, password, nom, prenom, nom_artiste, age, mail, telephone, adresse, descr_util);
            }	
        }
        catch(Exception ex){
                ex.printStackTrace();
                System.out.println("Echec trouver personne");
        }finally{
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return utilisateur;
    }
        
        
        public static Utilisateur trouverParLogin(Connection cnx,String login){
        Utilisateur utilisateur = null;
        Statement stmt = null;
        try{			
            stmt = cnx.createStatement();
            String query = "Select login, password , nom, prenom, nom_artiste, age, mail, telephone, id_adresse, descr_util From utilisateur WHERE login ='" + login + "';";
            ResultSet rs = stmt.executeQuery(query);
            if(rs.next()){
                int idAdr = rs.getInt("id_adresse");

                Adresse adresse = AdresseDAO.trouver(cnx , idAdr);
                String mail = rs.getString("mail");
                String password = rs.getString("password");
                String nom = rs.getString("nom");
                String prenom = rs.getString("prenom");
                String nom_artiste = rs.getString("nom_artiste");
                String telephone = rs.getString("telephone");
                String descr_util = rs.getString("descr_util");
                int age = rs.getInt("age");
                

                utilisateur = new Utilisateur(login, password, nom, prenom, nom_artiste, age, mail, telephone, adresse, descr_util);
            }	
        }
        catch(Exception ex){
                ex.printStackTrace();
                System.out.println("Echec trouver personne");
        }finally{
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return utilisateur;
    }
    
   //
    
    
    public static Utilisateur trouver(Connection cnx, int id){
        Utilisateur utilisateur = null;
        Statement stmt = null;
        try{			
            stmt = cnx.createStatement();
            ResultSet rs = stmt.executeQuery("Select login, password, nom, prenom, nom_artiste, age, mail, telephone, id_adresse, descr_util "
                    + "From utilisateur "
                    + "WHERE id_util = '" + id + "';");
            if(rs.next()){
                int idAdr = rs.getInt("idAdr");

                Adresse adresse = AdresseDAO.trouver(cnx , idAdr);
                String login = rs.getString("login");
                String password = rs.getString("password");
                String nom_artiste = rs.getString("nom_artiste");
                String nom = rs.getString("nom");
                String prenom = rs.getString("prenom");
                String mail = rs.getString("mail");
                String telephone = rs.getString("telephone");
                String descr_util = rs.getString("descr_util");
                int age = rs.getInt("age");

                utilisateur = new Utilisateur(login, password, nom, prenom, nom_artiste, age, mail, telephone, adresse, descr_util);
                utilisateur.setId(id);
            }	
        }
        catch(Exception ex){
                ex.printStackTrace();
                System.out.println("Echec trouver utilisateur");
        }finally{
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return utilisateur;
    }
}
