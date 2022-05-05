<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Admin Home</title>
<link rel="stylesheet" href="admin/manageaccounts.css">
<link rel="stylesheet" href="admin/index.css">
</head>
<body>
<h1 style="margin-top:3em" >Welcome Administrator</h1>
<h2>Please choose one of the following options</h2>
<img src="images/admin.png" alt="admin">
  <div class="form">
    <form class="login-form">
            	<button disabled><a href="Controller?action=manageprojects">Manage on-hold Projects</a></button></br>            
            
				<button disabled class="mt-3"><a href="Controller?action=manageaccounts">Manage accounts</a></button>          
			
          </form>
  </div>
</body>
</html>