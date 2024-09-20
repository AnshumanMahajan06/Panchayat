<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#big{ margin-left: 190px;
align:center;
height:900px;
width:1000px;
background-image: linear-gradient(120deg, #8f1489,#335c67,#596733,#673333);}
#data{
height:150px;
width:240px;
color:pink;
background-color:red;
text-align:center;
position: absolute;
top: 290px;
left:380px;
padding-top:40px;
 border-radius: 20px;
}
#comp{height:150px;
width:250px;
color:pink;
background-color:red;
text-align:center;
 position: absolute;
top: 290px;
left:840px;
padding-top:40px;
 border-radius: 20px;
           
}
.d{
align:center;
text-align:center;
color:black;}
#h1{
align:center;
text-align:center;
color:#c72fa3;
}
#aa{
height:40px;
width:85px;
color:white;
position: absolute;
top: 550px;
Right:480px;
background-color:black;
 border-radius: 20px;
 padding:10px;
}
h2{color:white;
}
</style>
</head>
<body>
<div id="big"align="center">
<div>
<br><br><br>
<h1>PANCHAYAT DATABASE DETAILS ACCESS</h1>
<h2 id="h1">
Your are a panchayat member,keeping data safe should be your priority!</h2>
<h1 class="d">
<b>View database by clicking below</b></h1>
<br><br>
</div>
<div id="data">
<a href="showpeople.jsp"><h2> people database</h2></a>
</div>
<div id="comp">
<a href="showcomplaint.jsp"><h2>people complaints</h2></a>
</div>
<div id="aa">
<a href="Home.jsp"><h2>Logout</h2></a></div>

</div >
</body>
</html>