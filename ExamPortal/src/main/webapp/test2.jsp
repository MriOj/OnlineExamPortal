<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test 2 </title>
<style type="text/css">
.center {
text-align: center;
}
#uid{
visibility:hidden;}
#timer{
font-size:20px;
color:red;
}
</style>

<script type="text/javascript">
window.history.forward();
function noBack() {
    window.history.forward();
}

</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>   
<div class="center">
<h1 >Test 2</h1>
<h3> Welcome <%{out.println(request.getAttribute("userid"));} %></h3> 
<p>Your test has started </p>
<div id="timer"></div>
</div>
<p style="text-align: center">You score <b>(+3)</b> for correct and <b>(-1)</b> for incorrect</p>
<form action="than" method="post" id="yourForm">
<input type="text" id="uid" name="userid" value="<%{out.println(request.getAttribute("userid"));} %>">
<input type="text" id="uid" name="test" value="2">
<p><b>Q1) </b>When is the capital of India?</p>
 <select name="Q1">
        <option value="choose" >Choose</option>
        <option value="A" > Delhi  </option>
        <option value="B" > Mumbai </option>
        <option value="C" > Kolkata </option>
        <option value="D" > Bangalore </option>
        <option value="E" selected style="visibility: hidden"></option>
    </select>
    
<p><b>Q2) </b>What is the national animal of India ?</p>
    <input type="radio" value="A" name="Q2" > Elephant 
    <input type="radio" value="B" name="Q2"> Tiger 
    <input type="radio" value="C" name="Q2">  Cow
    <input type="radio" value="D" name="Q2"> Snake
     <input type="radio" value="E" name="Q2" checked style="visibility: hidden">
   
<p><b>Q3) </b>What is 2 + 2 ?</p>
     <input type="text" name="Q3" placeholder= "Enter your answer" /> <br><br>
<input type="submit"></input>
</form>
</body>
<script>
var timeLeft = 30;
var elem = document.getElementById('timer');
var timerId = setInterval(countdown, 1000);

function countdown() {
    if (timeLeft == -1) {
        clearTimeout(timerId);
        endtest();
    } else {
        elem.innerHTML = timeLeft + ' seconds remaining';
        timeLeft--;
    }
}
function endtest() {
	document.getElementById('yourForm').submit();;
    alert("Test Submitted");
}
</script>

</html>
