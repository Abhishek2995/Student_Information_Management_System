<%@page import="com.pojo.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pojo.payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>
	
	<%
		User user=(User)session.getAttribute("user");
		if(user==null){
			response.sendRedirect("page1_Login.jsp");
			return;
		}
	%>
	
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

		.container{
			 width: 100%;
			 /* text-align: center; */
			 float: left;
			 color: #8f37aa;
			 font-size: 19.5px;
			 font-family:Comic Sans MS;"
		}
	
		input[type=text], select {
        width: 33%;
		  padding: 11px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 2px solid #ccc;
		  border-radius: 4px;
		  border-color: #8f37aa;
		  box-sizing: border-box;
		}
		
		
		.button1 {
			  background-color: #8f37aa; /* Green */
			  border: none;
			  border-radius: 4px;
			  color: white;
			  padding: 15px 25px;
			  float: right;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 16px;
			  margin: 2px 2px;
			  cursor: pointer;
			  font-family:Comic Sans MS;"
			}

		/* .column{
			color: #8f37aa;
			font-family:Comic Sans MS;"
			font-size: ;
		} */

		 label {
        display: inline-block;
        text-align: left;
      }

</style>



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
				  <a href="OnlinePaymentController"><<</a>
				  <a class="active" href="HomePageController">Home</a>
				  <a href="">>></a>
			</div>
		
</div> <!--1-->
		
		<center>
			<h2 style="font-family:Comic Sans MS;color:#8f37aa;"><u>ONLINE PAYMENT DETAILS.</u></h2>
		</center>

	<center>
		<%
		//fetch data from request
		ArrayList<payment> paymentList =(ArrayList<payment>)request.getAttribute("paymentList");
		if(!paymentList.isEmpty()){
		%>
		</center>
	<%
			for(payment payment:paymentList){
			%>
	<center>
			<%
				String errMsg=(String)request.getAttribute("err-msg");
				if(errMsg!=null){
			%>
				<h3 style="color:red"><%=errMsg%></h3>
			<%} %>
		</center>
<div class="container">

<div style="text-align:right;">
	<label >Receipt No.:</label>
	<input type="text" name="receipt" readonly value="<%=payment.getReceipt()%>">
</div>


<div class="row">
	<div class="column">
		<div class="row1.1">
			<label >Name</label>
			<label style="margin-left:20em">Father Name</label>
			<label style="margin-left:16.5em">Gender</label>
		</div>
		<div class="row1.2">
			<input type="text"  name="name" readonly value="<%=payment.getName()%>">
			<input type="text" name="fname" readonly value="<%=payment.getFname()%>">
		    <input type="text" name="gender" readonly value="<%=payment.getGender()%>">
		</div>
	
	</div><!-- column -->	
</div></br><!-- row 1 -->

<div class="row">
	<div class="column">
		<div class="row2.1">
		    <label>DOB</label>
			<label style="margin-left:20.5em">Contact No.</label>
			<label style="margin-left:17.2em">Email</label>
		</div>
		<div class="row2.2">
			<input type="text" name="dob" readonly value="<%=payment.getDateOfBirth()%>">
			<input type="text" name="contact" readonly value="<%=payment.getContact()%>">
			<input type="text" name="email" readonly value="<%=payment.getEmail()%>">
		</div>

	</div><!-- column -->
</div></br><!-- row 2 -->

<div class="row">
	<div class="column">
		<div class="row3.1">
			<label >Course</label>
			<label style="margin-left:19.7em">Year</label>
			<label style="margin-left:20.2em">Enrollment No.</label>&emsp;
		</div>
		<div class="row3.2">
			<input type="text" name="course" readonly value="<%=payment.getCourse()%>">
			<input type="text" name="year" readonly value="<%=payment.getYear()%>">
			<input type="text" name="enroll" readonly value="<%=payment.getEnroll()%>">
		</div>

	</div><!-- column -->
</div></br><!-- row 3 -->

<div class="column">
	<form onsubmit="validateDeclaration()" action="PayCardController" id="declaration-form" method="post">
	<label><p>Note: Please check all the information properly.Because there can be no change after payment.</br>
	(1)If there is any mistake then go to edit option and change it.</br>
	(2)And if all the information is correct then make the payment by clicking on the submit button.</p></label></br>

	<input type="checkbox" id="declaration" name="declaration" value="yes">
	<label>"I hereby declare that the above-mentioned information is accurate to the best of my knowledge and belief."</label></br>
	
	<button class="button1" type="submit">SUBMIT</button>
	
	</form>
</div>

	<div >
		<a href="EditPayDetailController?enroll=<%=payment.getEnroll()%>"><button class="button1" value="">EDIT</button></a>
	</div>
</div></br><!-- container -->

		
	<%} 
		}else{%>
	
		<%} %>
		
		<% if(paymentList.isEmpty()){ %>
		<h1 style="background-color: #990000;
					background-image: linear-gradient(147deg, #990000 0%, #ff0000 74%);
					font-family:Lucida Handwriting;
					color:white;height:100px;float:center;width:50%;">
			 SORRY: WE COULD NOT BE FOUND
		</h1>  
  
   <%} %> 
   <script type="text/javascript">
   		function validateDeclaration(){
   			var checkbox=document.getElementById("declaration").checked;
	   		if(!checkbox){
	   			alert("Please Check Your Check Box Declaration.");
	   		}
   		}	
   		
   		//alert(checkbox);
   </script>
</body>
</html>

