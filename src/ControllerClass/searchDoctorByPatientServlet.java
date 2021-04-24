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
 * Servlet implementation class searchDoctorByPatientServlet
 */
@WebServlet("/searchDoctorByPatientServlet")
public class searchDoctorByPatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String spcl=request.getParameter("spl");
		String hosp=request.getParameter("hpl");
		
		try {
			
			List<doctor> doctorDetails=doctorDBUtil.validate(spcl, hosp);
			
			request.setAttribute("doctorDetails", doctorDetails);
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis=request.getRequestDispatcher("doctorAccount2.jsp");
		dis.forward(request, response);
	}

		
		

}
