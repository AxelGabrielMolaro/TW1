<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="t"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
		<form:form action="moficarJugador2" method="POST" modelAttribute="jugador">
			<form:select path="documento" class="" >
		
			<c:forEach var="lista" items="${listaDeJugadores}">
			
				<form:option value="${lista.getDocumento()}">${lista.getNombre()}||${lista.getApellido()}||${lista.getDocumento()}</form:option>
			
			</c:forEach>
		
		</form:select>
		<input type="submit" value="seleccionar">
		</form:form>
		
		
		
		
</body>
</html>