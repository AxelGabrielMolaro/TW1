<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Error!!</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container">
<div class="alert alert-danger">
  <strong>Error, atención!!</strong> ${exepcion} 
</div>
<a href="javascript:history.back()" class="btn btn-success">Volver atrás</a>
</div>

</body>
</html>