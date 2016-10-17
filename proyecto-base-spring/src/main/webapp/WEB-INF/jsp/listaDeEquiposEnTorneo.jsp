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
	lista de equipos en torneo
	<br>
	<table class="table condensed">
			
			<th>Equipo</th>
			
			
			<c:forEach var="list" items="${listaDeEquipos}"> 
				<tr>
					<td>${list.getNombre()} <a href="equipo">Ver Equipo</a> <a href="eliminarEquipoTorneo/${list.getNombre()}">Eliminar Equipo</a></td>
				
				
				
				<form action="e" method="get">
	
					<input value="${list.getNombre()}">
					<input type="submit">
					</form>
				</tr>
			</c:forEach>
			
	</table>
	
	<a href="agregarEquipo"><input type="button" value="agregar Otro equipo al torneo"></a>
</body>
</html>