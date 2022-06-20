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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Quota</title>
</head>
<%!String u_name;%>
<body>
<h1>Government Schemes for persons with Disabilities</h1>
<div class="topnav">
  <a  href="#home">Home</a>
  <a href="Personal_details.jsp">Personal Details</a>
  <a href="caretaker_details.jsp">Care Taker Details</a>
  <a href="scholarship.jsp">Scholarship Details</a>
  <a class="active" href="Quota.jsp">Job Quota Details</a>
  <a href="login.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>
<div class="box"> 
<% String u_name = session.getAttribute("sco1").toString();
String count1=request.getParameter("count");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
//Establish connection to databse server
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1","root"," ");
Statement stmt=con.createStatement();
stmt=con.createStatement();
ResultSet rs,rs1;
rs=stmt.executeQuery("select tod from typeofdisability_details where udid='"+u_name+"'");
String accn="";
while(rs.next()){
accn=rs.getString("tod");
}
rs1=stmt.executeQuery("select age from personal_details where udid='"+u_name+"'");
String accn1="";
while(rs1.next()){
accn1=rs1.getString("age");
}
int count=0,age,tod1;
count=Integer.valueOf(count1); 
age=Integer.valueOf(accn1);
tod1=Integer.valueOf(accn);
if((age>=21 & age<33)&&(count<10))
{
	if(tod1==1 || tod1==3  || tod1==5  || tod1==7)
	{
		out.println("You're elgible for Job");
		out.print("<br>Click here to know about Vacancies"+"<a href='Job.jsp'> Job Description</a>");
	}
}
else
{
	out.print("<br> SORRY You're not elgible for this!!");
}
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
