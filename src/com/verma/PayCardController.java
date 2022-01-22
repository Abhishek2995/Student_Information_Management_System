package com.verma;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PayCardController
 */
public class PayCardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayCardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("p8.3_payCard.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String declaration=request.getParameter("declaration");
		String errMsg=null;
		
		System.out.println(declaration);
		try {
			if(declaration==null || declaration.isEmpty()){
				request.setAttribute("err-msg","Invalid CheckBox");
				response.sendRedirect("ShowOnlinePayController");
				return;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			errMsg=e.getMessage();
			e.printStackTrace();
		}
		
		request.setAttribute("errMsg",errMsg);
		request.getRequestDispatcher("p8.3_payCard.jsp").forward(request, response);

	}

}
