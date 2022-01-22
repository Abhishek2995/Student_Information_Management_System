<%@page import="com.pojo.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pojo.studentReg"%>
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
		<center>
			<%
			String oldStudentNameText="";
			   if(request.getAttribute("lastStudentNameText")!=null){
				   oldStudentNameText =(String)request.getAttribute("lastStudentNameText");
			   }
			%>
		</center>
			 <form action="SearchStudentController">
			 	<input type="text" name="name_search_text" autofocus="autofocus" placeholder="Search.." value="<%=oldStudentNameText%>" required="required">   
			    <button type="submit"><i class="fa fa-search"></i></button>
			 </form>     
			  </div>
	</div>

			
					
</div> <!--1-->
		
		<center>
			<h2 style="color:#40e0d0; font-family:Comic Sans MS;"><u>STUDENT REGISTRATION DATABASE</u></h2>
		</center>
		
		<center>
		<%
		//fetch data from request
		ArrayList<studentReg> studentList =(ArrayList<studentReg>)request.getAttribute("studentList");
		if(!studentList.isEmpty()){
		%>
		</center>
		
		<table id="stuReg">
		
		<tr>
			<th>First Name</th>
			<th>Middle Name</th>
			<th>Last Name</th>
			<th>Course</th>
			<th>Gender</th>
			<th>DOB</th>
			<th>Contact</th>
			<th>Email</th>
			<th>Permanent Add.</th>
			<th>Local Add.</th>	
			<th>Actions</th>	
		</tr>
		
		<%
			for(studentReg student:studentList){
			%>
			<tr>
				<td><%=student.getFirstName()%></td>
				<td><%=student.getMiddleName()%></td>
				<td><%=student.getLastName()%></td>
				<td><%=student.getCourses()%></td>
				<td><%=student.getGender()%></td>
				<td><%=student.getDateOfBirth()%></td>
				<td><%=student.getContact()%></td>
				<td><%=student.getEmail()%></td>
				<td><%=student.getAddress1()%></td>
				<td><%=student.getAddress2()%></td>
				<td><a href="UpdateStuRegController?email=<%=student.getEmail()%>"><button class="button1">UPDATE</button></a>
				<a href="DeleteStuRegController?email=<%=student.getEmail()%>"><button class="button2">DELETE</button></a></td>
				
			</tr>
			<%} 
		}else{%>
	
		<%} %>
		
		<% if(studentList.isEmpty()){ %>
   <tr>
		<h1 style="background-color: #990000;
					background-image: linear-gradient(147deg, #990000 0%, #ff0000 74%);
					font-family:Lucida Handwriting;
					color:white;height:100px;float:center;width:50%;">
			 SORRY: WE COULD NOT BE FOUND
		</h1>  
   </tr> 
   
   <%} %> 
	</table>
	
</body>
</html>