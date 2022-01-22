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

import com.pojo.facultyReg;

/**
 * Servlet implementation class UpdateFacRegFormController
 */
public class UpdateFacRegFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFacRegFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("fname");
		String mname=request.getParameter("mname");
		String lname=request.getParameter("lname");
		String department=request.getParameter("department");
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
		facultyReg fac=null;
		System.out.println(fname);
		
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
			PreparedStatement pstmt=con.prepareStatement("update sims_facReg set fname=?, mname=?,lname=?,department=?,gender=?,dob=?,contact=?,address1=?,address2=? where email=?");
			pstmt.setString(10,email);
			pstmt.setString(1,fname);
			pstmt.setString(2,mname);
			pstmt.setString(3,lname);
			pstmt.setString(4,department);
			pstmt.setString(5,gender);
			pstmt.setDate(6,dob);
			pstmt.setLong(7,Long.parseLong(contact));
			pstmt.setString(8,address1);
			pstmt.setString(9,address2);
			
			//fetch value from database
			fac=new facultyReg();
			fac.setFname(fname);
			fac.setMname(mname);
			fac.setLname(lname);
			fac.setDepartment(department);
			fac.setGender(gender);
			fac.setDateOfBirth(dob);
			fac.setContact(Long.parseLong(contact));
			fac.setEmail(email);
			fac.setAddress1(address1);
			fac.setAddress2(address2);
			
			pstmt.executeUpdate();
			response.sendRedirect("ShowFacRegController");
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
		request.setAttribute("fac",fac);
		request.getRequestDispatcher("p5.3_updateFacRegForm.jsp").forward(request,response);
	}

}
			
		