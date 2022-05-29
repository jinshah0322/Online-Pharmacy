<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error_product_add.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EasyPharmacy</title>
</head>
<body>
	<c:set var="pid" value="${param.id1}" scope="request"></c:set>
	<c:set var="pname" value="${param.pn1}" scope="request"></c:set>
	<c:set var="pp" value="${param.pp1}" scope="request"></c:set>
	<c:set var="image" value="${param.img1}" scope="request"></c:set>
	<c:set var="pd" value="${param.desc1}" scope="request"></c:set>
	<c:set var="q" value="${param.quan1 }" scope="request"></c:set>
	<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
	<sql:update dataSource="${con}" var="count">  
		INSERT INTO products1 VALUES(?,?,?,?,?,?);  
		<sql:param value="${pid}"></sql:param>
		<sql:param value="${pname}"></sql:param>
		<sql:param value="${pp}"></sql:param>
		<sql:param value="${image}"></sql:param>
		<sql:param value="${pd}"></sql:param>
		<sql:param value="${q }"></sql:param>
	</sql:update>
	<c:if test="${count==1}">
		<jsp:forward page="success_productadd.jsp"></jsp:forward>
	</c:if>
</body>
</html>