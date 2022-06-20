
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.Connection" %>
   <%@page import="java.sql.Statement" %>
   <%@page import="java.sql.ResultSet" %>
   <%@page import="java.sql.Driver" %>
   <%@page import="java.sql.DriverManager" %>
   <%@page import="java.sql.SQLException" %>
   <%@page import="javax.sql.*" %>
   <%@page import="java.util.*" %>
   <%@page import="java.lang.Class" %>
   <%@page import="java.lang.*" %>
   <%@page import="java.sql.Statement" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css" />
<title>Verifying Details</title>
</head>
<body>
<h1>Government Schemes for persons with Disabilities</h1>
<h2>Welcome</h2>
<div class="topnav">
  <a  href="#home">Home</a>
  <a href="Personal_details.jsp">Personal Details</a>
  <a href="caretaker_details.jsp">Care Taker Details</a>
  <a class="active" href="scholarship.jsp">Scholarship Details</a>
  <a href="job1.jsp">Job Quota Details</a>
  <a href="login.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>
<div class="box">
<%
String u_name = session.getAttribute("sco1").toString();
String count1=request.getParameter("count");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
//Establish connection to databse server
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1","root"," ");
Statement stmt=con.createStatement();
stmt=con.createStatement();
ResultSet rs;
rs=stmt.executeQuery("select tod from typeofdisability_details where udid='"+u_name+"'");
String accn="";
while(rs.next()){
accn=rs.getString("tod");
}
int count=0,tod;
count=Integer.valueOf(count1); 
tod=Integer.valueOf(accn);
if(count<9)
{
	if(tod<40)
	{
		out.print("You're elgible for scholarship for tod:"+tod);
		out.print("<br>Click here to know about Vacancies"+"<a href='Study.jsp'>  Scholarship Description</a>");
	}
}
else
	out.print("You're not elgible for scholarship");
con.close();
}
catch(SQLException e){
	out.println(e);
}
catch(Exception e){
	out.println(e);
}
%>
</div>
</body>
</html>