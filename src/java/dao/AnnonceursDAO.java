/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.AdresseDAO;
import entites.Adresse;
import entites.Annonceur;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Enzo
 */
public class AnnonceursDAO {
    
        public static void creer(Connection cnx, Annonceur annonceur) throws Exception{
            
                Annonceur ann = trouver(cnx, annonceur.getNom());
		if(ann != null){
			throw new Exception("'" + annonceur.getNom() + "' existe déja !");
		}
		
		AdresseDAO.creer(cnx, annonceur.getAdresse());
		
		Statement stmt = null;
		try{
			
			stmt = cnx.createStatement();
			stmt.executeUpdate("INSERT INTO annonceur (nom, adresse, mail, telephone) Values ('" + annonceur.getNom() + "', '" + annonceur.getAdresse().getId() + "', " + annonceur.getMail() + ", " + annonceur.getNumeroTel()+ ")" );                 
			
			ResultSet rs = stmt.executeQuery("SELECT MAX(id) FROM annonceur");
			if (rs.next()){
				int id = rs.getInt(1);
				annonceur.setId(id);
			}
			
			
			
		}catch(Exception ex){
			ex.printStackTrace();
			System.out.println("Echec creer annonceur");
		}finally{
			if(stmt != null){
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}		
	}
        
        public static Annonceur trouver(Connection cnx, String nom){
		Annonceur annonceur = null;
		Statement stmt = null;
		try{			
			stmt = cnx.createStatement();
			ResultSet rs = stmt.executeQuery("Select id_annonceur, adresse, mail, telephone From Personne WHERE nom = '" + nom + "';");
			if(rs.next()){
				int idAdr = rs.getInt("adresse");
				
				Adresse adr = AdresseDAO.trouver(cnx, idAdr);
				int id = rs.getInt("id_annonceur");
				String mail = rs.getString("mail");
                                String numeroTel = rs.getString("telephone");
				annonceur = new Annonceur(nom, adr, mail, numeroTel);
				
				annonceur.setId(id);				
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
			System.out.println("Echec trouver annonceur");
		}finally{
			if(stmt != null){
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}		
		return annonceur;
	}
        
        public static Annonceur trouver(Connection cnx, int id){
		Annonceur annonceur = null;
		Statement stmt = null;
		try{			
			stmt = cnx.createStatement();
			ResultSet rs = stmt.executeQuery("Select nom, adresse, mail, telephone From Personne WHERE id_annonceur = '" + id + "';");
			if(rs.next()){
				int idAdr = rs.getInt("adresse");
				
				Adresse adr = AdresseDAO.trouver(cnx, idAdr);
				String nom = rs.getString("nom");
				String mail = rs.getString("mail");
                                String numeroTel = rs.getString("telephone");
				annonceur = new Annonceur(nom, adr, mail, numeroTel);
				
				annonceur.setId(id);				
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
			System.out.println("Echec trouver annonceur");
		}finally{
			if(stmt != null){
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}		
		return annonceur;
	}
        
        public static void supprimer(Connection cnx, Annonceur annonceur){
		
		Statement stmt = null;
		try{			
			stmt = cnx.createStatement();
			stmt.executeUpdate("DELETE FROM annonceur WHERE id_annonceur = " + annonceur.getId() );
		
			AdresseDAO.supprimer(cnx, annonceur.getAdresse());
		}catch(Exception ex){
			ex.printStackTrace();
			System.out.println("Echec supprimer annonceur");
		}finally{
			if(stmt != null){
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	public static ArrayList<Annonceur> lister(Connection cnx){
		
		ArrayList<Annonceur> liste = new ArrayList<>();
		
		Statement stmt = null;
		try{			
			stmt = cnx.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT id_annonceur, nom, adresse, mail, numeroTel FROM annonceur");
			while(rs.next()){
				int id = rs.getInt("id_annonceur");
				String nom = rs.getString("nom");
				String mail = rs.getString("mail");
				String numeroTel = rs.getString("numeroTel");
				
				Adresse adresse =AdresseDAO.trouver(cnx, id);
				
				Annonceur annonceur= new Annonceur(nom, adresse, mail, numeroTel);
				annonceur.setMail(mail);
				annonceur.setId(id);
				
				liste.add(annonceur);				
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
			System.out.println("Echec lister annonceur");
		}finally{
			if(stmt != null){
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return liste;
	}
}