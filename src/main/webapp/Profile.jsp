<% if(session.getAttribute("mobile")==null){
	response.sendRedirect("Login.jsp");
}%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
<%@ page import="com.servlet.login.Login" %>
<%! String anshu; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>profile</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
<style>
.a{
font-size:20px;

}
#panch{
animation-name: pan;
animation-duration: 4s;
animation-iteration-count: infinite;
position: relative;
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
.pro{
align:center;
background-color:black;
color:white;
height:560px;
width:450px;
border-radius: 15px;
text-align: 1200px;
margin-top: 10px;
margin-left: 550px;
animation-name: box1;
animation-duration: 6s;
animation-iteration-count: infinite;
position: relative;
box-shadow: 10px 10px 10px;
border-style: double;
border-width: 10px;
border-color: white;
letter-spacing: 3px;
    
 
}
@keyframes box1 {
    20%{background-color: rgb(241, 190, 190);color:red;}
    25%{background-color: rgb(161, 239, 147);color: blueviolet;}
    30%{background-color:rgb(102, 140, 155);color:yello}
    40%{background-color:rgb(245, 192, 243);color: black;}
    50%{background-color:rgb(138, 194, 181);color: pink;}
    70%{background-color:rgb(119, 127, 119);color: white;}
    90{background-color:rgb(245, 192, 243);color: chartreuse;}
}
#head{align:center;
 text-align: center;

}
td{
 padding-left: 120px;
padding:10px;}
   
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
<h1>profile</h1>
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
	
	 
       <%
      String anshu=(String)session.getAttribute("mobile");
		try { 
			Connection con=null;
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grampanchayat","root","root");
			
			PreparedStatement pst = con.prepareStatement("SELECT * FROM people WHERE mobileno= ?");
		
			pst.setString(1, anshu);
			ResultSet rs=pst.executeQuery();
			while(rs.next()){
			%>
			<br><br><br>
			<h2 id="head">User Details</h2>
<div class="pro" >
			<table >
			<tr><td>FirstName <td><h4><%=rs.getString(1) %><td><tr>
			<tr><td>MiddleName <td><h4><%=rs.getString(2) %><td><tr><br>
			<tr><td>LastName   <td><h4><%=rs.getString(3) %><td><tr><br>
			<tr><td>MobileNumber  <td><h4><%=rs.getString(4) %><td><tr><br>
			<tr><td>MakanNumber <td><h4><%=rs.getString(5) %><td><tr>
			<tr><td>WardNumber <td><h4><%=rs.getString(6) %><td><tr>
			<tr><td>PassWord  <td><h4><%=rs.getString(7) %><td><tr>
			<tr><td>Village  <td><h4><%=rs.getString(8) %><td><tr>
			
			
			</table>
			</div>
			<%
				
			}
			}catch(Exception e){
				e.printStackTrace();
			}
    %>
 
 

</body>
</html>