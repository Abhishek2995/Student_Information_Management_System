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
	<div style="background-color:#20bf55;
				background-image: linear-gradient(315deg, #20bf55 0%, #01baef 74%);
				height:75px;width:97%;float:left ">
	<center>
	<h1>STUDENT INFORMATION MANAGEMENT SYSTEM</h1>
	</center>
	</div>
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
		  width: 70%;
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
 
<% 
	if(request.getAttribute("loginError")!=null){
%>
    <h1 style="text-color:#ff4500V"><%=request.getAttribute("loginError") %></h1>
<%
	}//end  
%>
 
 <center>
 		<%
			String errMsg=(String)request.getAttribute("err-msg");
			if(errMsg!=null){
		%>
			<h2 style="color:red"><%=errMsg%></h2>
		<%} %>
      <fieldset style="width:45%;background-color:"><legend><h2>LOG IN</h2></legend>
	  	
	<div>
	<center>
		<form action="LoginController" method="post">
		
		<label for="email">Email</label>&emsp;&emsp;&emsp;
		<input type="text" id="email" name="name" placeholder="Your email.."></br>
		
		<label for="password">Password</label>&emsp;&nbsp;&nbsp;
		<input type="password" name="password" placeholder="Your password.."></br>

	   
		<input type="submit" value="LOGIN">
		</form>
	</center>	
	</div>
	 
	
	  
 </fieldset>
	</center>
	
</body>
</html>

