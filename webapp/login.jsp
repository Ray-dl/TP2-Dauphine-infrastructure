<%-- 
    Document   : login
    Created on : 2020年10月16日, 下午7:03:11
    Author     : Rui ZHANG
--%>
<%@ page import = "java.io.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
        <title>Login to application</title>
    </head>
    <body>
         <%  // Get session creation time.
            Date createTime = new Date(session.getCreationTime()); 
            Date lastAccessTime = new Date(session.getLastAccessedTime());
                out.print("ID Session" + session.getId()  +"<br>");
                out.print("LastAccessTime " + lastAccessTime  +"<br>");
                out.print("CreateTime " + createTime  +"<br>");
         %>
        <jsp:include page="header.jsp"></jsp:include><br>

        <h1>Bonjour, veuillez rentrer vos identifiants</h1>
           <form action="affichage.jsp" method="post" id="formId"> 
        
            <p>Name :
               <span>
               <input type="text" name="username" id="name" value="Nom" title="vous pouvez saisir votre prénom"  size=10 required>
               </span>
            </p>
            <p>Mode de passe :
               <span>
               <input type="password" name="pwd" title="vous pouvez saisir votre mode de passe"  size=10 required>
               </span>
            </p>
           <p>
	      <span>
	          <input type="submit" value="Valider" />
                  <input type="reset" value="Effacer" style="margin-left:66px"/>
              </span>
              
           </P>
         </form>
    </body>
</html>
