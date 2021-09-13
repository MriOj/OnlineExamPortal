<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher Login</title>
<link rel="stylesheet" href="css/admin.css">
</head>

<h2>Teacher Login</h2>

<form action="/admlogin" method="post">
<div class="center">
 <div class="imgcontainer">
    <img src="img/admin_avatar.jpg" alt="Avatar" class="avatar" id="teach">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <input type="submit" value="Login" class="button">
  </div>
</div>
 
</form>

</html>