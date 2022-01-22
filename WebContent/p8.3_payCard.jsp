<%@page import="com.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SIMS</title>
	<style type="text/css">
		
	/* body{
		background-image: linear-gradient(315deg, #e9bcb7 0%, #29524a 74%);
	} */
	</style>

<style type="text/css">
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
          display: block;
          color: #f2f2f2;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
          font-size: 17px;
        }

.topnav a:hover {
          background-color: #ddd;
          color: black;
        }

.topnav a.active {
          background-color: #04AA6D;
          color: white;
        }

.topnav .search-container {
          float: right;
        }

.topnav input[type=text] {
          padding: 6px;
          margin-top: 8px;
          font-size: 17px;
          border: none;
        }

.topnav .search-container button {
          float: right;
          padding: 8px 10px;
          margin-top: 8px;
          margin-right: 16px;
          background: #ddd;
          font-size: 17px;
          border: none;
          cursor: pointer;
        }

.topnav .search-container button:hover {
          background: #ccc;
        }

        @media screen and (max-width: 600px) {
          .topnav .search-container {
            float: none;
          }
          .topnav a, .topnav input[type=text], .topnav .search-container button {
            float: none;
            display: block;
            text-align: left;
            width: 100%;
            margin: 0;
            padding: 14px;
          }
          .topnav input[type=text] {
            border: 1px solid #ccc;  
          }
        }		
</style>
<style type="text/css">

		input[type=text], select {
      width: 85%;
		  padding: 11px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 2px solid #ccc;
		  border-radius: 4px;
		  border-color: #8f37aa;
		  box-sizing: border-box;
		}

		input[id=x], select {
        width: 35%;
       /*  float: left; */
		  padding: 11px 20px;
		  margin: 8px 0px;
		  margin-right: 65px;
		  display: inline-block;
		  border: 2px solid #ccc;
		  border-radius: 4px;
		  border-color: #8f37aa;
		  box-sizing: border-box;
		}

		input[id=y], select {
        width: 25%;
		  padding: 11px 20px;
		  margin: 8px 0px;
		  margin-left: 40px;
		  display: inline-block;
		  border: 2px solid #ccc;
		  border-radius: 4px;
		  border-color: #8f37aa;
		  box-sizing: border-box;
		}

		input[id=z], select {
        width: 90%;
		  padding: 11px 0px;
		  margin: 8px 0px;
		  display: inline-block;
		  border: 2px solid #ccc;
		  border-radius: 4px;
		  border-color: #8f37aa;
		  box-sizing: border-box;
		}

		.button1 {
			  background-color: #8f37aa; /* Green */
			  width: 90%;
			  border: none;
			  border-radius: 4px;
			  color: white;
			  padding: 11px 0px;
			 
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 17px;
			  margin: 2px 4px;
			  cursor: pointer;
			  font-family:Comic Sans MS;"
			}

</style>

		<style>
		.card {
		  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		  max-width: 385px;

		  margin: 30px;
		  font-family: Comic Sans MS;
		  font-size: 15px;
		}

		
		.container {
		  padding: 0px 0px;
		  background-color: #f5f5f5;
		  color: #8f37aa;
		   height: 580px;
		}  


		.container::after, .row::after {
		  content: "";
		  clear: both;
		  display: table;
		}

		
		 label {
        display: inline-block;
        text-align: center;
        float: left;
      }
		</style>
</head>
<body text="">
	<%
		User user=(User)session.getAttribute("user");
		if(user==null){
			response.sendRedirect("page1_Login.jsp");
			return;
		}
	%>
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
				  <a href="ShowOnlinePayController"><<</a>
				  <a class="active" href="OnlinePaymentController">Home</a>
				  <a href=""></a>  
			</div>

</div> <!--1-->
		
		<center>
			<h2 style="font-family:Comic Sans MS;color:#8f37aa;"><u>Payment Details.</u></h2>
		</center>
		
		
<div class="my_container">
	<center>
  
    <div class="card">
			<div class="container"> 

						<div class="row">
							<h2 style="background-color: #8f37aa; color: white; height:80px;width:100%;text-align:center;font-family:Lucida Handwriting;"><b>Debit Card Payment</b></h2>
							<img src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png" style="width:100%; height: 90px;">
						</div> <!-- cardrow1 -->

						<form>

						<div class="row">
							<div class="column">
								<div class="row1.1">
									<label style="margin-left:20.5px;"><b>CARD NUMBER</b></label>
								</div>
								<div class="row1.2">
									<input type="text"  name="name"  placeholder="Valid Card Number">	
									<i class="fa fa-credit-card fa-lg"></i>
								</div>
							</div><!-- column -->	
						</div></br><!-- row 1 -->

						<div class="row">
							<div class="column">
								<div class="row2.1">
								  <label style="margin-left:20.5px;"><b>EXPIRATION DATE</b></label>
									<label style="margin-left:7em"><b>CV CODE</b></label>
								</div>
								<div class="row2.2">
									<input type="text" id="x" placeholder="MM / YY" >
									<input type="text" id="y" placeholder="CVC">
								</div>
							</div><!-- column -->
						</div></br><!-- row 2 -->

						<div class="row">
							<div class="column">
								<div class="row3.1">
									<label style="margin-left:20.5px;"><b>CARD OWNER</b></label>
								</div>
								<div class="row3.2">
									<input type="text" id="z"  placeholder="Card Owner Names">
								</div>
							</div><!-- column -->
						</div></br><!-- row 3 -->

						<div>
							<button class="button1" type="submit"><b>Process payment</b></button>
						</div>
						</form>

						</div><!-- container -->
					</div><!-- card -->
				</center>
			</div><!-- my_container -->


</body>
</html>