package com.verma;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.facultyReg;



/**
 * Servlet implementation class SearchFacultyController
 */
public class SearchFacultyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchFacultyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String facultyNameText = request.getParameter("name_search_text");
		
        List<facultyReg>facultyList  = new ArrayList<facultyReg>();
        StringBuilder errorCode = new StringBuilder();
		
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
			String sql="select * from sims_facReg "+ " where lower(fname) like lower('%"+facultyNameText+"%')" + " order by email desc";

			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				facultyReg fac=new facultyReg();
				
				fac.setFname(rs.getString("fname"));
				fac.setMname(rs.getString("mname"));
				fac.setLname(rs.getString("lname"));
				fac.setDepartment(rs.getString("department"));
				fac.setGender(rs.getString("Gender"));
				fac.setDateOfBirth(rs.getDate("dob"));
				fac.setContact(rs.getLong("contact"));
				fac.setEmail(rs.getString("email"));
				fac.setAddress1(rs.getString("address1"));
				fac.setAddress2(rs.getString("address2"));
				facultyList.add(fac);
			}
			request.setAttribute("facultyList",facultyList);
			request.getRequestDispatcher("p5.2_showFacReg.jsp").forward(request,response);
			return;
			
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
		request.setAttribute("lastFacultyNameText",facultyNameText);
		request.setAttribute("errorCode",errorCode.toString());
		request.setAttribute("err-msg",errMsg);
		request.getRequestDispatcher("page5_faculty.jsp").forward(request, response);

	}
}

