<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Rstyle.css" />
<title>Registration Page</title>
</head>
<%!String u_name;%>
<%!String pa_wd,fname,cid;%>

<%
u_name=request.getParameter("u_name");
pa_wd=request.getParameter("pa_wd");
fname=request.getParameter("name");
cid=request.getParameter("cid");
session.setAttribute("u_name",u_name);
session.setAttribute("cid",cid);
session.setAttribute("pa_wd",pa_wd);
%>
<h2>REGISTER HERE</h2>
<hr class="line">
	<form id="pd" action="test2.jsp" method="get">
<div class="details" >
	<%
	%>
	<h4>  PERSONAL  DETAILS :</h4>
	NAME  <input type="text" name="fname" id="name" placeholder="Enter your name"> &nbsp;&nbsp;
	AGE  <input type="number" name="page"> <br><br>
	D.O.B <input type="text" name="pdob" placeholder="dd/mm/yyyy"> &nbsp;&nbsp;
	GENDER:   Male <input type="radio" name="gender"> Female <input type="radio" name="gender"> Others <input type="radio" name="gender"> <br><br>
	MOBILE <input type="text"  name="phno">
	

	
	<h4>  ADDRESS OF DISABLED PERSON : </h4>
     H.NO <input type="text" name="hno"> &nbsp; &nbsp;
	 STREET <input type="text" name="street"> &nbsp;&nbsp;
	 STREET NO <input type="text" name="sno"> <br><br>
	 LOCALITY <input type="text" name="loc"> &nbsp;&nbsp;
	 PINCODE <input type="number"  name="pin">

	<h4> TYPE OF DISABILITY : </h4><br>
	<select id="tod" name="tob">
	<option value="BLINDNESS">BLINDNESS</option>
	<option value="HEARING IMPAIRMENT">HEARING IMPAIRMENT</option>
	<option value="MENTAL HEALTH">MENTAL HEALTH</option>
	<option value="LOCOMOTOR DISABLITY">LOCOMOTOR DISABLITY</option>
	<option value="INTELLECTUAL DISABILITY">INTELLECTUAL DISABILITY</option>
	<option value="CEREBRAL PALSY">CEREBRAL PALSY</option>
	</select>

	<h4> CARE TAKER DETAILS : </h4><br>
    NAME <input type="text"  name="cfl" id="cname" placeholder="Enter caretaker name"> &nbsp;&nbsp;
    AGE <input type="number" name="cage"> <br><br>
	GENDER:  Male <input type="radio" name="cgender"> Female <input type="radio" name="cgender"> Others <input type="radio" name="cgender"> <br> <br>
	MOBILE <input type="text"  name="cphno"> &nbsp;&nbsp;
	H.NO <input type="text"  name="chno"> &nbsp;&nbsp;
	STREET <input type="text"  name="cstreet"> <br><br>
	STREET NO <input type="text"  name="cstno"> &nbsp;&nbsp;
	LOCALITY <input type="text"  name="cloc"> &nbsp;&nbsp;
	PINCODE <input type="number"  name="cpin"> &nbsp;&nbsp;
<button type="submit" class="registerbtn">REGISTER</button>
</div>
	</form>
</body>
</html>