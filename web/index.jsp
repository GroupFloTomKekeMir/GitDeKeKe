<%-- 
    Document   : index
    Created on : 24 nov. 2014, 09:40:27
    Author     : Kévin
--%>

<%@page import="entites.Utilisateur"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Megacasting</title>
    </head>
    <body >
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
      <ul class="nav navbar-nav navbar-right"> 
        <li>
          <a href="musiques.jsp">Musiques</a>
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
<!-------------------------------------------HEADER -------------------------------------------------------->     
 

<div class="row" style="margin-top: 150px;">  
    <div id="moncadre" class="col-lg-offset-3 col-lg-6">
            <h1 id="titre"> Musiques</h1>
        <div class="col-lg-4">
            <div class="thumbnail" id="ok">
                <h3>Musique 1</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>  
        </div>
            
        <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Musique 2</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
            
        <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Musique 3</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
                    <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Musique 4</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
                    <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Musique 5</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
                    <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Musique 6</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
    </div>
</div>     
<!-------------------------------------------------------------------------->

<div class="row" style="margin-top: 150px;">  
    <div id="moncadre" class="col-lg-offset-3 col-lg-6">
            <h1 id="titre"> Castings</h1>
        <div class="col-lg-4">
            <div class="thumbnail" id="ok">
                <h3>Casting 1</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>  
        </div>
            
        <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Casting 2</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
            
        <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Casting 3</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
                    <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Casting 4</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
                    <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Casting 5</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
                    <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Casting 6</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
    </div>
</div>     

<!-------------------------------------------------------------------------->

<div class="row" style="margin-top: 150px;">  
    <div id="moncadre" class="col-lg-offset-3 col-lg-6">
            <h1 id="titre"> Évenements</h1>
        <div class="col-lg-4">
            <div class="thumbnail" id="ok">
                <h3>Évenement 1</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>  
        </div>
            
        <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Évenement 2</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
            
        <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Évenement 3</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
                    <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Évenement 4</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
                    <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Évenement 5</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
                    <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Évenement 6</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
    </div>
</div>     

<!-------------------------------------------------------------------------->

<div class="row" style="margin-top: 150px;">  
    <div id="moncadre" class="col-lg-offset-3 col-lg-6">
            <h1 id="titre"> Spectacles</h1>
        <div class="col-lg-4">
            <div class="thumbnail" id="ok">
                <h3>Spectacle 1</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>  
        </div>
            
        <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Spectacle 2</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
            
        <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Spectacle 3</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
                    <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Spectacle 4</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
                    <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Spectacle 5</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
                    <div class="col-lg-4">
            <div class="thumbnail" id="ok2">
                <h3>Spectacle 6</h3>
                <p><a href="#" class="btn btn-primary" role="button">Voir</a></p>
            </div>
        </div>
    </div>
</div>     



        
<!-------------------------------------------FOOTER -------------------------------------------------------->        
        <footer class="row">

        </footer>
    </body>
</html>
