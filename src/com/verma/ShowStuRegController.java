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
 * Servlet implementation class ShowStuRegController
 */
public class ShowStuRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowStuRegController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<studentReg>studentList  = new ArrayList<studentReg>();
		
		
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
		String sql="select * from sims_stuReg";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			studentReg stu=new studentReg();
			/*
			 *  FIRST_NAME                 VARCHAR2(30)
				 MIDDEL_NAME                VARCHAR2(30)
				 LAST_NAME                  VARCHAR2(30)
				 COURSES                    VARCHAR2(20)
				 GENDER                     VARCHAR2(15)
				 DOB                        DATE
				 CONTACT                    NUMBER(15)
				 EMAIL                      VARCHAR2(30)
				 ADDRESS1                   VARCHAR2(50)
				 ADDRESS2
			 * */
			stu.setFirstName(rs.getString("first_name"));
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
	request.setAttribute("err-msg",errMsg);
	request.getRequestDispatcher("page4_student.jsp").forward(request, response);
	}

}
