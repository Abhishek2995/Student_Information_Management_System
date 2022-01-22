<%@page import="com.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SIMS</title>
	<link rel="stylesheet" href="">
	<style type="text/css">
	
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
        padding: 20px 30px;
        border-radius: 5px;
        background: #f857a6;
        background: -webkit-linear-gradient(to right,#ff5858,#f857a6);
        background: linear-gradient(to right, #4568dc 0%, #b06ab3  100%);
        box-shadow: 0 10px 10px -2px rgba(0,0,0,.25);
        cursor:pointer;
        border: 0 !important;
	}
	.cool-button1 {
    	color: white;
        padding: 10px 26px;
        border-radius: 5px;
        background: #f857a6;
        background: -webkit-linear-gradient(to right,#ff5858,#f857a6);
        background: linear-gradient(to right, #4568dc 0%, #b06ab3  100%);
        box-shadow: 0 10px 10px -2px rgba(0,0,0,.25);
        cursor:pointer;
        border: 0 !important;
	}
			
/* top navigation */

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

.about-section {
	 padding: 50px;
	text-align: center;
    background-color: ;
	font-family:Comic Sans MS;
	font-size:18px;
	color: white;

}
</style>
<style>
	  
		input[type=text],[id=contact], select {
          width: 50%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}
		
		input[type=date], select {
          width: 50%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}

		input[type=password], select {
          width: 50%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}
		

		input[type=submit] {
		  width: 36%;
		  background-color: #4CAF50;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		}
		
		input[type=reset] {
		  width: 36%;
		  background-color: #4CAF50;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		}

		input[type=submit]:hover {
		  background-color: #45a049;
		}

		
	</style>
<div id="sims_header">	<!--1-->
	
	<div style="height:100px;">  <!--2-->
		<div style="background-color:#20bf55;
					background-image: linear-gradient(315deg, #20bf55 0%, #01baef 74%);
					color:white;height:100px;float:left;width:80%;">
			<center>
			<h1>STUDENT INFORMATION MANAGEMENT SYSTEM</h1>
			</center>
		</div>
		
<!---------------------------------start header  top logout----------------------------------------->
		<div style="background-color: #05e8ba;
					background-image: linear-gradient(315deg, #05e8ba 0%, #087ee1 74%);
					height:100px;float:right;width:20%;">
			<center>
			   <b style="color:white;"><%=user.getName() %></b>
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
	<center>
			<div style="background-color: #6e72fc;
						background-image: linear-gradient(315deg, #6e72fc 0%, #ad1deb 40%);
						color: white;height:55px;float:center;width:52.5%;font-family:Comic Sans MS;">
			<h2>FEES PAYMENTS.</h2>
			</div>
		</center>
	<center>
		<%
			String errMsg=(String)request.getAttribute("err-msg");
			if(errMsg!=null){
		%>
			<h3 style="color:red"><%=errMsg%></h3>
		<%} %>
	</center>
<center>
<div>
	<fieldset style="width:50%;border: 3px solid #ffed00;">
	 <legend>
	  <h1 style="font-size: 50px;
				   background: -webkit-linear-gradient(315deg, #ff0000 0%, #ffed00 74%);
				   -webkit-background-clip: text;
				   -webkit-text-fill-color: transparent";>
		Students</h1>
	 </legend>
	<center>
		<form action="OnlinePaymentController" method="post">
		<label for="name">Name</label>&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
		<input type="text" id="name" name="name" placeholder="Your name.."></br>

		<label for="fname">Father Name</label>&emsp;&emsp;
		<input type="text" id="fname" name="fname" placeholder="Your last name.."></br>

		Gender&emsp;&emsp;&emsp;&emsp;&nbsp;
		<select id="gender" name="gender">
		  <option value="" disabled="disabled">Select...</option>
		  <option value="male">Male</option>
		  <option value="female">Female</option>
		  <option value="other">Other</option>
		</select></br>
		
		DOB:&emsp;&emsp;&emsp;&emsp;&nbsp;
		&emsp;<input type="date" id="myDate" value="dd/mm/yyyy" name="dob"></br>
		
		<label for="contact">Contact No.</label>&emsp;&emsp;&nbsp;&nbsp;
		<input type="number" id="contact" name="contact" placeholder="Your Contact no.."></br>
		
		<label for="email">Email Id</label>&emsp;&emsp;&emsp;&emsp;
		<input type="text" id="email" name="email" placeholder="e.g.-xyz@gmail.com"></br>
		
		<label for="course">Course</label>&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
		<select id="course" name="course">
		  <option value="" disabled="disabled">Select...</option>
		  <option value="B-Tech">B-Tech</option>
		  <option value="B-Arch">B-Arch</option>
		  <option value="M-Tech">M-Tech</option>
		  <option value="M-Arch">M-Arch</option>
		  <option value="MCA">MCA</option>
		  <option value="MBA">MBA</option>
		</select></br>

		<label for="year">Year</label>&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
		<select id="year" name="year">
		  <option value="" disabled="disabled">Select...</option>
		  <option value="1st year">1st year</option>
		  <option value="2nd year">2nd year</option>
		  <option value="3rd year">3rd year</option>
		  <option value="4th year">4th year</option>
		</select></br>
		
		<label for="enroll">Enrollment No.</label>&emsp;
		<input type="text" id="enroll" name="enroll" placeholder="Your Enroll no..."></br>
		
	    <input type="reset"  value="CLEAR">
		<input type="submit" value="SUBMIT">
		
		<!-- <a href="ShowOnlinePayController">show all</a> -->
		</form>
	</center>	
	</fieldset>
</div>
	 </center>
</body>
</html>