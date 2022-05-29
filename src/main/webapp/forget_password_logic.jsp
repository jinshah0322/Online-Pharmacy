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
		String email,new_password,key;
		int count=0;
		email=request.getParameter("email");
		key=request.getParameter("Key");
		new_password=request.getParameter("pass");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","root");
		Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
		ResultSet rs=stmt.executeQuery("select * from signup");
		while(rs.next())
		{
			if(email.equals(rs.getString("Email")))
			{
				if(key.equals(rs.getString("Pass_code"))){
				rs.updateString("Password", new_password);
				rs.updateRow();
				out.print("<h4 style=\"color:green;text-align:center;margin-top:-440px;margin-left:460px;\">Successfully Updated</h4>");
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.include(request,response);
				count+=1;
			}
				else{
					out.print("<h5 style=\"text-align:center;margin-top:-580px;color:red;\">Security Key Is Incorrect</h5>");

				}
				}
		}
		if(count==0)
		{
			out.print("<h5 style=\"text-align:center;margin-top:-580px;color:red;\">Entered Email Id does not have any account linked with EasyPharmacy</h5>");
			RequestDispatcher rd=request.getRequestDispatcher("forget_password.jsp");
			rd.include(request,response);
		}
	%>
</body>
</html>