// Info : A cause de l'ID auto_incrémenté, je n'arrive pas à faire un update. 
// Du coup, j'ai laissé en commentaire le code que j'ai voulu utiliser. Ne fonctionnant pas malgrés diverses tentatives, 
// j'ai fais un code avec des valeurs en dur pour voir si cela fonctionnait ou non, ce qui fut le cas. 
// Il me manquait juste la façon de récupérer l'ID auto_incrémenté.

package dao;

import entites.Adresse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class AdresseDAO {

	public static void creer(Connection cnx, Adresse adr) {
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = cnx.prepareStatement("INSERT INTO Adresse"
				    + " (numero, rue, codePostal, ville)"
					+ " VALUES (?, ?, ?, ?)");
			
			pstmt.setInt(1, adr.getNumero());
			pstmt.setString(2, adr.getRue());
			pstmt.setInt(3, adr.getCodePostal());
			pstmt.setString(4, adr.getVille());
			
			
			pstmt.executeUpdate();
			
			ResultSet rs = pstmt.executeQuery("SELECT MAX(ID_ADR) FROM ADRESSE");
			
			if(rs.next()) {
				int id = rs.getInt(1);
				adr.setId(id);
			}
			
			
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("Création échouée !");
		}
	}
	
	//Correction
	
	public static void modifier(Connection cnx, Adresse adr) {
		Statement stmt = null;
		
		try {
			
			stmt = cnx.createStatement();
			stmt.executeUpdate("UPDATE Adresse SET Numero=" + adr.getNumero() + " , Rue='" + adr.getRue() + "' ,code_Postal" + adr.getCodePostal() + " ,Ville='" + adr.getVille() + "'WHERE id=" + adr.getId() + ";");
			
			
		} catch (Exception ex) {
			
			ex.printStackTrace();
			
		}
	}
	
	// Correction
	
	public static void supprimer(Connection cnx, Adresse adr) {
		
		Statement stmt = null;
		
		try {
			
			stmt = cnx.createStatement();
			stmt.executeUpdate("DELETE FROM Adresse WHERE id=" + adr.getId() + ";");
			
			
		} catch (Exception ex) {
			
			ex.printStackTrace();
			
		}
	}
	
//    public static void modifier(Connection cnx, Adresse adr) {
//		
//		PreparedStatement pstmt = null;
//		
//		try {
//			
////			pstmt.executeUpdate("UPDATE Adresse SET numero = ?, rue = ?, codePostal = ?, ville = ? WHERE id_adr= ?");
////			
//						
////			pstmt.setInt(1, adr.getNumero());
////			pstmt.setString(2, adr.getRue());
////			pstmt.setInt(3, adr.getCodePostal());
////			pstmt.setString(4, adr.getVille());
////			pstmt.setInt(5, adr.getId());
//			
//			pstmt.executeUpdate("UPDATE ADRESSE SET NUMERO = '26', RUE = 'test', CODEPOSTAL = '85201', VILLE = 'laval' WHERE ID_ADR = 6");
//			
//			pstmt.executeUpdate();
//			
//		} catch (Exception ex) {
//			ex.printStackTrace();
//			System.out.println("Modification échouée !");
//		}
//	}
    
//    public static void supprimer(Connection cnx, Adresse adr) {
//    	
//    	PreparedStatement pstmt = null;
//    	  
//    	  try {
//    	   
////   	    pstmt = cnx.prepareStatement("DELETE FROM Adresse WHERE ID_ADR = ?"); 
////    	    pstmt.setInt(1, adr.getId());
//
//    		pstmt = cnx.prepareStatement("DELETE FROM Adresse WHERE ID_ADR = 6");
//    	    pstmt.executeUpdate();
//
//    	    
//    	 } catch(Exception ex) {
//    		 
//    	   ex.printStackTrace();
//    	   
//    	   System.out.println("Suppression échouée !");
//    	   
//    	  } finally {
//    		  
//    	   if (pstmt != null) {
//    	    try {
//    	     pstmt.close();
//    	  
//    	         } catch(SQLException ex) {
//    	     
//    	      }
//    	 
//    	   } 
//    	   
//    	} 
//    	  
//    }
    
	//Correction
	
	public static ArrayList<Adresse> lister(Connection cnx) {
		
		ArrayList<Adresse> ListAdresse = new ArrayList();
		Statement stmt = null;
		
		try {
			
			stmt = cnx.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT ID_ADR, NUMERO, RUE, CODEPOSTAL, VILLE FROM Adresse");
			
			while (rs.next()) {
				int id_adr = rs.getInt("1");
				int numero = rs.getInt("2");
				String rue = rs.getString("3");
				int codePostal = rs.getInt("4");
				String ville = rs.getString("5");
				
				Adresse adrresult = new Adresse(rue, codePostal, ville);
				adrresult.setNumero(numero);
				adrresult.setId(id_adr);
				System.out.println(numero + ", " + rue + ", " + codePostal + ", " + ville + ".");
				
			}
			
			
		} catch (Exception ex) {
			
			ex.printStackTrace();
			
		}
		
		return ListAdresse;
	}
	
//    public static void lister(Connection cnx, Adresse adr) throws SQLException {
//    	
//    	Statement stmt = null;
//    	stmt = cnx.createStatement();
//		ResultSet rs = stmt.executeQuery("SELECT NUMERO, RUE, CODEPOSTAL, VILLE FROM Adresse");
//		
//		while (rs.next()) {
//			int numero = rs.getInt("NUMERO");
//			String rue = rs.getString("RUE");
//			int codePostal = rs.getInt("CODEPOSTAL");
//			String ville = rs.getString("VILLE");
//			
//			System.out.println(numero + ", " + rue + ", " + codePostal + ", " + ville + ".");
//			
//		}
//    }
	
	// Correction
	
	public static Adresse trouver(Connection cnx, int id_adr) {
		
		Adresse adresse = null;
		Statement stmt = null;
		
		try {
			
			stmt = cnx.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT NUMERO, RUE, CODEPOSTAL, VILLE FROM Adresse WHERE id_adr= " + id_adr);
			
			if (rs.next()) {
				
				int numero = rs.getInt("NUMERO");
				String rue = rs.getString("RUE");
				int codePostal = rs.getInt("CODEPOSTAL");
				String ville = rs.getString("VILLE");
				
				Adresse adrresult = new Adresse(rue, codePostal, ville);
				adrresult.setNumero(numero);
				adrresult.setId(id_adr);
				System.out.println(numero + ", " + rue + ", " + codePostal + ", " + ville + ".");
				
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
		
		return adresse;
		
	}
    	
}


