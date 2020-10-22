<%-- 
    Document   : header
    Created on : 2020年10月16日, 下午1:55:26
    Author     : Rui ZHANG
--%>
<%@ page  contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <link rel="stylesheet" href="style.css" type="text/css"/>
    </head>
    <body>
        <h1>TP2 : JSP</h1>
        <h1>Nom du binôme: Ray</h1>
        <h1>La date courante est:</h1>

	     <%
		Date d = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = df.format(d);
                out.print(now);
	     %>
    </body>
</html>
