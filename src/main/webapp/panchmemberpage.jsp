<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.but{
border-radius: 10px;
border-style: double;
border-width: 5px;
border-color: white;
height:50px;
width:100px;
 background-color: rgb(10, 229, 193);
color: white;}
#sub{
heigth:100px;
width:100px;
background-color:green;
}
#aa{
align:center;
text-align:center;
heigth:900px;
width:800px;
background:#7a7cbb;
padding:50px;
margin-left: 280px;
margin-top: 150px;
 border-radius: 10px;
padding-top: 120px;

}

</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div id="aa">
<h2 align="center"><b>Do not share your password with anyone</b></h2>
<form method="post" action="panchayatpassword" class="register-form"
							id="login-form"><br>
<input type="text" name="password" id="password" placeholder="password"><br><br>
<button class="but" style="text-align: center;" type="submit" value="Register" id="sub">Login</button>
</form>
		</div>
		
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="http://unpkg.com/sweetalert/disk/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alart/disk/sweetalert.css">
		
		<script type="text/javascript">
		var status =document.getElementById("status").value;
		if(status == "failed"){
			swal("Sorry","password not created try again","error");
		}</script>
</body>
</html>