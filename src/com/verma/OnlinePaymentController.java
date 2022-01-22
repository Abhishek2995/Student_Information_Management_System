package com.verma;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OnlinePaymentController
 */
public class OnlinePaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OnlinePaymentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("page8_payment.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String fname=request.getParameter("fname");
		String gender=request.getParameter("gender");
		String dob_str=request.getParameter("dob");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
		java.sql.Date dob=null;
		try{
			dob=new java.sql.Date(sdf.parse(dob_str).getTime());
		}catch(Exception e){
			e.printStackTrace();
		}
		String contact=request.getParameter("contact");
		String email=request.getParameter("email");
		String course=request.getParameter("course");
		String year=request.getParameter("year");
		String enroll=request.getParameter("enroll");
		
		if(name==null || name.isEmpty() || name.length()<5){
			request.setAttribute("err-msg","Invalid Name");
			request.getRequestDispatcher("page8_payment.jsp").forward(request,response);
			return;
		}
		if(fname==null || fname.isEmpty()){
			request.setAttribute("err-msg","Invalid Father Name");
			request.getRequestDispatcher("page8_payment.jsp").forward(request,response);
			return;
		}
		if(dob==null){
			request.setAttribute("err-msg","Invalid DOB");
			request.getRequestDispatcher("page8_payment.jsp").forward(request,response);
			return;
		}
		if(contact==null || contact.isEmpty() || contact.length()!=10){
			request.setAttribute("err-msg","Invalid Contact number:\n Only for 10 digits");
			request.getRequestDispatcher("page8_payment.jsp").forward(request,response);
			return;
		}
		if(enroll==null || enroll.isEmpty() || enroll.length()!=6 ){
			request.setAttribute("err-msg","Invalid Enrollment number:\n Only for 6 digits");
			request.getRequestDispatcher("page8_payment.jsp").forward(request,response);
			return;
		}
		
		//DB Query
		String url="jdbc:oracle:thin:@localhost:1521:XE";
		String userName="system";
		String dPassword="verma";
		Connection con=null;
		String errMsg=null;
		try{
			//Register the driver
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//get the connection
			con=DriverManager.getConnection(url,userName,dPassword);
			//data base update
			
			String q="insert into sims_payment(receipt,name,fname,gender,dob,contact,email,course,year,enroll)"
					+ " values(sims_payment_seq.nextval,?,?,?,?,?,?,?,?,?)" ;
			PreparedStatement pstmt=con.prepareStatement(q);
			pstmt.setString(1,name);
			pstmt.setString(2,fname);
			pstmt.setString(3,gender);
			pstmt.setDate(4,dob);
			pstmt.setLong(5,Long.parseLong(contact));
			pstmt.setString(6,email);
			pstmt.setString(7,course);
			pstmt.setString(8,year);
			pstmt.setLong(9,Long.parseLong(enroll));
		
			
			if(pstmt.executeUpdate()>0){
				response.sendRedirect("ShowOnlinePayController");
				return;
			}
		}catch(Exception e){
			errMsg=e.getMessage();
			e.printStackTrace();
		}finally{
			if(con!=null){
				try{
					con.close();
				}catch(SQLException e){
					e.printStackTrace();
					errMsg=e.getMessage();
				}
			}
		}//finally
		request.setAttribute("err-msg",errMsg);
		request.getRequestDispatcher("page8_payment.jsp").forward(request, response);
		}
	}