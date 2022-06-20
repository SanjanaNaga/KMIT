
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
<title>Home Page</title>
</head>
<body>
<h1>  Government Schemes for persons with Disabilities </h1>
<div class="topnav">
  <a href="#home">Home</a>
  <a class="active" href="Update_schemes.jsp">Add Schemes </a>
  <a href="Delete_schemes.jsp">Modify or Delete Schemes </a>
  <a href="admin_login.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>	
<div class="box">
<%
String tod1=null,scheme=null,sc1=null;
tod1=request.getParameter("tod");
scheme=request.getParameter("scheme");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	//Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1", "root", " ");
	Statement st=conn.createStatement();
	st = conn.createStatement(); 
	int tod=Integer.valueOf(tod1); 
	String sql8 ="insert into display_schemes(tod,scheme)  values('"+tod+"','"+scheme+"')";
	st.executeUpdate(sql8);
	out.println("<br> Data is added successfully");
			/*
	Statement stmt=conn.createStatement();
	stmt=conn.createStatement();
	ResultSet rs;
	rs=stmt.executeQuery("select schme from display_schemes where tod='"+tod+"'");
	if(rs.next())
	{
		sc1=rs.getString("schme");
		out.println("Data successfully retrieved from display_schemes table<br>");
	}
	out.println("The Schemes is:<br>"+sc1);*/
	conn.close();
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