<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="css/sloginconf.css">
<script type="text/javascript">
window.history.forward();
function noBack() {
    window.history.forward();
}</script>
</head>
<body>
<div class="center">

<h1> Welcome <%{out.println(request.getAttribute("student"));} %> </h1> 

<form action="test" method="post">

<label> Take Test :</label><br>

<input type="text" name="userid" value=<%{out.println(request.getAttribute("userid"));} %>>

    <input type="radio"  name="test" value="1" > Test 1  
    <input type="radio" name="test"  value="2" > Test 2
    <input type="submit" value="Start" id="submit">
</form>

<form action="results" method="post">

<label>Check Results:</label><br>
<input type="text" name="userid" value=<%{out.println(request.getAttribute("userid"));} %>>

    <input type="radio"  name="test" value="1"> Test 1  
    <input type="radio" name="test" value="2" > Test 2
    <input type="submit" value="Check">
    
</form>
</div>
</body>
<script>


</script>
</html>