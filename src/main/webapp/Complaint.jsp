<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Complaint</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
<style>
#panch{
animation-name: pan;
animation-duration: 4s;
animation-iteration-count: infinite;
position: relative;
}
.a{
font-size:20px;

}
@keyframes pan{
 	10%{color:rgb(54, 7, 7)}
    20%{color:orange;}
    30%{color: white;}
    40%{color: green;}
    20%{color:rgb(253, 253, 23);}
     40%{color: red;}
     50%{color:blue;}
    
    }
body{
background:#c0c0cc;}
form{
width:500px;
padding:20px;
background:#7a7cbb;
font-size:20px;}
input[type=text]{
width:100%;
padding:5px;
font-size:17px;}
input[type=submit]{
padding:5px;
font-size:18px;}
textarea{
background:#f2f2f2;
width:450px;
font-size:20px;
margin:auto;}
</style>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
</head>
<body>
<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top" id="panch">Panchayat</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
				<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Home.jsp">Home</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="AboutUs.jsp">About Us</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Complaint.jsp">Place Complaint</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded" href="showcomplbypeople.jsp">See Complaints</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Contact.jsp">Contact</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Logout">Logout</a></li>
						<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Profile.jsp"><%=session.getAttribute("name") %><i class="fa-solid fa-user a"></i></a></li>
					
				</ul>
			</div>
		</div>
	</nav>

		<br><br><br><br><br><br>
		<div align="center">
		<form   action="complaint" method="post">
		<br><br>
		
		 <input type="text" name="fullname" id="fullname" placeholder="Enter your full name">
		 <br>
		   <br> 
		 <input type="text" name="wardno" id="wardno" placeholder="wardno">
		 <br>
		 <br>
		  <input type="text" name="makanno" id="makanno" placeholder="makanno">
		  <br>
		  <br>
		  <input type="text" name="cdate" id="cdate" placeholder="Date">
		  <br>
		  <br>
		  <input type="time" name="tim" id="tim" placeholder="Select Time">
		  <br>
		  <br>
		   <textarea type="text" name="comp" id="comp" rows="5" cols="15" placeholder="Write your complaint here"></textarea>
		   <br><br>
		  
		<button style="text-align: center;" type="submit" value="Register">Submit</button>
         <button type="reset">Reset</button>
		 </form>
		 </div>
		 
		
		
</body>
</html>