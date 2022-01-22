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

/**
 * Servlet implementation class SignupController
 */
public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("page2_Signup.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String firstName=request.getParameter("fname");
		String lastName=request.getParameter("lname");
		String email=request.getParameter("email");
		String password1=request.getParameter("password");
		String password2=request.getParameter("cpassword");
		if(!password1.equals(password2)){
			request.setAttribute("err-msg","Password doesn't match.");
			request.getRequestDispatcher("page2_Signup.jsp").forward(request,response);
			return;
		}
		if(firstName==null || firstName.isEmpty() || firstName.length()<3){
			request.setAttribute("err-msg","Invalid First Name");
			request.getRequestDispatcher("page2_Signup.jsp").forward(request,response);
			return;
		}
		if(lastName==null || lastName.isEmpty() || lastName.length()<3){
			request.setAttribute("err-msg","Invalid First Name");
			request.getRequestDispatcher("page2_Signup.jsp").forward(request,response);
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
			String sql="select * from my_sims where email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				request.setAttribute("err-msg","This email is already registered.");
				request.getRequestDispatcher("page2_Signup.jsp").forward(request, response);
				return;
			}
			
			String q="insert into my_sims values(?,?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(q);
			pstmt.setString(1,firstName);
			pstmt.setString(2,lastName);
			pstmt.setString(3,email);
			pstmt.setString(4,password1);
			if(pstmt.executeUpdate()>0){
				response.sendRedirect("page1_Login.jsp");
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
		request.getRequestDispatcher("page2_Signup.jsp").forward(request, response);
	}

}
