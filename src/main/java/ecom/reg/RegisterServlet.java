package ecom.reg;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ecom.dao.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		   PrintWriter out=response.getWriter();
			String phone=request.getParameter("phone");
			String pwd=request.getParameter("pwd");
			String email=request.getParameter("email");
			String gender=request.getParameter("gender");
			String city=request.getParameter("city");
			String role=request.getParameter("role");
			DAO dao=new DAO();
			if(dao.doRegister(phone, pwd, email, gender,city,role))
			{
				 response.sendRedirect("register.jsp?msg=RegistrationSuccessfull");
			}else 
			{
				response.sendRedirect("register.jsp?msg=RegistrationFailed");
			}
	}
}
