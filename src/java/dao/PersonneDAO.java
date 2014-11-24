// Info : A cause de l'ID auto_incrémenté, je n'arrive pas à faire un Update. 
// Du coup, j'ai laissé en commentaire le code que j'ai voulu utiliser. Ne fonctionnant pas malgrés diverses tentatives, 
// j'ai fais un code avec des valeurs en dur pour voir si cela fonctionnait ou non, ce qui fut le cas.

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import entites.Personne;

public class PersonneDAO {
	
	public static void creer(Connection cnx, Personne personne) throws Exception {
		
		Personne p = trouver(cnx, personne.getNom(), personne.getPrenom());
		//
		if(p != null) {
			throw new Exception(personne.getNom() + " " + personne.getPrenom() + " existe déjà !");
		}
		
		Statement stmt = null;
		
		try {
			stmt = cnx.createStatement();
			stmt.executeUpdate("INSERT INTO PERSONNE (NOM, PRENOM, AGE, ID_ADR) "
					+ " VALUES ('" + personne.getNom()
					+ "', '" + personne.getPrenom()
					+ "', " + personne.getAge()
					+ ")");

			ResultSet rs = stmt.executeQuery("SELECT MAX(ID) FROM PERSONNE");
			
			if(rs.next()) {
				int id = rs.getInt(1);
				personne.setId(id);
			}
			
		} catch (Exception ex) {
			
			ex.printStackTrace();
			
			System.out.println("Création échouée !");
		} finally {
	  		  
		  	   if (stmt != null) {
		  	    try {
		  	     stmt.close();
		  	  
		  	         } catch(SQLException ex) {
		  	     
		  	      }
		  	  }	 
		} 	   
	}

	public static void modifier(Connection cnx, Personne personne) {
		
		Personne p = trouver(cnx, personne.getNom(), personne.getPrenom());
		
		if(p != null) {
			try {
				throw new Exception(personne.getNom() + " " + personne.getPrenom() + " existe déjà !");
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		}
		
		
		Statement stmt = null;
		
		try {
			stmt = cnx.createStatement();	
			stmt.executeUpdate("UPDATE PERSONNE SET"
					+ " NOM = '" + personne.getNom() + "'"
					+ ", PRENOM = '" + personne.getPrenom() + "'"
					+ ", AGE = '" + personne.getAge() + "'"
					+ " WHERE ID = " + personne.getId());
			
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("Modification échouée !");
			
		} finally {
	  		  
		  	   if (stmt != null) {
		  	    try {
		  	     stmt.close();
		  	  
		  	         } catch(SQLException ex) {
		  	     
		  	      }
		  	  }	 
		}
	}
	
   public static void supprimer(Connection cnx, Personne personne) {
    	
	   Statement stmt = null;
    	  
	   try {
			stmt = cnx.createStatement();
			stmt.executeUpdate("DELETE FROM PERSONNE WHERE ID = " + personne.getId());
			
			ResultSet rs = stmt.executeQuery("SELECT MAX(ID) FROM PERSONNE");
			
						
		} catch (Exception ex) {
			
			ex.printStackTrace();
			
			System.out.println("Suppression échouée !");
		} finally {
	  		  
		  	   if (stmt != null) {
		  	    try {
		  	     stmt.close();
		  	  
		  	         } catch(SQLException ex) {
		  	     
		  	      }
		  	  }	 
		} 
    	  
    }
    
    
    public static Personne trouver(Connection cnx, String nom, String prenom) {
    	
    	Personne personne = null;
    	Statement stmt = null;
    	
    	try {
   		
    		stmt = cnx.createStatement();
    		
    		ResultSet rs = stmt.executeQuery("SELECT ID, AGE, ID_ADR FROM PERSONNE WHERE NOM = '" + nom + "'AND PRENOM = '" + prenom + "'");
    		
    		if (rs.next()) {
    			
    			int id = rs.getInt("ID");
    			int age = rs.getInt("AGE");
       			int id_adr = rs.getInt("ID_ADR");
    			
    			
    			personne = new Personne(nom, prenom, age);
    			personne.setAge(age);
    			personne.setId(id);
    			
    		}
    	} catch (Exception ex) {
    		ex.printStackTrace();
    	} finally {
  		  
  	   if (stmt != null) {
  	    try {
  	     stmt.close();
  	  
  	         } catch(SQLException ex) {
  	     
  	      }
  	 
  	   } 
  	   
  	} 
    	
    	return personne;
    }
}
