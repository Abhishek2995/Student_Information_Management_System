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
	<center><h1>STUDENT INFORMATION MANAGEMENT SYSTEM</h1></center>
	<hr style="height:2px;border-width:0;background-color:yellow">
	
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
		  width: 43%;
		  background-color: #4CAF50;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		}
		
		input[type=reset] {
		  width: 43%;
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

		div {
		  border-radius: 5px;
		  background-color: ;
		  color:;
		  padding: 20px;
		}	
	</style>
		
<center>
		<%
			String errMsg=(String)request.getAttribute("err-msg");
			if(errMsg!=null){
		%>
			<h3 style="color:red"><%=errMsg%></h3>
		<%} %>
      <fieldset style="width:40%;background-color:"><legend><h1>Sign up</h1></legend>
	  
	  
	<div>
	<center>
		<form action="SignupController" method="post">
		<label for="fname">First Name</label>&emsp;&emsp;&emsp;&emsp;&emsp;
		<input type="text" id="fname" name="fname" placeholder="Your first name.."></br>
		
		<label for="lname">Last Name</label>&emsp;&emsp;&emsp;&emsp;&emsp;
		<input type="text" id="lname" name="lname" placeholder="Your last name.."></br>

		<label for="email">Email</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<input type="text" id="email" name="email" placeholder="e.g.-xyz@gmail.com"></br>
		
		<label for="password">Password</label>&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
		<input type="password" id="password" name="password" placeholder="Your password.."></br>
		
		
		<label for="cpassword">Confirm Password</label>&emsp;&nbsp;&nbsp;&nbsp;
		<input type="password" id="cpassword" name="cpassword" placeholder="Your Confirm password.."></br>
		
	   
	    <input type="reset"  value="CLEAR">
		<input type="submit" value="SUBMIT">
		
		</form>
	</center>	
	</div>
	 
</body>
</html>
