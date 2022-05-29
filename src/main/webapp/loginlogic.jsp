<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error_signup.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%@page import="java.io.*"%>
	<%@page import="java.sql.*"%>
	<%@page import="java.util.*"%>
	<%@page import="jakarta.servlet.*"%>
	<%@page import="jakarta.servlet.annotation.WebServlet"%>
	<%@page import="jakarta.servlet.http.HttpServlet"%>
	<%@page import="java.util.Date" %>

	<%		
			String email="";
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","root");
					
			String in1 = request.getParameter("Name");
			String in2 = request.getParameter("Password");
			
			Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			String selectQ = "select * from `signup`";
			ResultSet rs = stmt.executeQuery(selectQ);
			PreparedStatement p=con.prepareStatement("insert into login_history values(?,?,?,?,?)");
			
			
			int count=0,count1=0;
		
			while(rs.next()) {
				if(rs.getString("Name").equals(in1) && rs.getString("Password").equals(in2)) {		
					session.setAttribute("Username", rs.getString("Name"));
					session.setAttribute("Email", rs.getString("Email"));
					count=1;
					email=rs.getString("Email");
					break;
				}
			
				else if(rs.getString("Name").equals(in1)){
					count=2;
				}
				
			}
			
		
			
			
			if(count==1) {
				p.setString(1,in1);
				p.setString(2,in2);
				p.setString(3,email);
				SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
				SimpleDateFormat formatter1 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			    Date date = new Date(); 
			    Date date1 = new Date(session.getLastAccessedTime());
			    p.setString(4,formatter.format(date));
			    p.setString(5,formatter1.format(date1));
			    p.executeUpdate();
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				rd.forward(request,response);
			}
			 
			if(count==0){
				out.println("<h6 style=\"color:red;text-align:right;margin-right:380px;margin-top:-440px;font-weight:600;\">Incorrect Username or Password</h4>");
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.include(request,response);
			}
			 if(count==2){
				out.print("<h6 style=\"color:red;text-align:right;margin-right:435px;margin-top:-440px;font-weight:600;\">Incorrect Password</h6>");
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.include(request,response);		
			}

%>

</body>
</html>