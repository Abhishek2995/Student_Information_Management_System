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

import com.pojo.payment;

/**
 * Servlet implementation class EditPayDetailFormController
 */
public class EditPayDetailFormController extends HttpServlet {
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
		String receipt=request.getParameter("receipt");
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
		
		payment pay=null;

		//DB Query
		String url="jdbc:oracle:thin:@localhost:1521:XE";
		String userName="system";
		String dPassword="verma";
		Connection con=null;
		String msg=null;
		try{
			//Register the driver
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//get the connection
			con=DriverManager.getConnection(url,userName,dPassword);
			//data base update
			
/*			String q="update sims_payment set name=?,fname=?,gender=?,dob=?,contact=?,email=?,course=?,year=? where enroll=?";
*/
					
			PreparedStatement pstmt=con.prepareStatement("update sims_payment set receipt=?,name=?,fname=?,gender=?,dob=?,contact=?,email=?,course=?,year=? where enroll=?");
			pstmt.setLong(10,Long.parseLong(enroll));
			pstmt.setString(1,receipt);
			pstmt.setString(2,name);
			pstmt.setString(3,fname);
			pstmt.setString(4,gender);
			pstmt.setDate(5,dob);
			pstmt.setLong(6,Long.parseLong(contact));
			pstmt.setString(7,email);
			pstmt.setString(8,course);
			pstmt.setString(9,year);
		
		
			//fetch value from database
			
			pstmt.executeUpdate();
			response.sendRedirect("ShowOnlinePayController");
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
		request.setAttribute("pay",pay);
		request.getRequestDispatcher("p8.2_editPayDetailForm.jsp").forward(request,response);
	}

}