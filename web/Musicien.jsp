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
                <div class="col-lg-offset-2 col-lg-8">               
                    <h2>Liste des offres :</h2>
                </div>

                <div id="moncadre" class="col-lg-offset-2 col-lg-8">

                    <div class="col-lg-offset-2 col-lg-8" >


                        <%            for (Offre o : offres) {
                        %>

                        <li> <p> Titre : <%= o.getTitre()%></p></li>                       
                        <li> <p> Métier :  <%= o.getMetier().getLibelle()%> </p> </li>
                        <li> <p> Référence :  <%= o.getReference()%> </p> </li>
                        <li> <p> Nombre de poste : <%= o.getNbr_poste()%> </p> </li>
                        <li> <p> Description du poste : <%= o.getDescription_poste()%> </p> </li>
                        <li>  <p> Description du profil :  <%= o.getDescription_profil()%> </p> </li>
                        <li> <p> Diffuseur : <%= o.getDiffuseur().getNom()%> </p> </li>
                        <p> ------------------------------ </p>

                        <%
                            }
                        %>
                    </div>
                </div>
            </div>


        </body>
    </div>
</html>