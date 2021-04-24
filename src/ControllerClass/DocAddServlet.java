package ControllerClass;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DBUtilClass.doctorDBUtil;



@WebServlet("/DocAddServlet")
public class DocAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String sp=request.getParameter("special");
		String hp=request.getParameter("hospital");
		String dt=request.getParameter("date");
	    String tm=request.getParameter("timeP");
	    String vn=request.getParameter("venue");
	    
	    boolean isTrue;
	    
	    isTrue=doctorDBUtil.insertdoctor(id,name, sp, hp, dt, tm, vn);
	    
	    if(isTrue==true) {
	    	RequestDispatcher dis=request.getRequestDispatcher("AdminMainPage.jsp");
	    	dis.forward(request, response);
	    }
	    else {
	    	RequestDispatcher dis2=request.getRequestDispatcher("InsetDoctorDeails.jsp");
	    	dis2.forward(request, response);
	    }
	    
	}

}
