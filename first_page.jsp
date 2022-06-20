<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html> 
<head> 
<link rel="stylesheet" type="text/css" href="style.css" />
<title>NEW USER</title>
</head> 
 <body >
<div class= "login"> 
  <form action="Registration.jsp" method="get">
	Full Name <input type="text" name="name" placeholder="Enter full Name">
	Care_Taker Id<input type="text" name="cid" placeholder="Enter Care Taker Id">
	Udid_No. <input type="text" name="u_name" placeholder="Enter UDID">
	Password <input type="password" name="pa_wd" placeholder="Password">
  
    <button class="btn"><a href = "Registration.jsp">SUBMIT </a></button> <br>
  </form>
 </div> 
 </body> 
</html>