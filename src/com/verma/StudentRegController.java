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
 * Servlet implementation class StudentRegController
 */
public class StudentRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentRegController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("p4.1_studentReg.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstName=request.getParameter("firstname");
		String middleName=request.getParameter("middlename");
		String lastName=request.getParameter("lastname");
		String courses=request.getParameter("course");
		String gender=request.getParameter("gender");
		String dob_str=request.getParameter("dob");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
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
		String sql="select * from sims_stuReg where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			request.setAttribute("err-msg","This email is already registered.");
			request.getRequestDispatcher("p4.1_studentReg.jsp").forward(request, response);
			return;
		}
		String q="insert into sims_stuReg values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(q);
		pstmt.setString(1,firstName);
		pstmt.setString(2,middleName);
		pstmt.setString(3,lastName);
		pstmt.setString(4,courses);
		pstmt.setString(5,gender);
		pstmt.setDate(6,dob);
		pstmt.setLong(7,Long.parseLong(contact));
		pstmt.setString(8,email);
		pstmt.setString(9,address1);
		pstmt.setString(10,address2);
		
		if(pstmt.executeUpdate()>0){
			response.sendRedirect("page4_student.jsp");
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
	request.getRequestDispatcher("p4.1_studentReg.jsp").forward(request, response);
	}

}
