<%-- 
    Document   : factorielle
    Created on : 2020年10月16日, 下午3:31:00
    Author     : Rui ZHANG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
        <title>JSP Page</title>
                <script type="text/javascript">
            function verifierNombre(){
       
                var nombre = document.getElementById('nbId').value;
  
               if(nombre <= 0){
                   alert("Le nombre saisi doit être positif");
               }
               else if(confirm("Confirmer le formulaire ?")){
                   document.getElementById('formId').submit();
               }
            }   
        </script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        
        <h1>Factorielle</h1>
           <p>Je souhaite avoir la factorielle de :
              <form action="affichageFact.jsp" method="post" id="formId"> 
	      <span>
	          <input type="number" name="nombre" id="nbId" title="vous pouvez saisir votre nombre"  size=10 required/>
	          <input type="button" value="Envoyer" onclick="verifierNombre()" />
                  <input type="reset" value="Effacer" />
              </span>
              </form>
           </P>
        
    </body>
</html>
