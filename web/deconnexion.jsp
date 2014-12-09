<%-- 
    Document   : deconnexion
    Created on : 9 déc. 2014, 17:35:29
    Author     : thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="3;index.jsp" />
        <title>JSP Page</title>
    </head>
    <body>
        <% session.invalidate(); %>
        
        <h1> Vous avez bien été déconnecté , redirection vers la page d'accueil..</h1>
    </body>
</html>
