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
			
	<style>
	  
		input[type=text], select {
          width: 98%;
		  padding: 15px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}
		
		input[type=text1], select {
          width: 99%;
		  padding: 15px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}
		
		input[type=text2], select {
          width: 99%;
		  padding: 40px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}
		input[type=number], select {
          width: 99%;
		  padding: 15px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}
		
		input[type=reset] {
		  width: 49%;
		  background-color: #4CAF50;
		  color: white;
		  padding: 14px 20px;
		  margin: 50px 0;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		}

		input[type=submit] {
		  width: 50%;
		  background-color: #4CAF50;
		  color: white;
		  padding: 14px 20px;
		  margin: 50px 0;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		}
		
		textarea {
				  width: 99%;
				  padding: 40px 20px;
				  margin: 8px 0;
				  display: inline-block;
				  border: 1px solid #ccc;
				  border-radius: 4px;
				  box-sizing: border-box;
				  outline: none;
				  resize: none; 
				  overflow: auto;
				  autoresize: none;
				}

		input[type=submit]:hover {
		  background-color: #45a049;
		}

		
			
	</style>
	
<div id="sims_header">	<!--1-->
	
	<div style="height:100px;">  <!--2-->
		<div style="background-color:#20bf55;
					background-image: linear-gradient(315deg, #20bf55 0%, #01baef 74%);
					height:100px;float:left;width:100%;">
			<center>
			<h1>STUDENT INFORMATION MANAGEMENT SYSTEM</h1>
			</center>
		</div>
		
	</div> <!--2-->
<!-------------------------------------------------------------------------->
		<div style="background-color: ;">
		<center>	
		<h1 style="color:black; font-family:Lucida Handwriting;"><u>Contact Us</u></h1>
		</center>	
		</div> 
<!-------------------------------------------------------------------------->
				
</div> <!--1-->	
	
<body>
		
	<div> <!---1--->
		
		<form action="" method="post">
		
	            <div id="row" style="height:100px;text-align:left"> <!---2--->

                        <div style="height:100px;float:left;width:50%;">
                            <label for="name" class="">Your name</label></br>
                            <input type="text" id="name" name="name" placeholder="Your Name...">
                        </div>                 
                  
                        <div style="height:100px;float:right;width:50%;">
                            <label for="email" >Your email</label></br>
                            <input type="text" id="email" name="email" placeholder="Your Email...">
                        </div>
                    
                </div><!---2--->
                    
						<div style="height:100px;width:100%;text-align:left">
							<label for="contact">Contact No.</label></br>
							<input type="number" id="contact" name="contact" placeholder="Your Contact no..."></br>
						</div>	
						
						<div style="height:100px;text-align:left;width:100%;">
							<label for="message">Message</label></br>
							<textarea placeholder="Write us a message..."></textarea></br>
 						</div> </br> 
						 
						 <div>
							<input type="reset" value="CLEAR">
							<input type="submit" value="SUBMIT">
						</div>
		</form>
                
	</div> <!---1--->

</body>
</html>