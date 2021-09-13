<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

table.center {
  margin-left: auto; 
  margin-right: auto;
}
table {
  width: 100%;
}
h2{
text-align:center;
text-transform:uppercase;
}
</style>
</head>
<body>

<h2><%{out.println(request.getAttribute("fname"));} %>'s Report Card</h2>

<table class="center">
 <tr>
    <th>Firstname</th>
    <th>Lastname</th> 
    <th>Phone no.</th>
	<th>Gender</th>
	<th>Course</th>
	<th>Test 1 Marks</th>
	<th>Test 2 Marks</th>
  </tr>
  <tr>
    <td><%{out.println(request.getAttribute("fname"));} %> </td>
    <td><%{out.println(request.getAttribute("lname"));} %> </td>
    <td><%{out.println(request.getAttribute("phone"));} %> </td>
<td><%{out.println(request.getAttribute("gender"));} %> </td>
	<td><%{out.println(request.getAttribute("course"));} %> </td>
	<td><%{out.println(request.getAttribute("t1m"));} %> </td>
	<td><%{out.println(request.getAttribute("t2m"));} %> </td>
  </tr>
</table>

</body>
</html>
