<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Projects</title>
</head>
<body>
<h2>Projects:</h2>
<ul>
<c:forEach var="user" items="${requestScope.users}">
	<c:out value="<li>${user.email}</li>" escapeXml="false"></c:out><br/>
</c:forEach>
</ul>
</body>
</html>