package	mypackage;
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.Naming;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class CreateServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("name");
		String ph=request.getParameter("phone");
		long phone=Long.parseLong(ph);
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		String address=request.getParameter("adderess");
		String statename=request.getParameter("cityname");
		String cityname=request.getParameter("statename");
		String country=request.getParameter("country");
		String max=request.getParameter("qualification");
		//double mname=Double.parseDouble(num);
		//String country=request.getParameter("country");
		
	    int status=RegisterStudent.register(name,phone,email,gender,address,max);
	    
//		if(status>0){
//				
//			request.setAttribute("welcome","WELCOME! YOU HAVE BEEN REGISTERD");
//			RequestDispatcher rd=request.getRequestDispatcher("customer.jsp");
//			rd.include(request, response);
//		}
//		else{
//			out.print("Sorry,Registration failed. please try later");
//			RequestDispatcher rd=request.getRequestDispatcher("index.php");
//			rd.include(request, response);
//		}
		
	out.close();	
	}

}
