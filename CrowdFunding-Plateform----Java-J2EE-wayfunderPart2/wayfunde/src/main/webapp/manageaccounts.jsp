<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="admin/manageaccounts.css">

<title>Adding user</title>
</head>
<body>
<div class="login-page">

<a style="text-decoration: none; font-size:1.5EM;" class="text-secondary" href="Controller?action=manageprojects"> Manage Projects</a> &nbsp; &nbsp;<span class="text-secondary" style="font-size:2em; font-weight:bold;">|</span> &nbsp; &nbsp;
<a style="text-decoration: none; font-size:1.5EM;" href="Controller?action=logout" class="text-secondary">Logout</a>


  <div class="form">
    <form action="Controller" class="login-form">
    		<input type="text" placeholder="username" name="username" required/>
            <input type="text" placeholder="email"  name="email"/>
            <input type="text" placeholder="password" name="password"/>
            <br>
            <br>
          <p class="text-danger"><c:out value="<span>${requestScope.message}</span>" escapeXml="false"></c:out></p>
            <button type="submit" name="action" value="adduser">
              Add User
            </button>
            <button class="mt-3" type="submit" name="action" value="deleteuser">
              Delete User (by username)
            </button>
          </form>
  </div>
</div>

</body>
</html>