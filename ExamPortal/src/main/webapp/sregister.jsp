<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/sregister.css">
</head>
<body>   
<form action="/sregisterconf" method="post" >
    <div class="container">
      <h1> Student Registration Form</h1> 
      <hr>
      <label> FIRSTNAME : </label> 
        <input type="text" name="firstname" placeholder= "Firstname" required /> 
 
      <label> LASTNAME : </label>  
      <input type="text" name="lastname" placeholder="Lastname" required /> 
    <div>
    <label>COURSE :</label> 
    
    <select name="course" required>
        <option value="course" >Course</option>
        <option value="BCA" >BCA</option>
        <option value="B.Tech" >B.Tech</option>
        <option value="MBA" >MBA</option>
        <option value="M.Tech" >M.Tech</option>
    </select>
    </div>
    <div>
    <label> 
    GENDER :
    </label><br>
    <input type="radio" value="Male" name="gender" checked > Male 
    <input type="radio" value="Female" name="gender"> Female 
    <input type="radio" value="Other" name="gender"> Other
    
    </div>
    <label> 
    PHONE:
    </label> 
    <input type="text" name="phone" placeholder="Enter phone no." size="10" required> 
   
    <label for="emailid"><b>Email Id</b></label>
    <input type="email" placeholder="Enter email id" name="emailid" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
  
    <input type="submit" value="Submit" onClick="registered()" >
     </div>
</form>
</body>
</html>
