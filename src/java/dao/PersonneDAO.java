// Info : A cause de l'ID auto_incrémenté, je n'arrive pas à faire un Update. 
// Du coup, j'ai laissé en commentaire le code que j'ai voulu utiliser. Ne fonctionnant pas malgrés diverses tentatives, 
// j'ai fais un code avec des valeurs en dur pour voir si cela fonctionnait ou non, ce qui fut le cas.

package dao;

import entites.Adresse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import entites.Personne;

public class PersonneDAO {
	
	public static void creer(Connection cnx, Personne personne) throws Exception {
		
		Personne p = trouver(cnx, personne.getMail());
		//
		if(p != null) {
			throw new Exception(personne.getLogin() + " " + personne.getPassword()+ " existe déjà !");
		}
		
		Statement stmt = null;
		
		try {
			stmt = cnx.createStatement();
			stmt.executeUpdate("INSERT INTO Utilisateur (login, password, nom, prenom,age,mail,telephone,adr) "
					+ " VALUES ('" + personne.getLogin()
					+ "', '" + personne.getPassword()
					+ "', " + personne.getNom()
                                        + "', " + personne.getPrenom()
                                        + "', " + personne.getAge()
                                        + "', " + personne.getMail()
                                        + "', " + personne.getTelephone()
                                        + "', " + personne.getAdr()
					+ ")");

			ResultSet rs = stmt.executeQuery("SELECT MAX(ID) FROM Utilisateur");
			
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
		
		Personne p = trouver(cnx, personne.getMail());
		
		if(p != null) {
			try {
				throw new Exception(personne.getLogin()+ " " + personne.getPassword()+ " existe déjà !");
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		}
		
		
		Statement stmt = null;
		
		try {
			stmt = cnx.createStatement();	
			stmt.executeUpdate("UPDATE Utilisateur SET"
                                        + "Login = '"+ personne.getLogin() + "'"
                                        + ", password = '"+ personne.getPassword()+ "'"
					+ ", NOM = '" + personne.getNom() + "'"
					+ ", PRENOM = '" + personne.getPrenom() + "'"
					+ ", AGE = '" + personne.getAge() + "'"
                                        + ", mail = '" + personne.getMail() + "'"
                                        + ", telephone= '" + personne.getTelephone() + "'"
                                        + "', adr = '" + personne.getAdr() + "'"
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
			stmt.executeUpdate("DELETE FROM Utilisateur WHERE ID = " + personne.getId());
			
			ResultSet rs = stmt.executeQuery("SELECT MAX(ID) FROM Utilisateur");
			
						
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
    
    
    public static Personne trouver(Connection cnx, String mail) {
    	
    	Personne personne = null;
    	Statement stmt = null;
    	
    	try {
   		
    		stmt = cnx.createStatement();
    		
    		ResultSet rs = stmt.executeQuery("SELECT id,login,password,nom,prenom,age,mail,telephone,adr FROM Utilisateur WHERE mail = '" + mail);
    		
    		if (rs.next()) {
                        int idAdr = rs.getInt("id_adr");
                    
    			int id = rs.getInt("Id");
                        String login = rs.getNString("login");
                        String password = rs.getNString("password");
                        String nom = rs.getNString("nom");
                        String prenom = rs.getNString("prenom");                    
                        String telephone = rs.getNString("telephone");
    			int age = rs.getInt("AGE");
       			Adresse adr = AdresseDAO.trouver(cnx, idAdr);
    			
    			
    			personne = new Personne(nom,prenom,age,login,password,mail,telephone,adr);
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
