<%-- 
    Document   : castings
    Created on : 24 nov. 2014, 09:46:28
    Author     : Kévin
--%>

<%@page import="java.util.Collection"%>
<%@page import="entites.Offre"%>
<%@page import="entites.Offre"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <div id="moncadre2" class="col-lg-offset-2 col-lg-8" style="height: 979px;">
    <head>
        <meta charset="UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Castings</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
<!--------------------------------------------------HEADER--------------------------------------------------->

<div style="margin-top: 100px">

    
    
            <%

         Collection<Offre> offres = (Collection<Offre>) request.getAttribute("offres");
         
        %>
        
<div id="moncadre" class="col-lg-offset-2 col-lg-8">

    <div class="col-lg-offset-4 col-lg-8" >
        <h2>Liste des offres :</h2>
        
        <% 
        
        for(Offre o : offres) {
        %>

        <li> <p> Titre : </p> <%= o.getTitre() %></li>
        <p> Métier : <%= o.getMetier() %> </p>
        <p> Contrat :  <%= o.getContrat() %>  </p>
        <p> Référence :  <%= o.getReference() %> </p>
        <p> Nombre de poste :  <%= o.getNbr_poste() %> </p>
        <% 
        }
        %>
    </div>
     </div>
  </div>


    </body>
     </div>
</html>