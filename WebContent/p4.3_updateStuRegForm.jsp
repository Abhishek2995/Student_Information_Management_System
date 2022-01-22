<%@page import="com.pojo.User"%>
<%@page import="com.pojo.studentReg"%>
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
	  
		input[type=text], select {
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
		
		input[type=radio], select {
          width: 50%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}

		input[type=submit] {
		  width: 61%;
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
			   <b><%=user.getName()%></b>
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
		<h2 style="color:#40e0d0; font-family:Comic Sans MS;"><u>UPDATE STUDENT REGISTRATION FORM</u></h2>
	<center>	
	<%
	studentReg stu=(studentReg)request.getAttribute("stu");
		if(stu==null){
			response.sendRedirect("ShowStuRegController");
			return;
		}
		String errMsg=(String)request.getAttribute("err-msg");
	%>
	<center>
		<% 
			if(errMsg!=null){
		%>
			<h5 style="color:red"><%=errMsg%></h5>
		<%} %>
	</center>
	
	<div>
		<center>
		
		<form method="post" action="UpdateStuRegFormController">
		<label for="fname">First Name</label>&emsp;&emsp;&emsp;
		<input type="text" name="first_name" value="<%=stu.getFirstName()%>"></br>
		
		<label for="mname">Middle Name</label>&emsp;&emsp;
		<input type="text" id="mname" name="middle_name" value="<%=stu.getMiddleName()%>"></br>

		<label for="lname">Last Name</label>&emsp;&emsp;&emsp;
		<input type="text" id="lname" name="last_name" value="<%=stu.getLastName()%>"></br>
		
		<label for="course">Courses</label>&emsp;&emsp;&emsp;&emsp;&nbsp;
		<input type="text" id="course" name="courses" value="<%=stu.getCourses()%>"></br>
		
		Gender&emsp;&emsp;&emsp;&nbsp;&emsp;&nbsp;
		<input type="text" id="gender" name="gender" value="<%=stu.getGender()%>"></br>
		
		DOB:&emsp;&emsp;&emsp;&emsp;&nbsp;
		&emsp;<input type="date" id="myDate" name="dob" value="<%=stu.getDateOfBirth()%>"></br>
		
		<label for="contact">Contact No.</label>&emsp;&emsp;&nbsp;&nbsp;
		<input type="text" id="contact" name="contact" value="<%=stu.getContact()%>"></br>
		
		<input type="hidden" name="email" value=<%=stu.getEmail()%>>
		
		<label for="address1">Permanent Add.</label>&emsp;
		<input type="text" id="address1" name="address1" value="<%=stu.getAddress1()%>"></br>
		
		<label for="address2">Local Add.</label>&emsp;&emsp;&emsp;
	    <input type="text" id="address2" name="address2" value="<%=stu.getAddress2()%>"></br>
	   
		<input type="submit" value="SUBMIT">
		</form>
		</center>	
	</div>
</body>
</html>