<%-- 
    Document   : affichage
    Created on : 2020年10月22日, 上午10:32:12
    Author     : Rui ZHANG
--%>
<%@ page import = "java.io.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to your session</title>
        <link rel="stylesheet" href="css/login.css" type="text/css"/>
    </head>
    <body>
        <% 
            String username = request.getParameter("username");
            String password = request.getParameter("pwd");
            String sessionID = session.getId();
           // Get session creation time.
            Date createTime = new Date(session.getCreationTime());
            Date lastAccessTime = new Date(session.getLastAccessedTime());
            if (username != null && username.length() != 0){ 
               session.setAttribute("username", username);
               session.setMaxInactiveInterval(500); //session timeout in seconds
            }else{
               response.sendRedirect("login.jsp");
            } 
        %>
        <h1> Welcome dear<br><%= username%> </h1> 
         <div class="session">   
            <p>
              Id session : <%= sessionID%> <br>
              LastAccessTime : <%= lastAccessTime%> <br>
              Date création session : <%= createTime%> <br>
            </p>  
            <form action="logout.jsp">
                <input  type="submit" value="Fermer ma session">
            </form>
        </div>
    </body>
</html>