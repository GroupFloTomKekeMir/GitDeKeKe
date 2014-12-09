<!DOCTYPE html>  
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
                <li class="active">
                    <a href="spectacles.jsp">Spectacles</a>
                </li>
                <li>
                    <a href="castings.jsp">Castings</a>
                </li>
                <%
                    String connexion = "";
                    if (session.getAttribute("login") == null) {

                        connexion = "visible";

                    } else {

                        connexion = "hidden";

                            }%>
                <li class="active" style="visibility :  <%= connexion%>  ">
                    <a href="connexion.jsp">Connexion</a>
                </li> 
                <%
                    String deconnexion = "";
                    if (session.getAttribute("login") == null) {

                        deconnexion = "hidden";

                    } else {

                        deconnexion = "visible";

                            }%>
                <li class="active" style="visibility:  <%= deconnexion%> ">
                    <a href="#">Deconnexion</a>
                </li>
                <li class="active" style="visibility: <%= connexion%>">
                    <a href="inscription.jsp">Inscription</a>
                </li>
            </ul>
        </nav>
    </div>
</header>