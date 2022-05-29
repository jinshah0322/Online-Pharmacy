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
	out.print("<h6 style=\"color:red;text-align:right;margin-right:352px;margin-top:-360px;font-weight:600;\">Incorrect Username or Password</h6>");
	RequestDispatcher rd=request.getRequestDispatcher("admin_login.jsp");
	rd.include(request, response);
%>
</body>
</html>