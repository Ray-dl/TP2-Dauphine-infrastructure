<%-- 
    Document   : logout
    Created on : 2020年10月22日, 上午10:38:50
    Author     : Rui ZHANG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
        <title>Fermeture de la session</title>
    </head>
    <body>
        <% 
            session.invalidate(); 
            response.sendRedirect("login.jsp"); 
        %>
    </body>
</html>
