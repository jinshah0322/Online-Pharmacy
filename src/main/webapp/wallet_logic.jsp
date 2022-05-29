<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
	String name,account_number,bank,amount,pass_code,Amount,AMOUNT=(String)session.getAttribute("Amount"),un=(String)session.getAttribute("Username");
	int count=0,count1=0,count2=0,counter_wallet=0;
	name=request.getParameter("Name");
	account_number=request.getParameter("Acc");
	pass_code=request.getParameter("pc");
	bank=request.getParameter("bank");
	amount=request.getParameter("amount");
    request.setAttribute("ammount", amount);
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","root");
	Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
	if(bank.equals("SBI"))
	{
		ResultSet rs=stmt.executeQuery("select * from bank_sbi");
		while(rs.next())
		{
			if(name.equals(rs.getString("Name")) && account_number.equals(rs.getString("Account_Number"))&&pass_code.equals(rs.getString("Pass_Code")))
			{
				if(Integer.parseInt(amount)<=(Integer.parseInt(rs.getString("Amount"))))
				{
					rs.updateString("amount", Integer.toString(((Integer.parseInt(rs.getString("Amount")))-Integer.parseInt(amount))));
					rs.updateRow();
					if(AMOUNT==null)
					{
						Amount=Integer.toString(0);
					}
					else
					{
						Amount=(String)session.getAttribute("Amount");
					}
					amount=Integer.toString(Integer.parseInt(Amount)+Integer.parseInt(amount));
					session.setAttribute("amount", amount);
					Statement stmt1=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
					ResultSet rs1=stmt1.executeQuery("select * from ammount_wallet");
					while(rs1.next())
					{
						if(un.equals(rs1.getString("Name")))
						{
							rs1.updateString(2, amount);
							rs1.updateRow();
							counter_wallet+=1;
							break;
						}
					}
					if(counter_wallet==0)
					{
							PreparedStatement p2=con.prepareStatement("insert into ammount_wallet values(?,?)");
							p2.setString(1,un);
							p2.setString(2,amount);
							p2.executeUpdate();
					}
					RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
					//out.print("<h4 style=\"color:green;text-align:left;margin-top:-995px;margin-left:280px;\">Amount Transfered</h4>");
					rd.forward(request, response);
				}
				else
				{
					out.print("<h4 style=\"color:red;text-align:left;margin-top:-995px;margin-left:280px;\">Insufficient Amount</h4>");
					RequestDispatcher rd=request.getRequestDispatcher("wallet.jsp");
					rd.include(request,response);
				}
				count1+=1;
				break;
			}
		}
		if(count1==0)
		{
			out.print("<h4 style=\"color:red;text-align:left;margin-top:-995px;margin-left:280px;\">Wrong Credentials</h4>");
			RequestDispatcher rd=request.getRequestDispatcher("wallet.jsp");
			rd.include(request,response);
		}
	}
	else if(bank.equals("HDFC"))
	{
		ResultSet rs=stmt.executeQuery("select * from bank_hdfc");
		while(rs.next())
		{
			if(name.equals(rs.getString("Name")) && account_number.equals(rs.getString("Account_Number"))&&pass_code.equals(rs.getString("Pass_Code")))
			{
				if(Integer.parseInt(amount)<=(Integer.parseInt(rs.getString("Amount"))))
				{
					rs.updateString("amount", Integer.toString(((Integer.parseInt(rs.getString("Amount")))-Integer.parseInt(amount))));
					rs.updateRow();
					if(AMOUNT==null)
					{
						Amount=Integer.toString(0);
					}
					else
					{
						Amount=(String)session.getAttribute("Amount");
					}
					amount=Integer.toString(Integer.parseInt(Amount)+Integer.parseInt(amount));
					session.setAttribute("amount", amount);
					Statement stmt1=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
					ResultSet rs1=stmt1.executeQuery("select * from ammount_wallet");
					while(rs1.next())
					{
						if(un.equals(rs1.getString("Name")))
						{
							rs1.updateString(2, amount);
							rs1.updateRow();
							counter_wallet+=1;
							break;
						}
					}
					if(counter_wallet==0)
					{
							PreparedStatement p2=con.prepareStatement("insert into ammount_wallet values(?,?)");
							p2.setString(1,un);
							p2.setString(2,amount);
							p2.executeUpdate();
					}
					RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
					//out.print("<h4 style=\"color:green;text-align:left;margin-top:-995px;margin-left:280px;\">Amount Transfered</h4>");
					rd.forward(request, response);
				}
				else
				{
					out.print("<h4 style=\"color:red;text-align:left;margin-top:-995px;margin-left:280px;\">Insufficient Amount</h4>");
					RequestDispatcher rd=request.getRequestDispatcher("wallet.jsp");
					rd.include(request,response);
				}
				count1+=1;
				break;
			}
		}
		if(count1==0)
		{
			out.print("<h4 style=\"color:red;text-align:left;margin-top:-995px;margin-left:280px;\">Wrong Credentials</h4>");
			RequestDispatcher rd=request.getRequestDispatcher("wallet.jsp");
			rd.include(request,response);
		}
	}
	else
	{
		ResultSet rs=stmt.executeQuery("select * from bank_axis");
		while(rs.next())
		{
			if(name.equals(rs.getString("Name")) && account_number.equals(rs.getString("Account_Number"))&&pass_code.equals(rs.getString("Pass_Code")))
			{
				if(Integer.parseInt(amount)<=(Integer.parseInt(rs.getString("Amount"))))
				{
					rs.updateString("amount", Integer.toString(((Integer.parseInt(rs.getString("Amount")))-Integer.parseInt(amount))));
					rs.updateRow();
					if(AMOUNT==null)
					{
						Amount=Integer.toString(0);
					}
					else
					{
						Amount=(String)session.getAttribute("Amount");
					}
					amount=Integer.toString(Integer.parseInt(Amount)+Integer.parseInt(amount));
					session.setAttribute("amount", amount);
					Statement stmt1=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
					ResultSet rs1=stmt1.executeQuery("select * from ammount_wallet");
					while(rs1.next())
					{
						if(un.equals(rs1.getString("Name")))
						{
							rs1.updateString(2, amount);
							rs1.updateRow();
							counter_wallet+=1;
							break;
						}
					}
					if(counter_wallet==0)
					{
							PreparedStatement p2=con.prepareStatement("insert into ammount_wallet values(?,?)");
							p2.setString(1,un);
							p2.setString(2,amount);
							p2.executeUpdate();
					}
					RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
					//out.print("<h4 style=\"color:green;text-align:left;margin-top:-995px;margin-left:280px;\">Amount Transfered</h4>");
					rd.forward(request, response);
				}
				else
				{
					out.print("<h4 style=\"color:red;text-align:left;margin-top:-995px;margin-left:280px;\">Insufficient Amount</h4>");
					RequestDispatcher rd=request.getRequestDispatcher("wallet.jsp");
					rd.include(request,response);
				}
				count2+=1;
				break;
			}
		}
		if(count2==0)
		{
			out.print("<div id=\"loader\"></div>");
			out.print("<h4 style=\"color:red;text-align:left;margin-top:-995px;margin-left:280px;\">Wrong Credentials</h4>");
			RequestDispatcher rd=request.getRequestDispatcher("wallet.jsp");
			rd.include(request,response);
		}
	}
%>
</body>

</html>