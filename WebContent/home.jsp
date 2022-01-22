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
				height:100px;width:100%;float:left">
	<center><h1>STUDENT INFORMATION MANAGEMENT SYSTEM</h1></center>
	</div>
	<hr style="height:2px;border-width:0;background-color:yellow">
	
	<style>
			.cool-button {
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

			fieldset {
			font-size:12px;
			padding:20px;
			width:400px;
			height:200px;
			border-width:3px;
			border-color:yellow;
			line-height:1.8;}

	</style>
	
	<center>
		<fieldset>
	
		<div>
			<center>
			  <a href="LoginController"><button  class="cool-button"><h2>LOGIN</h2></button></a>&nbsp;&nbsp;
			  <a href="SignupController"><button  class="cool-button"><h2>SIGNUP</h2></button></a>&nbsp;
			</center>
		</div>
		
	    </fieldset>
	</center>	
</body>
</html>