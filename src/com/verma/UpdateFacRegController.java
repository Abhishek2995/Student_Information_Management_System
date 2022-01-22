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

import com.pojo.facultyReg;

/**
 * Servlet implementation class UpdateFacRegController
 */
public class UpdateFacRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFacRegController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			PreparedStatement stmt=con.prepareStatement("SELECT * from sims_facReg where email=?");
			stmt.setString(1,email);
			rs=stmt.executeQuery();
			if(rs.next()) {
				facultyReg fac=new facultyReg();
				fac.setFname(rs.getString("fname"));
				fac.setMname(rs.getString("mname"));
				fac.setLname(rs.getString("lname"));
				fac.setDepartment(rs.getString("department"));
				fac.setGender(rs.getString("gender"));
				fac.setDateOfBirth(rs.getDate("dob"));
				fac.setContact(rs.getLong("contact"));
				fac.setEmail(rs.getString("email"));
				fac.setAddress1(rs.getString("address1"));
				fac.setAddress2(rs.getString("address2"));
				
				
				
				request.setAttribute("fac", fac);
				request.getRequestDispatcher("p5.3_updateFacRegForm.jsp").forward(request, response);
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
		response.sendRedirect("ShowFacRegController");
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
