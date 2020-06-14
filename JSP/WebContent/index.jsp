<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%--Esto es una directiva para utilizar la clase Date --%>
<%@ page import="java.util.Date"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>java con jp y servlets</title>
</head>
<body>
	Bienvenido a ecodeup, el blog de Java y Java Web
	<br>
	<%--Comentarios: Esto es un comentario en JSP --%>

	<%--Esto es un scriptlet JSP --%>
	<% out.println(); %>
	<%out.print("Hola mundo desde JSP"); %>
	<br>
	<%--Esto es una expresión en JSP --%>
	<%="Esto es una expresión" %>
	<br>
	<%--Se declara una directiva para utilizar la clase Date <%@ page import="java.util.Date"  %> --%>
	<%
	Date d = new Date();
	out.println("Fecha Actual: "+d);
	%>
	<br>
	<%-- Declaraciones en JSP --%>
	<%! public static int contador=7; %>
	<%  out.println("Valor de la variable contador: "+contador);%>
	<br>
	<%--Navegador y Versión del Sistema Operativo --%>
	<% out.print(request.getHeader("USER-AGENT")); %>
	
	<jsp:useBean id="estudia" class="com.ecodeup.com.jbean">
	<jsp:setProperty property="estudiante" name="estudia" value="juan" />
	<jsp:setProperty property="identificacion" name="estudia" value="st45" />
	<jsp:setProperty property="edad" name="estudia" value="10"/>
	</jsp:useBean>
	
	<jsp:useBean id="estud" class="com.ecodeup.com.jbean">
	<jsp:setProperty property="estudiante" name="estud" value="juana" />
	<jsp:setProperty property="identificacion" name="estud" value="st42" />
	<jsp:setProperty property="edad" name="estud" value="20"/>
	</jsp:useBean>
	
	<h1>Java Beans con SJTL</h1>
	<p>nombre del alumno: <c:out value="${estudia.estudiante}"></c:out></p>
	<p>identificaión: <c:out value="${estudia.identificacion}"></c:out></p>
	<p>edad: <c:out value="${estudia.edad}"></c:out></p>
	<c:set var="idEstudiante" value="${estudia.estudiante}"></c:set>
	
	<c:if test="${estudia.edad <18}">
		<input type="text" value="no es mayor de edad">
	</c:if>
	
	
</body>
</html>