<%-- 
    Document   : castings
    Created on : 24 nov. 2014, 09:46:28
    Author     : Kévin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
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
        
<div class="row">
  <div class="col-lg-offset-3 col-lg-2" style ="margin-top: 150px">
    <div class="thumbnail" class ="col-lg-3">
      <img data-src="holder.js/300x300" >
      <div class="caption">
        <h3>Musiciens</h3>
        <p>Découvrez toutes les annonces pour les musiciens</p>
        <p>Il y a [x] annonces</p>
        <form method="POST" action="servlet_musicien">
        <p><input type="submit" id="submit">En savoir plus</p>
        </form>
      </div>
    </div>
  </div>


  <div class="col-lg-2" style ="margin-top: 150px">
    <div class="thumbnail">
      <img data-src="holder.js/300x300" >
      <div class="caption">
        <h3>Danseurs</h3>
        <p>Découvrez toutes les annonces pour les danseurs</p>
        <p>Il y a [x] annonces</p>
        <p><a href="#" class="btn btn-primary" role="button">En savoir plus</a></p>
      </div>
    </div>
  </div>
    
    <div class=" col-lg-2" style ="margin-top: 150px">
    <div class="thumbnail">
      <img data-src="holder.js/300x300" >
      <div class="caption">
        <h3>Chorégraphes</h3>
        <p>Découvrez toutes les annonces pour les chorégraphes</p>
        <p>Il y a [x] annonces</p>
        <p><a href="#" class="btn btn-primary" role="button">En savoir plus</a></p>
      </div>
    </div>
  </div> 
    
</div>


<div class="row">
  <div class="col-lg-offset-3 col-lg-2" style ="margin-top: 80px">
    <div class="thumbnail" class ="col-lg-3">
      <img data-src="holder.js/300x300" >
      <div class="caption">
        <h3>Compositeurs</h3>
        <p>Découvrez toutes les annonces pour les compositeurs</p>
        <p>Il y a [x] annonces</p>
        <p><a href="#" class="btn btn-primary" role="button">En savoir plus</a></p>
      </div>
    </div>
  </div>


  <div class="col-lg-2" style ="margin-top: 80px">
    <div class="thumbnail">
      <img data-src="holder.js/300x300" >
      <div class="caption">
        <h3>Réalisateurs</h3>
        <p>Découvrez toutes les annonces pour les réalisateurs</p>
        <p>Il y a [x] annonces</p>
        <p><a href="#" class="btn btn-primary" role="button">En savoir plus</a></p>
      </div>
    </div>
  </div>
    
    <div class=" col-lg-2" style ="margin-top: 80px">
    <div class="thumbnail">
      <img data-src="holder.js/300x300" >
      <div class="caption">
        <h3>Photographes</h3>
        <p>Découvrez toutes les annonces pour les photographes</p>
        <p>Il y a [x] annonces</p>
        <p><a href="#" class="btn btn-primary" role="button">En savoir plus</a></p>
      </div>
    </div>
  </div> 
    
</div>



















<!--------------------------------------------------FOOTER--------------------------------------------------->
        <footer class="row">
            
        </footer>
    </body>
</html>
