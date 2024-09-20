<% if(session.getAttribute("mobile")==null){
	response.sendRedirect("Login.jsp");
}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
<style type="text/css">
#but{
height:300px;
width:300px;
 background-color: black;
color: white;
font-size: 50px;
animation-name: info2;
animation-duration: 5s;
animation-iteration-count: infinite;
position: relative;
border-radius: 20px;
border-style: double;
border-width: 10px;
border-color: white;
}
@keyframes info2{
 	10%{background-color:rgb(54, 7, 7)}
    20%{background-color:orange;}
    30%{background-color: white;}
    40%{background-color: green;}
    20%{background-color:rgb(253, 253, 23);}
     40%{background-color: red;}
     50%{background-color:blue;}
    
    }
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
#info{ text-align: center;

align:center;

width: 34.5%;float: Right
}
}
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
 
 
	<div style="width: 64.5%;float: left; border: 1px solid black;">
	
	<br><br><br><br><br><br>
	<h3>Bambhada </h3><br>
	<h5>Block/tehsil :- Burhanpur</h5>
	<h5>District :- Burhabpur</h5>
	<h5>State :- Madhya Pradesh</h5>
<br><br>
<h6>About Bambhada</h6>
<p>According to Census 2011 information the location code or village code of Bambhada village is 506229. Bambhada village is located in Burhanpur tehsil of Burhanpur district in Madhya Pradesh, India. It is situated 17km away from Burhanpur, which is both district & sub-district headquarter of Bambhada village. As per 2009 stats, Bambada is the gram panchayat of Bambhada village.<br><br>

The total geographical area of village is 670 hectares. Bambhada has a total population of 6,758 peoples, out of which male population is 2865 while female population is 2674. Literacy rate of bambhada village is 71.60% out of which 78.99% males and 63.69% females are literate. There are about 1,248 houses in bambhada village.<br><br>

When it comes to administration, Bambhada village is administrated by a sarpanch who is elected representative of the village by the local elections. As per 2019 stats, Bambhada village comes under Burhanpur assembly constituency & Khandwa parliamentary constituency. Shahpur is nearest town to bambhada for all major economic activities, which is approximately 6km away.</p>
<br><br><br><br>
<h5>Population of Bambhada</h5><br>
<table class="table table-bordered table-striped table-condensed" align="center">
<tr><td>Particulars</td>
<td>Total</td>
<td>Male</td>
<td>Female</td>
</tr>
<tr><td>Total Population</td>
<td>6,758</td>
<td>2865</td>
<td>2674</td>
</tr>
<tr><td>Literate Population </td>
<td>3,966</td>
<td>2,263</td>
<td>1,703</td>
</tr>
<tr><td>Illiterate Population</td>
<td>1,573</td>
<td>602</td>
<td>971</td>
</tr>
</table>
<br><br>
<h5>Nearby Villages of Bambhada</h5>
<b>mohad</b><br>
<b>malvir</b><br>
<b>Dhamangaon</b><br>
<b>Khamni</b><br>
<b>Bhawasa</b><br>
<b>Dapora</b><br>
<b>Chapora</b><br>
<b>Icchapur</b><br>
<b>bakhkhari</b><br>
	</div>
	<br><br><br><br><br><br><br><br>
		<div style="width: 34.5%;float: Right;">
		<h6>Bambhada - Village Overview</h6>
		<table  class="table table-bordered table-striped table-condensed"align="center">
		
		
		<tr><td>Gram Panchayat :</td>
		<td>Bambada</td></tr>
		
		<tr><td>Block / Tehsil :</td>
		<td>Burhanpur</td></tr>
		
		<tr><td>District :</td>
		<td>Burhanpur</td></tr>
		
		<tr><td>State :</td>
		<td>Madhya Pradesh</td></tr>
		
		<tr><td>Pincode :</td>
		<td>450445</td></tr>
		
		<tr><td>Area :</td>
		<td>670 hectares</td></tr>
		
		<tr><td>Population </td>
		<td>6,758</td></tr>
		
		<tr><td>Households :</td>
		<td>1,248</td></tr>
		
		<tr><td> Assembly Constituency :</td>
		<td> Burhanpur</td></tr>
		
		<tr><td>Parliament Constituency :</td>
		<td>Khandwa</td></tr>
		
		<tr><td>Nearest Town : 	Shahpur (6 km)</td>
		<td>Shahpur (6 km)</td></tr>
		
		
		</table>
		<br><br>
		<h5>Villages in Bambada Gram Panchayat</h5><br>
		<table class="table table-bordered table-striped table-condensed"align="center">
		<tr>
		<td>Bambhada</td>
		<td>Chandgarh</td>
		</tr>
		</table>
		<br><br>
		</div>
		
		<div id="info">
		<br>
        <button id="but" class="btn btn-light"><a href="panchmemberpage.jsp">For panchayat members</a></button>
		</div>
		
	
</body>
</html>