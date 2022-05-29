<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
		String doc,p_n,email,date,time;
		int count=0;
		doc=request.getParameter("doc");
		p_n=request.getParameter("pn");
		email=request.getParameter("email");
		date=request.getParameter("date");
		time=request.getParameter("time");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","root");
		if(doc.equals("jiany"))
		{
			PreparedStatement p=con.prepareStatement("insert into doctor1 values(?,?,?,?,?)");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from doctor1");
			Statement stmt1=con.createStatement();
			ResultSet rs1=stmt1.executeQuery("select * from doctor1");
			p.setString(1, p_n);
			p.setString(2, email);
			p.setString(3, date);
			p.setString(4, time);
			p.setString(5,doc);
			if(!rs.next())
			{
				p.executeUpdate();
				session.setAttribute("date", date);
				session.setAttribute("time", time);
				RequestDispatcher rd=request.getRequestDispatcher("success_doc_1.jsp");
				rd.forward(request, response);
			}
			else
			{
				while(rs1.next())
				{
					if(date.equals(rs1.getString("Date")) && time.equals(rs1.getString("Time")))
					{
						out.print("<h3 style=\"margin-top:-67vw;text-align:center;margin-left:50vw;color:red;\">Slot not Available</h3>");
						RequestDispatcher rd=request.getRequestDispatcher("dr_appointment_1.jsp");
						rd.include(request, response);
						count+=1;
						break;
					}
				}
				if(count==0)
				{
					p.executeUpdate();
					session.setAttribute("date", date);
					session.setAttribute("time", time);
					RequestDispatcher rd=request.getRequestDispatcher("success_doc_1.jsp");
					rd.forward(request, response);
				}
			}
		}
		else if(doc.equals("purav"))
		{
			PreparedStatement p=con.prepareStatement("insert into doctor2 values(?,?,?,?,?)");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from doctor2");
			Statement stmt1=con.createStatement();
			ResultSet rs1=stmt1.executeQuery("select * from doctor2");
			p.setString(1, p_n);
			p.setString(2, email);
			p.setString(3, date);
			p.setString(4, time);
			p.setString(5,doc);
			if(!rs.next())
			{
				p.executeUpdate();
				session.setAttribute("date", date);
				session.setAttribute("time", time);
				RequestDispatcher rd=request.getRequestDispatcher("success_doc_1.jsp");
				rd.forward(request, response);
			}
			else
			{
				while(rs1.next())
				{
					if(date.equals(rs1.getString("Date")) && time.equals(rs1.getString("Time")))
					{
						out.print("<h3 style=\"margin-top:-67vw;text-align:center;margin-left:50vw;color:red;\">Slot not Available</h3>");
						RequestDispatcher rd=request.getRequestDispatcher("dr_appointment_1.jsp");
						rd.include(request, response);
						count+=1;
						break;
					}
				}
				if(count==0)
				{
					p.executeUpdate();
					session.setAttribute("date", date);
					session.setAttribute("time", time);
					RequestDispatcher rd=request.getRequestDispatcher("success_doc_1.jsp");
					rd.forward(request, response);
				}
			}
		}
		else if(doc.equals("tirth"))
		{
			PreparedStatement p=con.prepareStatement("insert into doctor3 values(?,?,?,?,?)");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from doctor3");
			Statement stmt1=con.createStatement();
			ResultSet rs1=stmt1.executeQuery("select * from doctor3");
			p.setString(1, p_n);
			p.setString(2, email);
			p.setString(3, date);
			p.setString(4, time);
			p.setString(5,doc);
			if(!rs.next())
			{
				p.executeUpdate();
				session.setAttribute("date", date);
				session.setAttribute("time", time);
				RequestDispatcher rd=request.getRequestDispatcher("success_doc_1.jsp");
				rd.forward(request, response);
			}
			else
			{
				while(rs1.next())
				{
					if(date.equals(rs1.getString("Date")) && time.equals(rs1.getString("Time")))
					{
						out.print("<h3 style=\"margin-top:-85vw;text-align:center;margin-left:50vw;color:red;\">Slot not Available</h3>");
						RequestDispatcher rd=request.getRequestDispatcher("dr_appointment_1.jsp");
						rd.include(request, response);
						count+=1;
						break;
					}
				}
				if(count==0)
				{
					p.executeUpdate();
					session.setAttribute("date", date);
					session.setAttribute("time", time);
					RequestDispatcher rd=request.getRequestDispatcher("success_doc_1.jsp");
					rd.forward(request, response);
				}
			}
		}
		else
		{
			PreparedStatement p=con.prepareStatement("insert into doctor4 values(?,?,?,?,?)");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from doctor4");
			Statement stmt1=con.createStatement();
			ResultSet rs1=stmt1.executeQuery("select * from doctor4");
			p.setString(1, p_n);
			p.setString(2, email);
			p.setString(3, date);
			p.setString(4, time);
			p.setString(5,doc);
			if(!rs.next())
			{
				p.executeUpdate();
				session.setAttribute("date", date);
				session.setAttribute("time", time);
				RequestDispatcher rd=request.getRequestDispatcher("success_doc_1.jsp");
				rd.forward(request, response);
			}
			else
			{
				while(rs1.next())
				{
					if(date.equals(rs1.getString("Date")) && time.equals(rs1.getString("Time")))
					{
						out.print("<h3 style=\"margin-top:-67vw;text-align:center;margin-left:50vw;color:red;\">Slot not Available</h3>");
						RequestDispatcher rd=request.getRequestDispatcher("dr_appointment_1.jsp");
						rd.include(request, response);
						count+=1;
						break;
					}
				}
				if(count==0)
				{
					p.executeUpdate();
					session.setAttribute("date", date);
					session.setAttribute("time", time);
					RequestDispatcher rd=request.getRequestDispatcher("success_doc_1.jsp");
					rd.forward(request, response);
				}
			}
		}
	%>
</body>
</html>