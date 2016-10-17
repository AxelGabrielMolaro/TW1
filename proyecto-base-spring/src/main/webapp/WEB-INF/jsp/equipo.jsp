<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="t"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	    <link href="css/bootstrap.min.css" rel="stylesheet" >
	    <title>Jugadores dados de alta</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container-fluid">
	
		<table class="table-responsive col-md-offset-3 col-md-6">
		<tr>
			<th>Nombre<th>Apellido<th>Documento
		</tr>
			<c:forEach var="listValue" items="${listaDeJugadores}">
				<tr>
					<td>${listValue.getNombre()}<td>${listValue.getApellido()}<td>${listValue.getDocumento()}
					<td><a href="${listValue.getDocumento()}"><input type=button class="btn btn-xs btn btn-danger "  value="Eliminar"></a><br><br>
					</td>
				<tr>	
			</c:forEach>
		</table>	
		<div class="col-md-6 col-md-offset-3 text-center">
			<a href="agregarJugador"><input class="col-center btn btn-sm btn-success" type="button" value="Agregar Jugador"></a><br><br>
			<a href="modificarJugador"><input class="col-center btn btn-sm btn-warning" type="button" value="Modificar Jugador"></a>
		</div>
	</div>
</body>
</html>