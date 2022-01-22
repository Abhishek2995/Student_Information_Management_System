package com.verma;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteStuRegController
 */
public class DeleteStuRegController extends HttpServlet {
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
		try {
			//register driver
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Driver loaded..");
			//get connection object
			con=DriverManager.getConnection(url,uname,pass);
			//get statement or prepared statement 
			//deleting records
			PreparedStatement pstmt=con.prepareStatement("delete from sims_stuReg where email=?");
			pstmt.setString(1,email);
			//fetch value from database
			pstmt.executeUpdate();
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
		}//finnaly end
		//redirect to ShowAllUserContyroller for fetching data from database
		response.sendRedirect("ShowStuRegController");
	}//doGet end
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
