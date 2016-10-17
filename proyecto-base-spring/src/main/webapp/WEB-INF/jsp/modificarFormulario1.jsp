<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="t"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Modificar Jugador</title>
</head>
<body>
	<jsp:include page="header.jsp" />
		<div class="container-fluid">
			<div class="col-md-6 col-md-offset-3">
				<form:form action="moficarJugador2" method="POST" modelAttribute="jugador">
				<div class="form-group">
					<form:select class="form-control" path="documento">
				<c:forEach var="lista" items="${listaDeJugadores}">
					<form:option value="${lista.getDocumento()}">${lista.getNombre()}||${lista.getApellido()}||${lista.getDocumento()}</form:option>
				</c:forEach>
				</form:select>
				</div>
				<div class="form-group">
					<input class="btn btn-success" type="submit" value="Seleccionar">
				</div>
				</form:form>		
			</div>
		</div>
</body>
</html>