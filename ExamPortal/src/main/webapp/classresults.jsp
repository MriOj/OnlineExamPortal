<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.cj.jdbc.Driver");; %>
<HTML>
       <HEAD>
       <TITLE>TClass results </TITLE>
       </HEAD>
       <STYLE>
       table, th, td {
  			border: 1px solid black;
		}
       </STYLE>
       <BODY>
       <H1 style="text-align:center"> CLASS RESULT </H1>
       <%
       Connection con =DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/examportal","root","Ria@1234");
           Statement statement = con.createStatement() ;
          ResultSet stud = statement.executeQuery("select s.userid , s.firstname , s.lastname , s.gender, s.phone , s.emailid , t1.marks , t2.marks from student s, test1 t1, test2 t2 where s.userid = t1.userid and s.userid = t2.userid") ;   
       %>
      <TABLE style="width:100%">
      <TR>
      <TH>User Id </TH>
      <TH>FirstName</TH>
      <TH>LastName</TH>
      <TH>Gender</TH>
      <TH>Phone</TH>
      <TH>EmailId</TH>
      <TH>Test1</TH>
      <TH>Test2</TH>
      </TR>
      <% while(stud.next()){ %>
      <TR>
       <TD> <%= stud.getInt(1) %></td>
       <TD> <%= stud.getString(2) %></TD>
       <TD> <%= stud.getString(3) %></TD>
       <TD> <%= stud.getString(4) %></TD>
       <TD> <%= stud.getInt(5) %></TD>
       <TD> <%=  stud.getString(6)%></TD>
       <TD> <%= stud.getInt(7) %></TD>
       <TD> <%= stud.getInt(8) %></TD>
      </TR>
      <% } %>
     </TABLE>
     </BODY>
</HTML>