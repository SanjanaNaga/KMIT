<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="Styles.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Job Quota</title>
</head>
<body>
<h1>Government Schemes for persons with Disabilities</h1>
<div class="topnav">
  <a  href="#home">Home</a>
  <a href="Personal_details.jsp">Personal Details</a>
  <a href="caretaker_details.jsp">Care Taker Details</a>
  <a href="scholarship.jsp">Scholarship Details</a>
  <a class="active" href="job1.jsp">Job Quota Details</a>
  <a href="login.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>
<form method="get" action="Quota.jsp">
<div class="box">
<label for="count">Select total number of attempts:</label>
<select name="count" id="count">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
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