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
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
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
        
        
<div class="contain">
    
    <form method="POST" action="" style="margin-top: 80px ;">
            
        <div class="row">
            <div class="col-lg-offset-4 col-lg-4">
                <h1 style="text-align: center"> Inscription </h1>
                 
            
    
        <div class="row" style="margin-top : 50px;">   
                <div class="row">
                <div class="col-lg-offset-2 col-lg-3">
                    <label for = "identifiant">Login: </label>
                </div>
                <div class="col-lg-2">
                    <input name="identifiant" id="identifiant" type="text" />
                    
                </div>
                <div class="col-lg-4">
                </div>
                </div>
        </div>

    <div class="row">
                <div class="row">
                <div class="col-lg-offset-2 col-lg-3">
                    <label for = "password">Mot de passe: </label>
                </div>
                <div class="col-lg-2">
                    <input name="password" id="password" type="text" />
                    
                </div>
                <div class="col-lg-4">
                </div>
            </div>
        </div>
      
    <div class="row">
                <div class="row">
                <div class="col-lg-offset-2 col-lg-3">
                    <label for = "password2">Confirmer: </label>
                </div>
                <div class="col-lg-2">
                    <input name="password2" id="password2" type="text" />
                    
                </div>
                <div class="col-lg-4">
                </div>
            </div>
        </div>
        
    <div class="row">	
                <div class="row">
                <div class="col-lg-offset-2 col-lg-3">
                    <label for = "nom">Nom: </label>
                </div>
                <div class="col-lg-2">
                    <input name="nom" id="nom" type="text" />
                    
                </div>
                <div class="col-lg-4">
                </div>
            </div>
        </div>
        
        <div class="row">	
                <div class="row">
                <div class="col-lg-offset-2 col-lg-3">
                    <label for = "prenom">Prénom: </label>
                </div>
                <div class="col-lg-2">
                    <input name="prenom" id="prenom" type="text" />
                    
                </div>
                <div class="col-lg-4">
                </div>
            </div>
        </div>
        
    <div class="row">	
                <div class="row">
                <div class="col-lg-offset-2 col-lg-3">
                    <label for = "age">Age: </label>
                </div>
                <div class="col-lg-2">
                    <input name="age" id="age" type="text" />
                    
                </div>
                <div class="col-lg-4">
                </div>
            </div>
        </div>
        
    <div class="row">
                <div class="row">
                <div class="col-lg-offset-2 col-lg-3">
                    <label for = "email">Email: </label>
                </div>
                <div class="col-lg-2">
                    <input name="email" id="email" type="text" />
                    
                </div>
                <div class="col-lg-4">
                </div>
            </div>
        </div>  
        
    <div class="row">	
                <div class="row">
                <div class="col-lg-offset-2 col-lg-3">
                    <label for = "telephone">Téléphone: </label>
                </div>
                <div class="col-lg-2">
                    <input name="telephone" id="telephone" type="text" />
                    
                </div>
                <div class="col-lg-4">
                </div>
            </div>
        </div>   
     
        <div class="row">
                <div class="row">
                <div class="col-lg-offset-2 col-lg-3">
                    <label for = "adresse">Adresse: </label>
                </div>
                <div class="col-lg-4 " id= "numerobouton"> 
                    <input name="numero" id="numero" type="text" style="width: 30px;"/>
                
                
                    <input name="adresse" id="adresse" type="text" style="width: 140px;">
                </div>
            </div>
        </div>
        
        <div class="row">	
                <div class="row">
                <div class="col-lg-offset-2 col-lg-3">
                    <label for = "description">Description: </label>
                </div>
                <div class="col-lg-2">
                    <input name="description" id="description" type="text" />
                    
                </div>
                <div class="col-lg-4">
                </div>
            </div>
        </div> 
          
        
        <div class="row">	
                <div class="row">
                <div class="col-lg-offset-2 col-lg-3">
                    <label for = "parcourir">Photo de profil: </label>
                </div>
                <div class="col-lg-2">
                    <input name="parcourir" id="parcourir" type="file" />   
                </div>
                <div class="col-lg-4">
                </div>
                </div>
        </div>
                    
    <div class="row">
        <div class="col-lg-offset-2 col-lg-3">	
                <input name="valider" id="valider" type="submit" style="width: 350px; margin-top: 30%; margin-left: -8%" />
        </div>
                
	</div>
    </div>
    </div>
   </div>     
    </form>  
</div>

<!--------------------------------------------------FOOTER---------------------------------------------------> 
<footer> 
<div id="footer">
    <div class ="container">

    </div>    
</div> 
</footer>
    </body>
</html>
