<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<%!String u_name;%>
<body>
<h1>Government Schemes for persons with Disabilities</h1>
<div class="topnav">
  <a  href="#home">Home</a>
  <a href="Personal_details.jsp">Personal Details</a>
  <a href="caretaker_details.jsp">Care Taker Details</a>
  <a class="active" href="scholarship.jsp">Scholarship Details</a>
  <a href="job1.jsp">Job Quota Details</a>
  <a href="login.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
  
</div>

<form method="post" action="scholarship_next.jsp">
<div class="box">
<label for="count">Select your annual Income:</label>
<select name="count" id="count">
    <option value="1">Rs.0-10000</option>
    <option value="2">Rs.10000-25000</option>
    <option value="3">Rs.25000-50000</option>
    <option value="4">Rs.50000-75000</option>
    <option value="5">Rs.75000-100000</option>
    <option value="6">Rs.100000-150000</option>
    <option value="7">Rs.150000-200000</option>
    <option value="8">Rs.200000-250000</option>
    <option value="9">Rs.250000 and above</option>
</select> 
</div>
<button type="submit" class="button">SUBMIT</button>
</form>
<%
String sco1=null; 
sco1=session.getAttribute("u_name").toString();
session.setAttribute("sco1",sco1);
%>

</body>
</html>