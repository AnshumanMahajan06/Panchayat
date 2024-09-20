<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

   #back1{
   float:left;
 height: 50px;
 width: 85px;
 background-color:black;
  margin-Right: 20px;
  border-radius: 20px;
    padding:15px;
   animation-name: back;
animation-duration: 3s;
animation-iteration-count: infinite;
position: relative;
   
   }
   @keyframes back{
    50%{background-color:red;color:orange;left:0px;}
    50%{background-color:yello;color: aqua;left: 10px;}
    
</style>
<meta charset="UTF-8">
<title>Contact</title>
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
<br>
	<div id="back">
        <a href="database.jsp" class="signup-image-link" id="back1"><b>Back</b></a>
		</div>
	<br><br>
	
	
	<div style="text-align: center;">
	<br>
	<table class="table table-bordered table-striped table-condensed" align="center">
	<tr>
	<td><b>Complaint no</b></td>
	<td><b>Full Name</b></td>
	<td><b>phone Number</b></td>
	<td><b>Ward Number</b></td>
	<td><b>Makan Number</b></td>
	<td><b>Date</b></td>
	<td><b>Time</b></td>
	<td><b>Complaint</b></td>
	<td><b>Panchayat Reply</b></td>
	
	</tr>
	 
	<tr>
<% 


try { 
		
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grampanchayat","root","root");
			String Query="SELECT * FROM com";
			Statement pst = con.createStatement();
			ResultSet rs=pst.executeQuery(Query);
			while(rs.next()){
			%>
			<td><%=rs.getInt("complaintno") %></td>
			<td><%=rs.getString("fullname") %></td>
			<td><%=rs.getString("phoneno") %></td>
			<td><%=rs.getString("wardno") %></td>
			<td><%=rs.getString("makano") %></td>
			<td><%=rs.getString("date")%></td>
			<td><%=rs.getString("time") %></td>
			<td><%=rs.getString("complaint")%></td>
			
		<td><a href="reply.jsp">Add Reply</a></td>
		
		
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