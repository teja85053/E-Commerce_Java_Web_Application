package loginpack;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ecom.dao.DAO;
@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet 
{   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter pw=response.getWriter();
		String phone=request.getParameter("phone");
		String password=request.getParameter("pwd");
		
		HttpSession session= request.getSession();
		//getSession():   it gets the old session object if already existed based on the cookie stored at client side
		//otherwise it creates a new session object and returns it
		DAO dao=new DAO();
		String role=dao.loginCheck(phone, password);
		
		if (role!=null && role.equalsIgnoreCase("user")) 
		{
			session.setAttribute("phone",phone);
			session.setAttribute("role",role);
			response.sendRedirect("UserHome.jsp");
		}else if (role!=null && role.equalsIgnoreCase("admin"))
		{
			session.setAttribute("phone",phone);
			session.setAttribute("role",role);
			response.sendRedirect("AdminHome.jsp");
		}
		else {
				response.sendRedirect("login.jsp?msg=InvalidUseridOrPassword");
			}
		}
	    
	}


