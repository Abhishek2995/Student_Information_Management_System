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

import com.pojo.studentReg;

/**
 * Servlet implementation class SearchStudentController
 */
public class SearchStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public SearchStudentController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentNameText = request.getParameter("name_search_text");
		
		List<studentReg>studentList  = new ArrayList<studentReg>();
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
			String sql="select * from sims_stuReg "+ " where lower(first_Name) like lower('%"+studentNameText+"%')" + " order by email desc";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				studentReg stu=new studentReg();
				
				stu.setFirstName(rs.getString("first_Name"));
				stu.setLastName(rs.getString("last_name"));
				stu.setMiddleName(rs.getString("middle_name"));
				stu.setCourses(rs.getString("courses"));
				stu.setGender(rs.getString("Gender"));
				stu.setDateOfBirth(rs.getDate("dob"));
				stu.setContact(rs.getLong("contact"));
				stu.setEmail(rs.getString("email"));
				stu.setAddress1(rs.getString("address1"));
				stu.setAddress2(rs.getString("address2"));
				studentList.add(stu);
			}
			request.setAttribute("studentList",studentList);
			request.getRequestDispatcher("p4.2_showStuReg.jsp").forward(request,response);
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
		request.setAttribute("lastStudentNameText",studentNameText);
		request.setAttribute("errorCode",errorCode.toString());
		request.setAttribute("err-msg",errMsg);
		request.getRequestDispatcher("page4_student.jsp").forward(request, response);
		}
}
