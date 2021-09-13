<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
<link rel="stylesheet" href="css/admin.css">
</head>

<h2>Student Login</h2>

<form action="/studentlogin" method="post">
<div class="center">
 <div class="imgcontainer">
    <img src="img/student_avatar.jfif" alt="Avatar" class="avatar" id="read">
  </div>

  <div class="container">
    <label for="uname"><b>UserId</b></label>
    <input type="text" placeholder="Enter UserId" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <input type="submit" value="Login" class="button">
  </div>
</div>
 
</form>

</html>