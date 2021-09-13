<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
<style>
.center {
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  border: 20px solid green;
  padding: 10px;
  }
</style>
</head>
<body>
<div class="center">
<p>
Welcome 
<span style="text-transform:uppercase"><b><%{out.println(request.getAttribute("fname"));}%></b>  <b><%{out.println(request.getAttribute("lname"));}%></b></span>
You've scored <b><%{out.println(request.getAttribute("marks"));} %> </b>marks in test no. = <%{out.println(request.getAttribute("test"));} %>
</p>
</div>

</body>
</html>