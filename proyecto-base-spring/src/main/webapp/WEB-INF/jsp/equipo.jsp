<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="t"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <!-- Bootstrap theme -->
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">





<title>Insert title here</title>


</head>


<body>

<div class="col-md-12">
	<a href="agregarJugador"><input type="button" value="agregar Jugador"></a>
	<a href="modificarJugador"><input type="button" value="modificar Jugador"></a>
</div>
	<table class="table-responsive col-md-offset-3 col-md-6">
	<tr>
		<th>Nombre<th>Apellido<th>Documento
	</tr>
		<c:forEach var="listValue" items="${listaDeJugadores}">
			<tr>
			
				<td>${listValue.getNombre()}<td>${listValue.getApellido()}<td>${listValue.getDocumento()}
				<td><a href="${listValue.getDocumento()}"><input type=button class="btn "  value="Eliminar"></a>
				<td>
			<tr>
							
		</c:forEach>
	
	
	</table>
	
</body>
</html>