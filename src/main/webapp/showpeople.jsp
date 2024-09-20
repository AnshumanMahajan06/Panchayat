<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

   #back{
   float: left;
color:black;
 height: 50px;
 width: 85px;
 background-color:black;
  margin-Right: 10px;
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
        <a href="database.jsp" class="signup-image-link"><b>Back</b></a>
		</div>
	
	<div style="text-align: center;">
	<br><br><br>
	<table class="table table-bordered table-striped table-condensed" align="center">
	<tr>
	<td><b>firstname</b></td>
	<td><b>middlename</b></td>
	<td><b>lastname</b></td>
	<td><b>mobileno</b></td>
	<td><b>makanno</b></td>
	<td><b>wardno</b></td>
	<td><b>village</b></td>
	</tr>
	 
	<tr>
<% 


try { 
		
			//1) load the database Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2) get Connection with the database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grampanchayat","root","root");
			String Query="SELECT * FROM people";
			Statement pst = con.createStatement();
			ResultSet rs=pst.executeQuery(Query);
			while(rs.next()){
			%>
			
		     <td><%=rs.getString("firstname") %></td>
			<td><%=rs.getString("middlename") %></td>
			<td><%=rs.getString("lastname") %></td>
			<td><%=rs.getString("mobileno")%></td>
			<td><%=rs.getString("makanno")%></td>
			<td><%=rs.getString("wardno")%></td>
			<td><%=rs.getString("village")%></td>
			
		
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