<%-- 
    Document   : evenements
    Created on : 24 nov. 2014, 10:31:22
    Author     : Kévin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Evènements</title>
    </head>
    <body>
        
      <%@include file="header.jsp" %>
<!--------------------------------------------------HEADER--------------------------------------------------->      
<div class="row">
<div class="col-lg-offset-4 col-lg-5" style="margin-top: 150px">

<!--Ceci est un test -->

<h1> Bonjour votre identifiant et votre mot de passe sont :  <%= session.getAttribute("login")%> <%= session.getAttribute("password") %> </h1>

</div>

<div class="row" style="margin-top: 150px;">     
    <div id="moncadre" class="col-lg-offset-3 col-lg-6">    
        <div class="row">            
            <div class="col-lg-2">            
                <p id="recherche">Recherche  </p>       
            </div>         
            <div class="col-lg-1">
                <label for = "recherche_artiste">Nom </label>                
            </div>    
            <div class="col-lg-1">
                <input type="text" id="recherche_nom" name="recherche_nom"/>                 
            </div>  
            <div class="col-lg-offset-2 col-lg-1">
                <label for = "recherche_titre">Date </label>                
            </div>    
            <div class="col-lg-1">
                <input type="date" id="recherche_date" name="recherche_date"/>                 
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
            <p>Spectacle 1 image</p>
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
            <p> Spectacle 2 </p>
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
        Spectacle 3
        </div>
        <div class=" col-lg-offset-2 col-lg-3">
            <p>Anticonstitutionnellement Ceci est une petite description de test. La description ne devra pas être très longue car lorsuq'on clique sur le boutton on en a une détaillé</p>
        </div>
        <div class=" col-lg-offset-2 col-lg-2">
            <p><a href="#" class="btn btn-primary" role="button">En savoir plus</a></p>
        </div>
    </div> 
</div>
</div>
    </body>
</html>