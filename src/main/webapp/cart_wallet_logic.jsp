<%@page import="java.sql.PreparedStatement"%>
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
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
	String uname = (String) session.getAttribute("Username");
	String uname1 = request.getParameter("uname");
	String pass = request.getParameter("pin");
	int final1 = Integer.parseInt(request.getParameter("fina"));
	int count = 0, count1 = 0;
	String u, pn;
	int pp, q,q1=0,q2=0;
	Statement stmt2 = con.createStatement();
	ResultSet rs2 = stmt2.executeQuery("select * from cart");
	while (rs2.next()) {
		if (rs2.getString("username").equals(uname)) {
			PreparedStatement p2 = con.prepareStatement("insert into order_hist values(?,?,?,?)");
			u = uname;
			pn = rs2.getString("P_Name");
			pp = rs2.getInt("P_Price");
			q = rs2.getInt("quan");
			p2.setString(1, u);
			p2.setString(2, pn);
			p2.setInt(3, pp);
			p2.setInt(4, q);
			p2.executeUpdate();
			Statement s = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs3 = s.executeQuery("select * from products");
			while (rs3.next()) {
				if(rs3.getString("P_name").equals(pn))
				{
					q1=Integer.parseInt(rs3.getString("Quantity"))-q;
					rs3.updateString("Quantity",Integer.toString(q1));
					rs3.updateRow();
				}
			}
			Statement s1 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs4 = s1.executeQuery("select * from products1");
			while (rs4.next()) {
				if(rs4.getString("P_name").equals(pn))
				{
					q2=Integer.parseInt(rs4.getString("Quantity"))-q;
					rs4.updateString("Quantity",Integer.toString(q2));
					rs4.updateRow();
				}
			}
		}
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from signup");
		String sql = "Select * from ammount_wallet where Name=?";
		PreparedStatement stmt1 = con.prepareStatement(sql);
		stmt1.setString(1, uname);
		ResultSet rs1 = stmt1.executeQuery();
		PreparedStatement p1 = con.prepareStatement("update ammount_wallet set Ammount=? where Name=?");
		p1.setString(2, uname);
		stmt1.setString(1, uname);
		PreparedStatement p = con.prepareStatement("delete from cart where username=?");
		RequestDispatcher rd = request.getRequestDispatcher("ordered_placed.jsp");
		while (rs.next()) {
			if (rs.getString("Name").equals(uname) && rs.getString("Password").equals(pass) && uname.equals(uname1)) {
		while (rs1.next()) {
			int a = Integer.parseInt(rs1.getString("Ammount"));
			if (rs1.getString("Name").equals(uname) && a >= final1 && uname.equals(uname1)) {
				a = a - final1;
				p1.setString(1, Integer.toString(a));
				p1.executeUpdate();
				p.setString(1, uname);
				p.executeUpdate();
				rd.forward(request, response);
				count1 += 1;
				break;
			}
			count += 1;
		}
		break;
			}
		}
	}
	if (count == 0) {
		RequestDispatcher rd10=request.getRequestDispatcher("error_acc_not_cart.jsp");
		rd10.forward(request, response);
	}
	if (count1 == 0) {
		RequestDispatcher rd11=request.getRequestDispatcher("error_insuf_amount.jsp");
		rd11.forward(request, response);
	}
	%>
</body>
</html>