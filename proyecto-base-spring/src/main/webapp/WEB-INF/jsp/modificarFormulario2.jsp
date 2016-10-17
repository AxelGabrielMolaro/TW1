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
<link href="css/campoOculto.css" rel="styleSheet" type="text/Css">
<title>Modificar jugador</title>
</head>
<body>
<jsp:include page="header.jsp" />

	<div class="container-fluid">
	
		<div class="col-md-6 col-md-offset-3">
				<form:form method="POST" action="modificarJugador3" modelAttribute="jugador">
				
					<div class="form-group">
						<form:label path="nombre"> Nombre:</form:label>
						<form:input class="form-control" path="nombre"/>
					</div>
					<div class="form-group">
						<form:label path="apellido"> Apellido:</form:label>
						<form:input class="form-control" path="apellido"/>
					</div>
					
					 <div class="form-group">
						<form:input path="documento" class="campoOculto"/>
					</div> 
					
					<input type="submit" class="btn btn-warning" value="Modificar">
				</form:form>
		</div>
		
	</div>
	
</body>
</html>