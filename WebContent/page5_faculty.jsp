<%@page import="com.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SIMS</title>
	<style type="text/css">
		.container{
		color:white;
		padding-left:35%;
	}
	body{
		background-image: linear-gradient(315deg, #e9bcb7 0%, #29524a 74%);
	}
	
	</style>	
</head>
<body text="white">
	<%
	User user=(User)session.getAttribute("user");
	if(user==null){
		response.sendRedirect("page1_Login.jsp");
		return;
	}
%>
	<style>
		.cool-button {
    	color: white;
        padding: 20px 50px;
        border-radius: 5px;
        background: #f857a6;
        background: -webkit-linear-gradient(to right,#ff5858,#f857a6);
        background: linear-gradient(to right, #4568dc 0%, #b06ab3  100%);
        box-shadow: 0 10px 10px -2px rgba(0,0,0,.25);
        cursor:pointer;
        border: 0 !important;
		}

		body {
			  margin: 0;
			  font-family: Arial, Helvetica, sans-serif;
			}

			.topnav {
			  overflow: hidden;
			  background-color: #333;
			}

			.topnav a {
			  float: left;
			  color: #f2f2f2;
			  text-align: center;
			  padding: 14px 16px;
			  text-decoration: none;
			  font-size: 16px;
			}

			.topnav a:hover {
			  background-color: #ddd;
			  color: black;
			}

			.topnav a.active {
			  background-color: #04AA6D;
			  color: white;
			}
	</style>
	
<div id="sims_header">	<!--1-->
	
	<div style="height:100px;">  <!--2-->
		<div style="background-color:#20bf55;
					background-image: linear-gradient(315deg, #20bf55 0%, #01baef 74%);
					height:100px;float:left;width:80%;">
			<center>
			<h1>STUDENT INFORMATION MANAGEMENT SYSTEM</h1>
			</center>
		</div>
		
<!---------------------------------start header  top logout----------------------------------------->
		<div style="background-color: #05e8ba;
					background-image: linear-gradient(315deg, #05e8ba 0%, #087ee1 74%);
					height:100px;float:right;width:20%;">
			<center>
			   <b><%=user.getName() %></b>
			   <a href="LogoutController"><h3>Logout</h3></a>  
			</center>
			
		</div> 
<!---------------------------------end header  top logout----------------------------------------->
				
	</div> <!--2-->
	
			<div class="topnav">
				  <a class="active" href="HomePageController">Home</a>
				  <a href="AboutUsController">About</a>
				  <a href="ContactUsController">Contact</a>
				  <a href="NoticeController">Notice</a>
			</div>
		
</div> <!--1-->

		<div>
			<center>
			  <a href="FacultyRegController"><button onclick="" class="cool-button"><h4>FACULTY REGISTRATION</h4></button></a></br>&nbsp;&nbsp;&nbsp;
			  <br><a href="ShowFacRegController"><button onclick="" class="cool-button"><h4>SHOW ALL DETAILS</h4></button></a>&nbsp;
			 </center>
		</div>
	
</body>
</html>