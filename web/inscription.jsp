<%-- 
    Document   : inscription
    Created on : 24 nov. 2014, 10:23:08
    Author     : Kévin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Inscription</title>
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
        
        
<div class="contain" style="margin-top : 60px;">
    
    <form method="POST" action="">

        <div class="row" style ="margin-bottom: 70px; margin-top: 150px; margin-left: 100px; ">
            <div class="col-lg-5">
                <div class="row">
                    <div class="col-lg-offset-10 col-lg-2">
                        <h1> Inscription </h1>
                    </div>
                </div>
             </div>
        </div>
    
        <div class="row">	
            <div class="col-lg-offset-4 col-lg-9" style ="margin-bottom: 40px">
                <div class="col-lg-1">
                    <label for = "identifiant">Login : </label>
                </div>
                <div class="col-lg-2">
                    <input name="identifiant" id="identifiant" type="text" />
                </div>			
            </div>
	</div>

    <div class="row">
        <div class="col-lg-offset-4 col-lg-9" style ="margin-bottom: 40px">			
            <div class="col-lg-1">
                <label for = "password">Mot de passe : </label>                                    
             </div>
             <div class="col-lg-2">
                <input name="password" id="password" type="password" />
        </div>
	</div>
    </div>
      
    <div class="row">
        <div class="col-lg-offset-4 col-lg-9" style ="margin-bottom: 20px">			
            <div class="col-lg-1">
                <label for = "password2">Confirmer : </label>                                    
             </div>
             <div class="col-lg-2">
                <input name="password2" id="password" type="password" />
        </div>
	</div>
    </div>
        
    <div class="row">	
            <div class="col-lg-offset-4 col-lg-9" style ="margin-bottom: 40px">
                <div class="col-lg-1">
                    <label for = "nom">Nom : </label>
                </div>
                <div class="col-lg-2">
                    <input name="nom" id="nom" type="text" />
                </div>			
            </div>
    </div>
        
        <div class="row">	
            <div class="col-lg-offset-4 col-lg-9" style ="margin-bottom: 40px">
                <div class="col-lg-1">
                    <label for = "prenom">Prénom : </label>
                </div>
                <div class="col-lg-2">
                    <input name="prenom" id="prenom" type="text" />
                </div>			
            </div>
        </div>
        
    <div class="row">	
            <div class="col-lg-offset-4 col-lg-9" style ="margin-bottom: 40px">
                <div class="col-lg-1">
                    <label for = "age">Age : </label>
                </div>
                <div class="col-lg-2">
                    <input name="age" id="age" type="text" />
                </div>			
            </div>
    </div>
        
    <div class="row">	
            <div class="col-lg-offset-4 col-lg-9" style ="margin-bottom: 40px">
                <div class="col-lg-1">
                    <label for = "email">Adresse e-mail : </label>
                </div>
                <div class="col-lg-2">
                    <input name="email" id="email" type="text" />
                </div>			
            </div>
    </div>  
        
    <div class="row">	
            <div class="col-lg-offset-4 col-lg-9" style ="margin-bottom: 40px">
                <div class="col-lg-1">
                    <label for = "telephone">Téléphone : </label>
                </div>
                <div class="col-lg-2">
                    <input name="telephone" id="telephone" type="text" />
                </div>			
            </div>
    </div>    
     
    <div class="row">	
            <div class="col-lg-offset-4 col-lg-9" style ="margin-bottom: 40px">
                <div class="col-lg-1">
                    <label for = "adresse">Adresse : </label>
                </div>
                <div class="col-lg-2">
                    <input name="adresse" id="adresse" type="text" />
                </div>			
            </div>
    </div>
        
    <div class="row">	
            <div class="col-lg-offset-4 col-lg-9" style ="margin-bottom: 40px">
                <div class="col-lg-1">
                    <label for = "description">Description : </label>
                </div>
                <div class="col-lg-2">
                    <input name="description" id="description" type="text" />
                </div>			
            </div>
    </div>  
        
    <div class="row">	
            <div class="col-lg-offset-4 col-lg-9" style ="margin-bottom: 40px">
                <div class="col-lg-1">
                    <label for = "Parcourir">Photo de profil : </label>
                </div>
                <div class="col-lg-2">
                    <input name="Parcourir" id="media" type="file" />
                </div>			
            </div>
    </div>    
        
    <div class="row">
        <div class="col-lg-offset-5">			
                <input name="valider" id="valider" type="submit" />
	</div>
    </div>
        
    </form>
        
</div>

<!--------------------------------------------------FOOTER---------------------------------------------------> 
        <footer class="row">
            
        </footer>
    </body>
</html>
