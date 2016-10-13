<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib uri="http://www.springframework.org/tags" prefix="t"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/campoOculto.css" rel="styleSheet" type="text/Css">
<title>Insert title here</title>
</head>
<body>
	<form:form method="POST" action="modificarJugador3" modelAttribute="jugador">
		
		<form:input path="nombre"/>
		<form:input path="apellido"/>
		<form:input path="documento" class="campoOculto"/>
		<input type="submit" value="modificar">
	</form:form>
</body>
</html>