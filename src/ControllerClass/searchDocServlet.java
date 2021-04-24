package ControllerClass;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtilClass.doctorDBUtil;
import doctorClass.doctor;


/**
 * Servlet implementation class searchDocServlet
 */
@WebServlet("/searchDocServlet")
public class searchDocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idd=request.getParameter("id");
		String namee=request.getParameter("nam");
		
		try {
			
			List<doctor> doctorDetails1=doctorDBUtil.validate1(idd, namee);
			
			request.setAttribute("doctorDetails1", doctorDetails1);
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis=request.getRequestDispatcher("doctorAccount.jsp");
		dis.forward(request, response);
	}

		
		
	}


