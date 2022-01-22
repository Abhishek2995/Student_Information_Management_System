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

import com.pojo.studentReg;

/**
 * Servlet implementation class updateStuRegController
 */
public class UpdateStuRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		
		System.out.println(email);
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
			PreparedStatement stmt=con.prepareStatement("select * from sims_stuReg where email=?");
			stmt.setString(1,email);
			rs=stmt.executeQuery();
			if(rs.next()) {
				studentReg stu=new studentReg();
				stu.setFirstName(rs.getString("first_name"));
				stu.setMiddleName(rs.getString("middle_name"));
				stu.setLastName(rs.getString("last_name"));
				stu.setCourses(rs.getString("courses"));
				stu.setGender(rs.getString("Gender"));
				stu.setDateOfBirth(rs.getDate("dob"));
				stu.setContact(rs.getLong("contact"));
				stu.setEmail(rs.getString("email"));
				stu.setAddress1(rs.getString("address1"));
				stu.setAddress2(rs.getString("address2"));
				
				request.setAttribute("stu", stu);
				request.getRequestDispatcher("p4.3_updateStuRegForm.jsp").forward(request, response);
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
		response.sendRedirect("ShowStuRegController");
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
