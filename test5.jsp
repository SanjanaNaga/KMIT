</head><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
   <%@page import="java.sql.Statement" %>
   <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Home Page</title>
</head>
<body>
<h1>  Government Schemes for persons with Disabilities </h1>
<div class="topnav">
  <a href="#home">Home</a>
  <a href="Update_schemes.jsp">Add Schemes </a>
  <a class="active" href="Delete_schemes.jsp">Modify or Delete Schemes </a>
  <a href="admin_login.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>
<form method="post" action="test6.jsp">
<div class="box"> 
<% 
String tod1=null,scheme=null;
int sco,tod2;
tod1=request.getParameter("tod");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
//Establish connection to databse server
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1","root"," ");
Statement stmt=con.createStatement();
stmt=con.createStatement();
ResultSet rs;
int tod=Integer.parseInt(tod1);
if(tod!=0)
{
	rs=stmt.executeQuery("select * from display_schemes where tod='"+tod+"'");
	while(rs.next())
	{
		sco=rs.getInt("sco");
		tod2=rs.getInt("tod");
		scheme=rs.getString("scheme");
		%>
		Scheme No: <%=sco%> <br>
		Type of Disability: <%=tod%> <br>
		Scheme Description: <%=scheme%> <br> <br>
		<%
	}
}
else
	out.println("Invalid detials Please try again!"+"<a href='Delete_Schemes.jsp'>Retry</a>");
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
<input type="text" name="sco" placeholder="Enter Scheme number here">
<button type="submit" class="button">SUBMIT</button>
</form>
</body>
</html>