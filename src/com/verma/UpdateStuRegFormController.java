package com.verma;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.studentReg;

/**
 * Servlet implementation class updateStuRegFormController
 */
public class UpdateStuRegFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String first_name=request.getParameter("first_name");
		String middle_name=request.getParameter("middle_name");
		String last_name=request.getParameter("last_name");
		String courses=request.getParameter("courses");
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
		String address1=request.getParameter("address1");
		String address2=request.getParameter("address2");
		studentReg stu=null;
//		System.out.println("Update-----------------------------");
//		System.out.println(first_name);
//		System.out.println(last_name);
//		System.out.println(courses);
//		System.out.println(address1);
//		System.out.println(gender);
//		System.out.println(email);
		
		String url="jdbc:oracle:thin:@localhost:1521:XE";
		String uname="system";
		String pass="verma";
		Connection con=null;
		String msg=null;
		try {
			//register driver
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Driver loaded..");
			//get connection object
			con=DriverManager.getConnection(url,uname,pass);
			//get statement or prepared statement 
			//deleting records
			PreparedStatement pstmt=con.prepareStatement("update sims_stuReg set first_name=?, middle_name=?,last_name=?,courses=?,gender=?,dob=?,contact=?,address1=?,address2=? where email=?");
			pstmt.setString(10,email);
			pstmt.setString(1,first_name);
			pstmt.setString(2,middle_name);
			pstmt.setString(3,last_name);
			pstmt.setString(4,courses);
			pstmt.setString(5,gender);
			pstmt.setDate(6,dob);
			pstmt.setLong(7,Long.parseLong(contact));
			pstmt.setString(8,address1);
			pstmt.setString(9,address2);
			
			//fetch value from database
			
			pstmt.executeUpdate();
			response.sendRedirect("ShowStuRegController");
			return;
		} catch (SQLException e) {
			msg=e.getMessage();
		}catch (Exception e) {
			msg=e.getMessage();
		}finally {
			try {
				con.close();
			} catch (Exception e2) {
				msg=e2.getMessage();
				System.out.println("Close error:"+e2.getMessage());
			}
		}//finely end
		//redirect to ShowAllUserContyroller for fetching data from database
		request.setAttribute("err-msg",msg);
		request.setAttribute("stu",stu);
		request.getRequestDispatcher("p4.3_updateStuRegForm.jsp").forward(request,response);
	}

}
