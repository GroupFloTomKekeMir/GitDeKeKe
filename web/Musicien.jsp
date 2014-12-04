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
    <head>
        <meta charset="UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Castings</title>
    </head>
    <body>
       <header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="./" class="navbar-brand">MegaCasting</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav"> 
        <li>
          <a href="musiques.jsp">Musiquess</a>
        </li>
        <li class="active">
          <a href="evenements.jsp">Evènements</a>
        </li>
        <li>
          <a href="boutique.jsp">Boutique</a>
        </li>
        <li class="active">
          <a href="spectacles.jsp">Spectacles</a>
        </li>
        <li>
          <a href="castings.jsp">Castings</a>
        </li>
        <li class="active">
          <a href="connexion.jsp">Connexion</a>
        </li>       
        <li>
          <a href="inscription.jsp">Inscription</a>
        </li>
      </ul>
    </nav>
  </div>
</header>
<!--------------------------------------------------HEADER--------------------------------------------------->

<div style ="margin-top:  150px">
        <li><a href="#">Amis <span>340</span></a>
            <ul>
                     <li>
                    <% 
                        Offre offre = (Offre) request.getAttribute("offre");                      
                       Collection<Offre> offres = (Collection<Offre>) request.getAttribute("offres");     
                     %>
                </li>
<h2>Liste des offres :</h2>
        <ul>
        <% 
        
        for(Offre o : offres) {
        %>
        
        <li> <%= "Offre : " + o.getTitre()  %></li>

        <% 
        }
        %>
        </ul>  

            </ul>
        </li>

</div>
<!--------------------------------------------------FOOTER--------------------------------------------------->
        <footer class="row">
            
        </footer>
    </body>
</html>