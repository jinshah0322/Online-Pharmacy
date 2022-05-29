package project;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/loginjava")
public class login extends HttpServlet{
	private String uname,pass;
	public void init() throws ServletException
	{
		
	}
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		uname=req.getParameter("Name");
		pass=req.getParameter("Password");
		if(uname.equals("admin") && pass.equals("admin"))
		{
			RequestDispatcher rd=req.getRequestDispatcher("admin.jsp");
			rd.forward(req, res);
		}
		else
		{
			RequestDispatcher rd=req.getRequestDispatcher("admin_dash_false.jsp");
			rd.include(req, res);
		}
	}
	public void destroy()
	{
		
	}
}
