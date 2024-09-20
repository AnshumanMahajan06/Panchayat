<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="UTF-8">
<title>login Page</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>

<style>
body{
background:#c0c0cc;}
form{
width:500px;
padding:20px;
margin:auto;
background:#7a7cbb;
font-size:20px;}
input[type=text]{
width:100%;
padding:5px;
font-size:17px;}
input[type=submit]{
padding:5px;
font-size:18px;}

</style>

</head>
<body>

<br><br><br><br><br><br>
		<div align="center">
		<form   action="Forgot" method="post">
		<br><br>
		 <input type="text" name="mobileno" id="mobileno" placeholder="Enter mobile no">
		  <br>
		  <br>
		  
		 
		 <input type="text" name="password" id="password" placeholder="New Passowrd">
		 <br>
		 <br>
		  <input type="text" name="password" id="password" placeholder="Re-enter password">
		  <br>
		  <br>
		  
		<button style="text-align: center;" type="submit" value="Register">Reset</button>
        
		 </form>
		 </div>
		 
		 <!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="http://unpkg.com/sweetalert/disk/sweetalert.min.js"></script>
		<link rel="stylesheet" href="alart/disk/sweetalert.css">
		<script type="text/javascript">
		var status =document.getElementById("status").value;
		if(status == "success"){
			swal("congrats","Password reset successful,you can Login now","success");
		}
		else{
			swal("Sorry","Unable to change password try again","error");
			
		}</script> 
</body>
</html>