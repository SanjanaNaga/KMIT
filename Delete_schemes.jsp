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
   <%@page import="java.sql.Statement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Deleting Schemes</title>
</head>
<body>
<h1>  Government Schemes for persons with Disabilities </h1>
<div class="topnav">
  <a href="#home">Home</a>
  <a href="Update_schemes.jsp">Add Schemes </a>
  <a class="active" href="Delete_schemes.jsp">Modify or Delete Schemes </a>
  <a href="admin_login.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>	
<form method="post" action="test5.jsp">
<div class="box"> 
Enter the type of disability for the scheme to be modified:<input type="text" name="tod" required placeholder="Enter tod Here"><br>
</div>
<button type="submit" class="button">SUBMIT</button>
</form>
</body>
</html>