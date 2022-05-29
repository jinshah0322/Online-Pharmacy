<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true" errorPage="error_signup.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank Account Registration</title>
</head>
<body>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="jakarta.servlet.*" %>
<%@page import="jakarta.servlet.annotation.WebServlet" %>
<%@page import="jakarta.servlet.http.HttpServlet" %>
<%			

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","root");
						
			String name = request.getParameter("Name");
			String phone = request.getParameter("Phone");
			String email = request.getParameter("Email");
			String password = request.getParameter("Password");
			String address = request.getParameter("Address");
			String security=request.getParameter("security_key");
			
			String query="INSERT INTO `signup` VALUES(?,?,?,?,?,?)";
			PreparedStatement p=con.prepareStatement(query);
		
			p.setString(1,name);
			p.setString(2,phone);
			p.setString(3,email);
			p.setString(4,password);
			p.setString(5,address);
			p.setString(6, security);
			p.executeUpdate();
			
			
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.include(request,response);

%>
</body>
</html>