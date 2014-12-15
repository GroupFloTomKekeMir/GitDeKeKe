<%-- 
    Document   : connexion
    Created on : 24 nov. 2014, 09:41:28
    Author     : Kévin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>MegaCasting</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <!--------------------------------------------------HEADER--------------------------------------------------->      


        <div class="contain" style="margin-top : 60px;">

            

            <form method="POST" action="servlet_connexion">

                <div class="row" style ="margin-bottom: 70px; margin-top: 150px; margin-left: 100px; ">
                    <div class="col-lg-5">
                        <div class="row">
                            <div class="col-lg-offset-10 col-lg-2">
                                <h1> Connexion </h1>
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
                            <label for = "password">Mot de passe  : </label>                                    
                        </div>
                        <div class="col-lg-2">
                            <input name="password" id="password" type="password" />
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
