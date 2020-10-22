<%-- 
    Document   : affichageFact
    Created on : 2020年10月16日, 下午5:01:42
    Author     : Rui ZHANG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
        <title>Affichage de factorielle</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <h2>Affichage de la factorielle de: <%=request.getParameter("nombre")%> </h2>
        <jsp:useBean id="fait" scope="request" class="fr.dauphine.ray.Factorielle" />
        <%
            String a = request.getParameter("nombre");
            int an = Integer.parseInt(a);
            if(an<=0){
                out.print("ERROR: factorielle non existant");  
            }
            String res = fait.calculFact(an);
            out.println(res); 
        %>
    </body>
</html>
