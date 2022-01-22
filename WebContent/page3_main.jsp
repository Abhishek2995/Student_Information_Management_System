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

	 <!-- ----------------------card css---------------------- -->
	<style type="text/css">
		body {
		  font-family: Arial, Helvetica, sans-serif,;
		  margin: 0;
		}

		html {
		  box-sizing: border-box;
		}

		*, *:before, *:after {
		  box-sizing: inherit;
		}

		.column {
		  float: left;
		  width: 25%;
		  margin-bottom: 16px;
		  padding: 0 2px;
		}

		.card {
		  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		  margin: 20px;
		}

		.container {
		  padding: 0 16px;
		  background-color: #63d471;
		  background-image: linear-gradient(315deg, #63d471 0%, #233329 70%);
		  color:white;
		}

		.container::after, .row::after {
		  content: "";
		  clear: both;
		  display: table;
		}

		.title {
		  color: #4a4a4a;
		}

		@media screen and (max-width: 650px) {
		  .column {
			width: 100%;
			display: block;
		  }
		}

	</style>

	<style type="text/css">
		.bg-image{
			background-image: url('SIMS/pexels-pixabay-256541.jpg');
			width: 100%;
			height:750px;
		}

	</style>

<!-- horizontal line -->
	<style>
			/* Dashed red border */
			hr.new2 {
			  border-top: 2px dashed black;
			}

			/* Large rounded green border */
			hr.new5 {
			  border: 3px solid orange;
			  border-radius: 50px;
			}
	</style>

<!-- Row Columns -->
	<style type="text/css">
		*{
			box-sizing:border-box;
		}

		.row1{
			content: "";
			display: table;
			clear: both;
		}

		.column1{
			float: left;
			width: 50%;
			padding: 10px;
			height: 350px;
		}

	</style>

<!-- -------------------------------------------------------------------------------------- -->
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
			   
			   <%if(user!=null){ %>
			   <b><%=user.getName()%>  (<%=user.getRole() %>)</b>
			   <a href="LogoutController"><h3>Logout</h3></a>
			   <%}else{ %>
			   <a href="login">user Login</a>
			   <%} %>
			   
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
			
</div>	<!--1--> <!--end start header-->
	
		<center>
			  
			  <a href="FacultyController"><button onclick="" class="cool-button">FACULTY'S CORNER</button></a>&nbsp;
			  <a href="StudentController"><button onclick="" class="cool-button">STUDENT'S CORNER</button></a>&nbsp;
			  <a href="ClassesController"><button onclick="" class="cool-button">CLASSES MANAGEMENT</button></a>&nbsp;
			  <a href="CourseController"><button onclick="" class="cool-button">COURSES DETAILS</button></a>&nbsp;
			  <a href="OnlinePaymentController"><button onclick="" class="cool-button">FEES PAYMENTS</button></a>&nbsp;&nbsp;
		</center>


		<div>
			<img src="image/pexels-david-jakab-1130683.jpg" alt="first" style="width:100%; height: 450px;">	
		</div>
		
		<!--start container-->
		<div class="about-section" id="sims_container">
		
			<p><h3>Why Student Information System (SIS)?</h3></p>
			<hr class="new2">
			<p>The ultimate target of an educational institution is to enhance the performance of every student. This can promptly be achieved by analyzing the performance of each student using competent analytic tools such as a dashboard. The information thus obtained can be deployed for taking effective as well as corrective measures to help them in performing better and realizing their potential. If not done systematically, this process may become time consuming and tedious. Student Information System (SIS) assists the institutions to manage every single detail about students in a holistic, organized and cost-effective way. Education ERP completely and efficiently eliminates the need of faculty members to spend a considerable amount of time in compiling student data. Thereby assisting the faculty members in channelizing their concentration on the students and their performance enhancement.</p>
		</div> 
		<!--end container-->

		<div>
			<img src="image/pexels-cottonbro-4778424.jpg" alt="first" style="width:100%; height: 550px;">	
	</div>

		<div class="about-section">

			<p><h3>Features Of Student Information Management System (SIMS)</h3></p>
			<hr class="new2">
			<p>Student information system has gained huge popularity in the educational sector because of its unique characteristics which has helped countless schools and higher educational institutes immensely. Right from maintaining and updating student data with proficiency to analyzing and creating reports, the education management software has helped substantially. Here are some valued features of SIS:</p>

		
	<div class="row1">
		<div class="column1">
			<h3>&#9655; Maximum Organization With Minimal Paperwork:</h3>
			<p>The SIS software designed exclusively for academic institutions by MasterSoft helps the educational campuses in streamlining and managing all the tasks involved in student admission. It makes the time consuming and hectic process of student enrollment easy by reducing the paperwork considerably and digitizing each process for achieving productivity and transparency.</p>	
		</div>
		<div class="column1">
			<p><h3>&#9655; Student Record Maintenance:</h3>
			The vast amount of information generated by every student can systematically and efficiently be updated on the student data management software, thereby facilitating the administration to manage as well as organize all kinds of information, ready to be used as and when needed. The faculty can effortlessly issue updated report cards, manage student's transcripts and obtain any information on the go. A student's progress can also be tracked with the help of various analytic tools and dashboards available, which also have various types of filters for varying uses. Also a student's health records can be maintained in order to be informed about any allergies or illnesses they might suffer from, to keep a check on their well-being.</p>	
		</div>

	</div><!-- row1 -->

	<div class="row1">
		<div class="column1">
			<h3>&#9655; Online Fee Payment Provision:</h3>
			<p>Parents and students alike can pay the fees online via any mode of their choice. This ensures hassle-free and error free collection of fees without any burden on the staff as well as the students. Notification is sent after receiving the fee amount, making the transaction transparent and secure. Also, an email or SMS alert can be sent to students with overdues. SIS provides a secure fee payment platform for schools and higher educational institutes.</p>
		</div>
		<div class="column1"> 
			<h3>&#9729; Cloud-Based ERP:</h3>
			<p>The cloud-based education erp is customizable and flexible which makes it suitable for all kinds of institutions having varying needs and requisites. Also, a very limited number of hardware is required on campus as most of the hardware is maintained by the ERP provider, which makes it maintenance free and cost effective. Moreover, education institutes have the facility to pay as per their usage. Another benefit of cloud-based SIS is that institutes do not require appointing any hardware or software engineer staff.</p>
		</div>
	</div><!-- row2 -->

	<div class="row1">
		<div class="column1">
			<h3>&#9655; Online Registration:</h3>
			<p>The system facilitates the students in applying and registering online, thereby eliminating any kind of physical attendance for the admission process. Timely notifications and emails are sent to the students informing them about every admission process taking place online. Customization of this data can be done by the administration enabling them to be transparent in their allotment process as well as securing confidential data. Students can also keep track of their application through SIMS.</p>
		</div>
		<div class="column1">
			<h3>&#9655; Seamless Communication:</h3>
			<p>Effective, transparent and quick communication is the key to run any organization smoothly. The higher education software ensures fast and reliable communication between every prime member of the educational loop such as the administration, faculty, students and parents. It also helps the management to reach out to anyone at any time with a few clicks. All the information exchanged is kept secured in order to maintain privacy and safety.</p>
		</div>
	</div><!-- row3 -->


	<div class="row1">
		<div class="column1">
			<h3>&#9655; Analytics Tools And Dashboard:</h3>
			<p>Organized data can prove to be an asset, especially since the information needs to be processed in many ways according to different requirements and demands. Analytics tools aid the management in quicker decision making by presenting the data in a much simpler, easier and coherent form. All the valuable information can be obtained through a single glance at the dashboard. Furthermore, various kinds of filters are available to sort the data according to the users specific requirements.</p>
			
		</div>
		<div class="column1"> 
			<h3>&#9655; Mobile App:</h3>
			<p>With latest advancements in technology, parents have also become digital and this has further propelled the need to communicate via digital means. With a packed schedule, neither the teachers or administration nor the parents have any time for offline mails and notices. A mobile app is a one stop solution for all the communication solutions. Quick and easy, it's one of the prominent tools in use today.</p>
		</div>
	</div><!-- row4 -->

	<div class="about-section">
		<h3>Benefits Of Student Management System</h3>
		<hr class="new2">
		<p>The following list depicts the benefits of the student management system for teachers, institutional administrators, students, and parents.</p>
	</div>
	
</div><!-- about-section -->

<div class="row">
  <div class="column">
    <div class="card">
      <div class="container" style="font-family:Candara; font-size:18px;">
        <h3><u>For Teachers</u></h3>
				<p>->Hassle-free student data management</p>
				<p>->Centralized platform with 100% data security</p>
				<p>->AI-powered dashboards for student progress analysis</p>
				<p>->Seamless teacher-student-parent communication</p>
				<p>->Accurate reports on student's performance.</p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <div class="container" style="font-family:Candara; font-size:18px;">
        <h3><u>For Institutional Administrator</u></h3>
				<p>->Institutional data privacy & security</p>
				<p>->Centralized platform with role-based access</p>
				<p>->Streamlined online admission process</p>
				<p>->Automated administrative & non-administrative tasks</p>
				<p>->User-friendly navigation with multi-language support</p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <div class="container" style="font-family:Candara; font-size:18px;">
        <h3><u>For Students >></u></h3>
				<p>->Access to student information</p>
				<p>->Personalized communication with teachers</p>
				<p>->Instant notification about exams & crucial events</p>
				<p>->Dashboard to analyze their individual performances</p>
				<p>->Access to exam timetable, daily attendance, etc</p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <div class="container" style="font-family:Candara; font-size:18px;">
        <h3><u>For Parents >></u></h3>
				<p>->Online admissions & fees management</p>
				<p>->Tracking the daily student activities</p>
				<p>->Monitoring students grades & performance</p>
				<p>->Direct communication with teachers</p>
				<p>->Notifications & information - students attendance & behavior</p>
      </div>
    </div>
  </div>
</div>   <!-- Row -->


	<div>
			<img src="image/pexels-armin-rimoldi-5554289.jpg" alt="first" style="width:100%; height: 750px;">	
	</div>
	

</body>
</html>