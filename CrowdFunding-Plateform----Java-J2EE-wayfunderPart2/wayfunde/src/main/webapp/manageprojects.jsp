<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="admin/manageprojects.css">
<title>Admin Manager</title>
</head>
<body>
<div style="padding-top:2%" class="container">
<div class="offset-md-2 offset-lg-3">

<a style="text-decoration: none; font-size:1.5EM;" class="text-secondary" href="manageaccounts.jsp"> Manage accounts</a> &nbsp; &nbsp;<span class="text-secondary" style="font-size:2em; font-weight:bold;">|</span> &nbsp; &nbsp;
<a style="text-decoration: none; font-size:1.5EM;" href="Controller?action=logout" class="text-secondary">Logout</a>
 
<div class="card mb-3" style="max-width: 540px; box-shadow: 10px 10px 5px lightblue;">
<br>

<c:if test="${empty projects}">
 <h1 class="text-center" style="margin-top:1.1EM; margin-bottom:1.4EM;  color:#A7C1B2; font-size:2EM;">No Results Found</h1>
 </c:if>
 
<c:forEach var="project" items="${requestScope.projects}">
  <div class="row g-0" style="margin-left:1em;">
    <div class="col-md-4">
      <img src="images/placeholder/phone.jpg" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"><c:out value="<span>Title: ${project.title}</span>" escapeXml="false"></c:out></h5>
        <p class="card-text"><c:out value='<span class="fw-bold">Description: </span><span>${project.description}</span>' escapeXml="false"></c:out></p>
        <c:out value='<span class="fw-bold">Price: </span><span class="text-success">${project.goal}TND</span>' escapeXml="false"></c:out>
        <a style="margin-left:2Em;"href="Controller?action=rejectProject&idProject=${project.idProject}" class="btn btn-danger">Reject</a>
		<a href="Controller?action=acceptProject&idProject=${project.idProject}" class="btn btn-success">Accept</a>
      </div>
    </div>
  </div>
  
</c:forEach>
</div>
</div>
</div>

</body>
</html>