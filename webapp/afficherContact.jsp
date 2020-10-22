<%-- 
    Document   : newjsp
    Created on : 2020年10月9日, 下午7:02:36
    Author     : Rui ZHANG
--%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>  
<html>
<head>
<title>output</title>
 <link rel="stylesheet" href="css/style.css" type="text/css"/>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<center>
<h1>Welcome to Dauphine</h1>
<br>
<br>
<br>
<br>
<br>
<ul>
<li><p><b>First name:</b>
   <%=request.getParameter("txt_prenom")%>
</p></li>
<li><p><b>Middle name:</b>
   <%=request.getParameter("txt_nom2")%>
</p></li>
<li><p><b>Last name:</b>
   <%  
        String n=request.getParameter("txt_nom1");
        out.println(n);
   %>
</p></li>
<li><p><b>Gender:</b>
   <%
        String a = request.getParameter("radio1");
        out.println(a);
   %>
</p></li>
<li><p><b>Phone:</b>
   <%
        String b = request.getParameter("txt_telephone");
        out.println(b);
   %>
</p></li>
<li><p><b>Email:</b>
   <%
        String c = request.getParameter("txt_mail");
        out.println(c);
   %>
</p></li>
<li><p>
   <%
        String d = request.getParameter("checkbox1");
        if (d !=null){
            out.println("Je souhaite contacter avec vous");
        }
        else{
            out.println("Je souhaite pas contacter avec vous");
        }
   %>
</p></li>
</ul>
</body>
</html>
