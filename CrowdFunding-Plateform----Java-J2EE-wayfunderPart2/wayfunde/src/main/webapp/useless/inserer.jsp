<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="Controller" method="get">
date<input type="text" name="date">
description<input type="text" name="description">
goal<input type="text" name="goal">
state<input type="text" name="state">
image<input type="text" name="image">
title<input type="text" name="title">
libCat<input type="text" name="libcat">
iduser<input type="text" name="iduser">
<input type="submit" name="action" value="add_project">
    </form>
    
</body>
</html>