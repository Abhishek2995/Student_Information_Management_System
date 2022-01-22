<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.pojo.User"%>
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
			 <div class="search-container">			   
			      <input type="text" placeholder="Search.." name="search">
			      <button type="submit"><i class="fa fa-search"></i></button>
			  </div>
			</div>

			
					
</div> <!--1-->
		
		<center>
			<div style="background-color: #6e72fc;
									background-image: linear-gradient(315deg, #6e72fc 0%, #ad1deb 40%);
									color: white;height:65px;float:left;width:100%;font-family:Comic Sans MS;">
			<h2>COURSES INFORMATIONS.</h2>
	
			</div>
		</center>
		

	<div class="row">
  <div class="column">
    <div class="card">
			<h2 style="text-align:center">B-Tech</h2>
			<div class="container">
			  <img src="image/courses/Btech.jpg" alt="2" style="width:100%; height: 350px;">
			  <h2>Bachelor of Technology (B.Tech)</h2>
			  <p >Duration 4 Years</p>
			  <p >Minimum Eligibility: Class 12th with PCM stream/ PCB for specializations like Biotechnology, Biomedical Engineering</p>
			  <p >Average Fee:</p>
			  <p class="price">INR 40,000 - 50,000 Per Annum</p>
			  <div style="background-color: black; color: white; height:50px;width:100%;">
				</div>
			</div>
    </div>
  </div> 

  <div class="column">
    <div class="card">
			<h2 style="text-align:center">B-Arch</h2>
			<div class="container">
			  <img src="image/courses/Barch.jpg" alt="2" style="width:100%; height: 350px;">
			  <h2>Bachelor of Architecture (B.Arch)</h2>
			  <p >Duration 5 Years</p>
			  <p>Eligibility Criteria: Class XIIth qualified candidates from Science stream and recognised Board with a minimum overall aggregate of 50% are eligible</p>
			  <p >Average Fee:</p>
			  <p class="price">INR 1 LPA to 2 LPA Per Annum</p>
			 <div style="background-color: black; color: white; height:50px;width:100%;">
				</div>
			</div>
    </div>
  </div>

  <div class="column">
    <div class="card">
			<h2 style="text-align:center;">M-Tech</h2>
			<div class="container">
			  <img src="image/courses/Mtech.jpg" alt="2" style="width:100%; height: 350px;">
			   <h2>Master of Technology (M.Tech)</h2>
			   <p >Duration 2 Years</p>
			   <p>Eligibility Criteria: Must be graduate in B. Tech/ BE from a recognised Institute</p>
			 	 <p >Average Fee:</p>
			   <p class="price">INR 50,000 - 2,00,000 Per Annum</p>
			   <div style="background-color: black; color: white; height:50px;width:100%;">
				</div>
			</div>
    </div>
  </div>
</div><!-- row -->

<div class="row">
  <div class="column">
    <div class="card">
			<h2 style="text-align:center">M-Arch</h2>
			<div class="container">
			  <img src="image/courses/March.jpg" alt="2" style="width:100%; height: 350px;">
			  <h2>Masters of Architecture (M.Arch)</h2>
			   <p >Duration 2 Years</p>
			   <p>Minimum Eligibility: 10+2 pass with a minimum of 50% aggregate</p>
			   <p >Average Fee:</p>
			   <p class="price">INR 50,000 - 2 lakh Per Annum</p>
			  <div style="background-color: black; color: white; height:50px;width:100%;">
				</div>
			</div>
    </div>
  </div> 

  <div class="column">
    <div class="card">
			<h2 style="text-align:center">MCA</h2>
			<div class="container">
			  <img src="image/courses/MCA.jpg" alt="2" style="width:100%; height: 350px;">
			  <h2>Masters of Computer Application (MCA)</h2>
			   <p >Duration 3 Years</p>
			   <p>Eligibility Criteria: Graduation in computer applications, computer science, or related field with a minimum of 50% marks obtained at the UG level. Mathematics one subjects in Class 12 is compulsory.</p>
			   <p >Average Fee:</p>
			   <p class="price">INR 30,000 to 2 Lac Per Annum</p>
			  <div style="background-color: black; color: white; height:50px;width:100%;">
				</div>
			</div>
    </div>
  </div>

  <div class="column">
    <div class="card">
			<h2 style="text-align:center;">MBA</h2>
			<div class="container">
			  <img src="image/courses/MBA.jpg" alt="2" style="width:100%; height: 350px;">
			  <h2>Masters of Business Administrator (MBA)</h2>
			   <p >Duration 2 Years</p>
			   <p>Eligibility Criteria: Graduate from any stream with minimum 50% marks or equivalent  CGPA from a UGC recognized Board or equivalent recognition from MHRD.
         Valid scores of MBA entrance exams like CAT, MAT, XAT, SNAP, NMAT & CMAT etc.</p>
			   <p >Average Fee:</p>
			   <p class="price">INR 2,00,000 to 27,00,000 Per Annum</p>
				<div style="background-color: black; color: white; height:50px;width:100%;">
				</div>
			</div>
    </div>
  </div>
</div><!-- row2 -->

	
</body>
</html>