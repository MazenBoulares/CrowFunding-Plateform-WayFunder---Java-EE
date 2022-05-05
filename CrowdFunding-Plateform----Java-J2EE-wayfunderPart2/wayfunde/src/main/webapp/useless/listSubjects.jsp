<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Subjects List</title>
</head>
<body>
bla bla bla
Liste des projets : <br/>

<ul>
<c:forEach var="sub" items="${requestScope.projects}">
	<c:out value="<li>${sub.idProject} </li><li>${sub.title} </li><li>${sub.goal} </li><li>${sub.date} </li>" escapeXml="false"></c:out><br/>
</c:forEach>
</ul>


</body>
</html> 


