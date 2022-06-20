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
<title>Personal Details</title>
</head>
<%!String u_name;%>
<body>
<h1>Government Schemes for persons with Disabilities</h1>
<div class="topnav">
  <a  href="#home">Home</a>
  <a class="active" href="Personal_details.jsp">Personal Details</a>
  <a href="caretaker_details.jsp">Care Taker Details</a>
  <a href="scholarship.jsp">Scholarship Details</a>
  <a href="job1.jsp">Job Quota Details</a>
  <a href="login.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>

<div class="box">
<a href="Update_Pdetails.jsp" style = "float: right"><i style="font-size:24px" class="fa">&#xf040;</i></a>
<%
u_name = session.getAttribute("u_name").toString();
try
{
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1","root"," ");
	Statement stmt=con.createStatement();
	stmt=con.createStatement();
	String uname="",pwd="",hno1="",age="",gender="",phn_no="",fname="";
	String sname="",sno="",locality="",pincode="";
	ResultSet rs,rs1,rs2,rs3;
	
	rs1=stmt.executeQuery("select fname,age,gender,phn_no from personal_details where udid='"+u_name+"'");
	//out.println("Personal Details");
	while(rs1.next())
	{
		fname=rs1.getString("fname");
		age=rs1.getString("age");
		gender=rs1.getString("gender");
		phn_no=rs1.getString("phn_no");	
	}
	out.print("DETAILS: <br>");
	%> 
	<%  out.println("Name: "+fname); %>  
	<br>  
	<% out.println("Age: "+age); %>  
	<br>  
	<% out.println("Gender: "+gender); %>  
	<br>  
	<% out.println("Contact: "+phn_no); %>  
	<br>
	<%
	
	
	rs2=stmt.executeQuery("select hno from after_login where udid='"+u_name+"'");
	while(rs2.next())
	{
		hno1=rs2.getString("hno");
	}
	rs3=stmt.executeQuery("select * from disabled_address where hno='"+hno1+"'");
	out.print("<br> ADDRESS: <br>");
	while(rs3.next())
	{
		sname=rs3.getString("sname");
		sno=rs3.getString("sno");
		locality=rs3.getString("locality");
		pincode=rs3.getString("pincode");
	}
	out.println("House no."+hno1+ ", Street name: "+sname+", Street no. "+sno+" <br> Locality : "+locality+", Pincode: "+pincode);
}
catch(Exception ex)
{
%>
</div>
<h2>
<% out.println(ex);%>
</h2>
<% 
ex.printStackTrace();
}
%>

</body>
</html>