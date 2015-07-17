<%-- 
    Document   : cliente
    Created on : 17/07/2015, 01:10:47 PM
    Author     : Samuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Viajes de un cliente</h1>
        <form action="itinerarioCliente.jsp"/>
        Tipo de documento: <input type="text" name="tipo"
 />
        <p/>
         Número de documento: <input type="text" name="documento"
 />
         <p/>
        <input type="submit" value="generar"/>
    </form>
    </body>
</html>
