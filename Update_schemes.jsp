<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Adding Schemes</title>
</head>
<body>
<h1>  Government Schemes for persons with Disabilities </h1>
<div class="topnav">
  <a href="#home">Home</a>
  <a class="active" href="Update_schemes.jsp">Add Schemes </a>
  <a href="Delete_schemes.jsp">Modify or Delete Schemes</a>
  <a href="admin_login.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>		 
<form method="post" action="test4.jsp">
<div class="box">  
<%out.println("<br> ENTER NEW SCHEME DETAILS :<br> <br>");%>
Type of Disability    <input type="text" name="tod" required><br>
Scheme Name         <input type="text" name="schme" required>
</div>
<button type="submit" class="button">SUBMIT</button>
</form>
</body>