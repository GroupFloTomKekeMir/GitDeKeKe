<%-- 
    Document   : spectacles
    Created on : 24 nov. 2014, 09:46:14
    Author     : Kévin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Spectacles</title>
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
<!--------------------------------------------------HEADER---------------------------------------------------> 

<div class="contain" style="margin-top: 150px;">
    
    <form method="POST" action="" id="Forme">
        
        <div class="row">
            <div class="col-lg-offset-5 col-lg-2">
                    <h1> Spectacles </h1>
            </div>    
        </div>
        
        <div class="row ">                       
                            <div class="form-group">
                                <div class="col-lg-offset-4 col-lg-1">
                                    <label for="disabledSelect" >Genre</label>
                                </div>
                                <div class="col-lg-2">
                                    <select id="disabledSelect" class="form-control">
                                        <option>Voir BDD</option>
                                        <option>Voir BDD</option>
                                        <option>Voir BDD</option>
                                        <option>Voir BDD</option>
                                        <option>Voir BDD</option>
                                        <option>Voir BDD</option>
                                    </select>
                                </div>
                                <div class="col-lg-1">
                                    <input class="form-control" id="Input" type="text" placeholder="Date">
                                </div>
                                <div class="col-lg-1">
                                    <button type="button" class="btn btn-default">Valider</button>
                                </div>
                            </div>
        </div>
        
        <div class="row">
            <div class="row">
                <div class="col-lg-offset-3 col-lg-3" id="contenuRecherche">
                       Contenu de la recherche<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu<br />
                       Contenu
                </div>
            </div> 
            
        </div>
    </form> 
</div>
   

<!--------------------------------------------------FOOTER---------------------------------------------------> 
<footer> 
<div id="footer">
    <div class ="container">
        <div class="row">
            hello
            
        </div>
    </div>    
</div> 
</footer>
    </body>
</html>