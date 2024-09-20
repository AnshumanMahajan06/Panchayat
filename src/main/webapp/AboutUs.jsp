<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Panchayat</title>
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
	<br><br><br><br><br><br>
<div align="center">
<h4>About Panchayat</h4>
<br><br>
<h6>For more information regarding panchayat click on below links</h6>
<br>
<h2><a href="https://prd.mp.gov.in/Public/Panchayat_Other_Report.aspx" target="_blank"> click here to get info regarding panchayat</a></h2>
<br>
<br>
<h2><a href="https://www.prd.mp.gov.in/PanchParmeshwar/Public/WorksDetails.aspx?DID=NDg=&GP_ID=MjI5MTY=&HID=Mw== " target="_blank2">click here to get info regarding panchayat construction</a></h2>
<br><br>
<h2><a href="https://mppanchayatdarpan.gov.in/PanchParmeshwar/Public/GetWorksListAll.aspx?DistId=NDg=&LBId=MjQzMzU=&GPId=MjI5MTE=&TypeId=MA==
" target="_blank3"> click for more informantion regarding various sehemes</a></h2>
<br><br>
<h2><a href="https://www.google.com/maps/place/%E0%A4%AC%E0%A4%AE%E0%A5%8D%E0%A4%AD%E0%A4%BE%E0%A4%A6%E0%A4%BE,+%E0%A4%AE%E0%A4%A7%E0%A5%8D%E0%A4%AF+%E0%A4%AA%E0%A5%8D%E0%A4%B0%E0%A4%A6%E0%A5%87
%E0%A4%B6+450445/@21.1913265,76.2315371,16z/data=!3m1!4b1!4m6!3m5!1s0x3bd9ce778caaa0a3:0xc2eb0b43a045d37d!8m2!3d21.1884927!4d76.
2377732!16s%2Fg%2F1tj1__mq?entry=ttu" target="_blank4"> click for bambhada google map</a></h2>
</div>
</body>
</html>