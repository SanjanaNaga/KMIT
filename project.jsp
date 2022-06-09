<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css?<?php echo time(); ?>" />
<title>Registration Page</title>
<link rel = "icon" href = 
"https://cdn5.vectorstock.com/i/thumb-large/99/49/disabled-icon-logo-vector-15609949.jpg" 
        type = "image/x-icon">
</head>
<body>

<h1>  Government Schemes for persons with Disabilities </h1>
<div class="login"> 
<form id="login" method="post" action="login.php">
<h3>LOGIN HERE</h3>  
<input type="text" name="un" placeholder="Enter UDID Here"><br>
<input type="password" name="pwd" placeholder="Enter Password Here">
<button class="btn"><a href="#">LOGIN</a></button> <br>
Forgot <button class="btn"><a href="#">password?</a></button> <br>
New User <button class="btn"><a href="#">Sign Up?</a></button> <br>
</form>
</div>
</body>
</html>