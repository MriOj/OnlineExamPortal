<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login success</title>
<link rel="stylesheet" href="css/sregisterconf.css">
</head>
<body>  
<div class="center">
<p>
<h1>Registered Successfully !!</h1> 
<p>Your user id is : <b><%{out.println(request.getAttribute("userid"));} %></b> </p>
<p>Please login with this id and your password in future </p> 
<a href="sregister">Register another Student</a>
<br>
<a href="slogin">Login Now </a>
</p>
</div>
</body>
</html>
