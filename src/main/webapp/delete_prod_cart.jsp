<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EasyPharmacy</title>
</head>
<body>
	<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
	<sql:update dataSource="${con}" var="rs">  
		delete from cart where P_Name=? and username=? 
		<sql:param value="${param.pname}"/>
		<sql:param value="${param.uname}"/>
	</sql:update>
	<jsp:forward page="success_del_cart.jsp"></jsp:forward>
</body>
</html>