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
		.container{
		color:white;
		padding-left:35%;
	}
	body{
		background-image: linear-gradient(315deg, #e9bcb7 0%, #29524a 74%);
	}
	
	</style>	
		<style>
			* {box-sizing: border-box;}
		
				#stuReg {
				  font-family: Arial, Helvetica, sans-serif;
				  border-collapse: collapse;
				  width: 100%;
				}

				#stuReg td, #stuReg th {
				  border: 1px solid #ddd;
				  text-align: center;
				  padding: 8px;
				}

				#stuReg tr:nth-child(even){background-color: #f2f2f2;}

				#stuReg tr:hover {background-color: #ddd;}

				#stuReg th {
				  padding-top: 12px;
				  padding-bottom: 12px;
				  text-align: center;
				  background: linear-gradient(to right, #4568dc 20%, #b06ab3  100%);
				  color: white;
				}
				
			  .button1 {
			  background-color: #4CAF50; /* Green */
			  border: none;
			  color: white;
			  padding: 12px 12px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 14px;
			  margin: 2px 2px;
			  cursor: pointer;
			}
			
			  .button2 {
			  background-color: #f44336; /* Red */
			  border: none;
			  color: white;
			  padding: 12px 12px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 14px;
			  margin: 2px 2px;
			  cursor: pointer;
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
		<style>
		.card {
		  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		  max-width: 350px;
		  margin: auto;
		  text-align: center;
		  font-family: arial;
		}


		.container {
		  padding: 0px 0px;
		  background-color: white;
		  color:black;
		}

		.container::after, .row::after {
		  content: "";
		  clear: both;
		  display: table;
		}

		.column {
		  float: left;
		  width: 33%;
		  /* height: 350px; */
		  margin-bottom: 50px;
		  padding: 0px 10px;
		}

		.price {
		  color: grey;
		  font-size: 22px;
		}

		.card button {
		  border: none;
		  outline: 0;
		  padding: 12px;
		  color: white;
		  background-color: #000;
		  text-align: center;
		  cursor: pointer;
		  width: 100%;
		  font-size: 18px;
		}

		.card button:hover {
		  opacity: 0.7;
		}

		.label{
		background-color: #05e8ba;
		background-image: linear-gradient(315deg, #05e8ba 0%, #087ee1 74%);
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
				  <a class="active" href="HomePageController">Home</a>
				  <a href="AboutUsController">About</a>
				  <a href="ContactUsController">Contact</a>
				  <a href="NoticeController">Notice</a>
			</div>

			
					
</div> <!--1-->
		
		<center>
			<div style="background-color: #6e72fc;
									background-image: linear-gradient(315deg, #6e72fc 0%, #ad1deb 40%);
									color: white;height:65px;float:left;width:100%;font-family:Comic Sans MS;">
			<h2>CLASSES INFORMATIONS.</h2>
			</div>
		</center>
		
		
		<marquee><h2 style="color:white;font-family:Comic Sans MS;">Coming Soon...</h2></marquee>
		<center><h2 style="color:red;font-family:Comic Sans MS;">This time table only for inform the students...</h2></center>
		
		<div style="color:white;font-family:Comic Sans MS;">
			<center><h1>TIME TABLE</h1></center>
	<table border="5" cellspacing="0" align="center" width="100%" height="550">
		<!--<caption>Timetable</caption>-->
		<tr>
			<td align="center" height="50"
				width="100"><br>
				<b>Branches/Time</b></br>
			</td>
			<td align="center" height="50"
				width="100">
				<b>I<br>9:30-10:20</b>
			</td>
			<td align="center" height="50"
				width="100">
				<b>II<br>10:20-11:10</b>
			</td>
			<td align="center" height="50"
				width="100">
				<b>III<br>11:10-12:00</b>
			</td>
			<td align="center" height="50"
				width="100">
				<b>12:00-12:40</b>
			</td>
			<td align="center" height="50"
				width="100">
				<b>IV<br>12:40-1:30</b>
			</td>
			<td align="center" height="50"
				width="100">
				<b>V<br>1:30-2:20</b>
			</td>
			<td align="center" height="50"
				width="100">
				<b>VI<br>2:20-3:10</b>
			</td>
			<td align="center" height="50"
				width="100">
				<b>VII<br>3:10-4:00</b>
			</td>
		</tr>
		<tr>
			<td align="center" height="50">
				<b>B-Tech:</b></td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td rowspan="6" align="center" height="50">
				<h2>L<br>U<br>N<br>C<br>H</h2>
			</td>
			<td colspan="3" align="center"
				height="50">---</td>
			<td align="center" height="50">---</td>
		</tr>
		<tr>
			<td align="center" height="50">
				<b>B-Arch:</b>
			</td>
			<td colspan="3" align="center"
				height="50">---
			</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
		</tr>
		<tr>
			<td align="center" height="50">
				<b>M-Tech:</b>
			</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td colspan="3" align="center"
				height="50">---
			</td>
		</tr>
		<tr>
			<td align="center" height="50">
				<b>M-Arch:</b>
			</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td colspan="3" align="center"
				height="50">---
			</td>
			<td align="center" height="50">---</td>
		</tr>
		<tr>
			<td align="center" height="50">
				<b>MCA:</b>
			</td>
			<td colspan="3" align="center"
				height="50">---
			</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
		</tr>
		<tr>
			<td align="center" height="50">
				<b>MBA:</b>
			</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td align="center" height="50">---</td>
			<td colspan="3" align="center"
				height="50">---
			</td>
			<td align="center" height="50">---</td>
		</tr>
	</table>
		</div>
			
</body>
</html>