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



@WebServlet("/deleteDoctorServlet")
public class deleteDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		
		boolean isTrue;
		
		isTrue =doctorDBUtil.deletedoctor(id);
		
		
		if(isTrue==true) {
	    	RequestDispatcher dis=request.getRequestDispatcher("AdminMainPage.jsp");
	    	dis.forward(request, response);
	    }
	    else {
            List<doctor> doctorDetails=doctorDBUtil.getDoctorDetails(id);
			request.setAttribute("doctorDetails", doctorDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("searchForUpdateDelete.jsp");
	    	dis.forward(request, response);
	    }
		
		
	}

}
