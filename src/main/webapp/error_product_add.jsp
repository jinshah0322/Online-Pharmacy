<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EasyPharmace</title>
</head>
<body>
	<%
	out.println("<h4 style=\"color:red;text-align:center;margin-top:-100px\">Enter unique ID!!!</h4>");
	RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
	rd.include(request, response);
	%>
</body>
</html>