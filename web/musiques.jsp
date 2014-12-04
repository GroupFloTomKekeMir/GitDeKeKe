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
        <ul
      <a href="./" class="navbar-brand">MegaCasting</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav navbar-right"> 
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

<div class="row" style="margin-top: 150px;">     
    <div id="moncadre" class="col-lg-offset-3 col-lg-6">    
        <div class="row">            
            <div class="col-lg-2">            
                <p id="recherche">Recherche  </p>       
            </div>         
            <div class="col-lg-1">
                <label for = "recherche_artiste">Artiste </label>                
            </div>    
            <div class="col-lg-1">
                <input type="text" id="recherche_artiste" name="recherche_artiste"/>                 
            </div>  
            <div class="col-lg-offset-2 col-lg-1">
                <label for = "recherche_titre">Titre </label>                
            </div>    
            <div class="col-lg-1">
                <input type="text" id="recherche_titre" name="recherche_titre"/>                 
            </div> 
            <div class="col-lg-offset-2 col-lg-1">
                <input type="submit" id="submit" name="submit"/>                 
            </div> 
        </div> 
        
        
        <div class="row">
            <div class="col-lg-2">
                <p id="affichage"> Affichage </p>
            </div>
            <div class="col-lg-3">
                <input type="checkbox" name="choix1" value="1"> Plus populaire
            </div>
            <div class="col-lg-3">
                <input type="checkbox" name="choix1" value="1"> Plus ancienne
            </div>
                        <div class="col-lg-3">
                <input type="checkbox" name="choix1" value="1"> Nouveauté
            </div>
                        <div class="col-lg-3">
                <input type="checkbox" name="choix1" value="1"> Genre
            </div>
        </div>
    </div>
    
</div>

<div class="row" style="margin-top: 150px;">     
    <div id="moncadre" class="col-lg-offset-3 col-lg-6">  
        <div class="col-lg-3">
        <iframe width="250" height="150" src="//www.youtube.com/embed/6ACl8s_tBzE" frameborder="0" allowfullscreen></iframe>
        </div>
        <div class=" col-lg-offset-2 col-lg-3">
            <p>Anticonstitutionnellement Ceci est une petite description de test. La description ne devra pas être très longue car lorsuq'on clique sur le boutton on en a une détaillé</p>
        </div>
        <div class=" col-lg-offset-2 col-lg-2">
            <p><a href="#" class="btn btn-primary" role="button">En savoir plus</a></p>
        </div>
    </div> 
</div>

<div class="row" style="margin-top: 150px;">     
    <div id="moncadre" class="col-lg-offset-3 col-lg-6">  
        <div class="col-lg-3">
        <iframe width="250" height="150" src="//www.youtube.com/embed/ij4nFuIAxbY" frameborder="0" allowfullscreen></iframe>
        </div>
        <div class=" col-lg-offset-2 col-lg-3">
            <p>Anticonstitutionnellement Ceci est une petite description de test. La description ne devra pas être très longue car lorsuq'on clique sur le boutton on en a une détaillé</p>
        </div>
        <div class=" col-lg-offset-2 col-lg-2">
            <p><a href="#" class="btn btn-primary" role="button">En savoir plus</a></p>
        </div>
    </div> 
</div>

<div class="row" style="margin-top: 150px;">     
    <div id="moncadre" class="col-lg-offset-3 col-lg-6">  
        <div class="col-lg-3">
        <iframe width="250" height="150" src="//www.youtube.com/embed/bmXumtgwtak" frameborder="0" allowfullscreen></iframe>
        </div>
        <div class=" col-lg-offset-2 col-lg-3">
            <p>Anticonstitutionnellement Ceci est une petite description de test. La description ne devra pas être très longue car lorsuq'on clique sur le boutton on en a une détaillé</p>
        </div>
        <div class=" col-lg-offset-2 col-lg-2">
            <p><a href="#" class="btn btn-primary" role="button">En savoir plus</a></p>
        </div>
    </div> 
</div>

<!--------------------------------------------------FOOTER--------------------------------------------------->
        <footer>
            <div class="col-lg-12">
               <div class="col-lg-3">
                  <h6>Copyright &copy; 2014 MegaProduction </h6>
               </div>
               <div class="col-lg-3">
                   <h6>A propos</h6>
		   <p>Quare talis improborum consensio non modo e</p>
               </div>
               <div class="col-lg-3">
                   <h6>Navigation</h6>
				<ul class="unstyled">
					<li><a href="#">Home</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Liens</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
               </div>
               <div class="col-lg-3">
                  <h6>Suivez nous</h6>
				<ul class="unstyled">
					<li><a href="#">Twitter</a></li>
					<li><a href="#">Facebook</a></li>
					<li><a href="#">Google +</a></li>
				</ul> 
               </div>
                
            </div>          
            
        </footer>
    </body>
</html>
