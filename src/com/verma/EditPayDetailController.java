package com.verma;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.payment;

/**
 * Servlet implementation class EditPayDetailController
 */
public class EditPayDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String enroll=request.getParameter("enroll");
		
		System.out.println(enroll);
		String url="jdbc:oracle:thin:@localhost:1521:XE";
		String uname="system";
		String pass="verma";
		Connection con=null;
		ResultSet rs=null;
		try {
			//register driver
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Driver loaded..");
			//get connection object
			con=DriverManager.getConnection(url,uname,pass);
			//get statement or prepared statement 
			PreparedStatement stmt=con.prepareStatement("select * from sims_payment where enroll=?");
			stmt.setString(1,enroll);
			rs=stmt.executeQuery();
			if(rs.next()) {
				payment pay=new payment();
				
				pay.setReceipt(rs.getLong("receipt"));
				pay.setName(rs.getString("name"));
				pay.setFname(rs.getString("fname"));
				pay.setGender(rs.getString("Gender"));
				pay.setDateOfBirth(rs.getDate("dob"));
				pay.setContact(rs.getLong("contact"));
				pay.setEmail(rs.getString("email"));
				pay.setCourse(rs.getString("course"));
				pay.setYear(rs.getString("year"));
				pay.setEnroll(rs.getLong("enroll"));
				
				request.setAttribute("pay", pay);
				request.getRequestDispatcher("p8.2_editPayDetailForm.jsp").forward(request, response);
				return;			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e2) {
				System.out.println("Close error:"+e2.getMessage());
			}
		}//finely end
		response.sendRedirect("ShowOnlinePayController");
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
