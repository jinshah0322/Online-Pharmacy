<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EasyPharmacy</title>
</head>
<body>
	<% 
		String email,old_password,new_password;
		int count=0,count1=0,count_email=0;
		email=request.getParameter("email");
		old_password=request.getParameter("old_pass");
		new_password=request.getParameter("new_pass");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","root");
		Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
		ResultSet rs=stmt.executeQuery("select * from signup");
		String mail=(String)session.getAttribute("Email");
		while(rs.next())
		{
			if(email.equals(mail)){
				count_email+=1;
			if(email.equals(rs.getString("Email")))
			{
				count+=1;
				if(old_password.equals(rs.getString("Password")))
				{
					rs.updateString("Password",new_password);
					rs.updateRow();
					count1+=1;
					break;
				}
				else
				{
					out.print("<h4 style=\"text-align:center;color:red;margin-top:-600px;\">Entered Password Is Incorrect</h4>");
					RequestDispatcher rd =request.getRequestDispatcher("change_acc_pass.jsp");
					rd.include(request,response);
				}
			}
			
			}
			else{
				count_email=0;	
			}
		}
		if(count==0)
		{
			out.print("<h4 style=\"text-align:center;color:red;margin-top:-600px;\">Entered Email Is Incorrect</h4>");
			RequestDispatcher rd =request.getRequestDispatcher("change_acc_pass.jsp");
			rd.include(request,response);
		}
		if(count_email==0){
			out.print("<h4 style=\"text-align:center;color:red;margin-top:-600px;\">Entered Email Is Incorrect</h4>");
			RequestDispatcher rd =request.getRequestDispatcher("change_acc_pass.jsp");
			rd.include(request,response);
			
		}
		if(count1==1 || count_email==1)
		{
			
			out.print("<h4 style=\"text-align:center;color:green;margin-top:-600px;\">Data Sucessfully Updated</h4>");
			RequestDispatcher rd =request.getRequestDispatcher("change_acc_pass.jsp");
			rd.include(request,response);
			
		}
	%>
</body>
</html>