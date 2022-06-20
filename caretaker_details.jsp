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
<title>Care Taker Details</title>
</head>
<%!String u_name;%>
<%!String cid1;%>
<body>
<%
u_name = session.getAttribute("u_name").toString();
%>
<h1>Government Schemes for persons with Disabilities</h1>
<!-- <h2>Welcome<%out.println("  "+u_name);%></h2>  -->
<div class="topnav">
  <a  href="#home">Home</a>
  <a href="Personal_details.jsp">Personal Details</a>
  <a class="active" href="caretaker_details.jsp">Care Taker Details</a>
  <a href="scholarship.jsp">Scholarship Details</a>
  <a href="job1.jsp">Job Quota Details</a>
  <a href="login.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>
<%
try
{
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jp1","root","  ");
	Statement stmt=con.createStatement();
	stmt=con.createStatement();
	String cname="",cage="",cgender="",cphno="",chno1="";
	String csname="",csno="",clocality="",cpincode="";
	ResultSet rs2,rs4,rs5;
	rs2=stmt.executeQuery("select cid from after_login where udid='"+u_name+"'");
	while(rs2.next())
	{
		cid1=rs2.getString("cid");
	}
	session.setAttribute("cid1",cid1);
	%>
	<div class="box"> 
	<a href="Update_Cdetails.jsp" style = "float: right"><i style="font-size:24px" class="fa">&#xf040;</i></a>
	<%
//	out.print("Care Taker Details: <br>");
	rs4=stmt.executeQuery("select * from caretaker_details where cid='"+cid1+"'");
	while(rs4.next())
	{
		cname=rs4.getString("cname");
		cage=rs4.getString("cage");
		cgender=rs4.getString("cgender");
		cphno=rs4.getString("cphno");
		chno1=rs4.getString("chno");
	}
//	out.print("Care Taker Address");
	rs5=stmt.executeQuery("select * from caretaker_address where chno='"+chno1+"'"); 
	while(rs5.next())
	{
		csname=rs5.getString("sname");
		csno=rs5.getString("sno");
		clocality=rs5.getString("locality");
		cpincode=rs5.getString("pincode");
	}
	out.println("CARE TAKER DETAILS : <br>");
	out.println("Name: "+cname+"<br> Age: "+cage+"<br> Gender: "+cgender+"<br> Contact: "+cphno+" <br><br> ADDRESS: <br> House no. "+chno1);
	out.println(", Street name: "+csname+", Street no."+csno+" <br> Locality: "+clocality+", Pincode: "+cpincode);
	%> 
	</div> 
	<%
}
catch(Exception ex)
{
%><h2>


<% out.println(ex);%>
</h2>
<% 
ex.printStackTrace();
}
%>

</body>
</html>