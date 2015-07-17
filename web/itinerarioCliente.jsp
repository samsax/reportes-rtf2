<%-- 
    Document   : ventas
    Created on : 4/06/2015, 10:37:18 PM
    Author     : Samuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="net.sf.jasperreports.engine.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %> 
<% String documento= request.getParameter("documento");
String tipo= request.getParameter("tipo");
/*realizar la conexion*/ 
Connection conexion; 
Class.forName("com.mysql.jdbc.Driver").newInstance();
conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/aerolinea" ,"root",""); 
/*Establecemos la ruta del reporte*/ 
File reportFile = new File(application.getRealPath("itinerarioCliente.jasper"));
/* No enviamos parametros porque nuestro reporte no los necesita asi que es iba cualquier cadena*/
Map parameters = new HashMap(); 
parameters.put("nDoc",documento);
parameters.put("tipoDoc",tipo);
/*Enviamos la ruta del reporte, los parametros y la conexiOn(objeto Connecti n)*/
byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conexion);
/*Indicamos que la respuesta va a ser en formato PDF*/ 
response.setContentType("application/pdf");
response.setContentLength(bytes.length); 
ServletOutputStream ouputStream = response.getOutputStream();
ouputStream.write(bytes, 0, bytes.length); 
/* y cerramos flujos de salida*/ 
ouputStream.flush(); 
ouputStream.close(); 
%>
