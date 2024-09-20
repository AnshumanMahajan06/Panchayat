<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
<style type="text/css">
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
    
    }</style>
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
	<div style="text-align: center;">
	<br><br><br><br><br>
	<table class="table table-bordered table-striped table-condensed"align="center">
	<tr>
	<td><b>Sno</b></td>
	<td><b>PostName</b></td>
	<td><b>Name</b></td>
	<td><b>Contact</b></td>
	</tr>
	 
	<tr>
<% 


try { 
		
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grampanchayat","root","root");
			String Query="SELECT * FROM panchcontact";
			Statement pst = con.createStatement();
			ResultSet rs=pst.executeQuery(Query);
			while(rs.next()){
			%>
			
		     <td><%=rs.getInt("sno") %></td>
			<td><%=rs.getString("post") %></td>
			<td><%=rs.getString("panchname") %></td>
			<td><%=rs.getString("contactno")%></td>
		
</tr>
		
		
			<%
				
			}
			}catch(Exception e){
				e.printStackTrace();
			}
    %>
    	
</table>
</div>
</body>
</html>