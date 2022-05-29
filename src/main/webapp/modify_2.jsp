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
	
	<c:if test="${param.data=='name'}">
		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
		<sql:update dataSource="${con}" var="rs">  
		update products1 set P_name=? where P_ID=? 
		<sql:param value="${param.datas}"></sql:param>
			<sql:param value="${param.id}"></sql:param>
		</sql:update>
	</c:if>
	<c:if test="${param.data=='price'}">
		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
		<sql:update dataSource="${con}" var="rs">  
		update products1 set P_price=? where P_ID=? 
		<sql:param value="${param.datas}"></sql:param>
			<sql:param value="${param.id}"></sql:param>
		</sql:update>
	</c:if>
	<c:if test="${param.data=='image'}">
		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
		<sql:update dataSource="${con}" var="rs">  
		update products1 set P_image_name=? where P_ID=? 
		<sql:param value="${param.datas}"></sql:param>
			<sql:param value="${param.id}"></sql:param>
		</sql:update>
	</c:if>
	<c:if test="${param.data=='desc'}">
		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
		<sql:update dataSource="${con}" var="rs">  
		update products1 set P_desc=? where P_ID=? 
		<sql:param value="${param.datas}"></sql:param>
			<sql:param value="${param.id}"></sql:param>
		</sql:update>
	</c:if>
	<c:if test="${param.data=='quan'}">
		<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3307/project" user="root" password="root" />
		<sql:update dataSource="${con}" var="rs">  
		update products1 set Quantity=? where P_ID=? 
		<sql:param value="${param.datas}"></sql:param>
			<sql:param value="${param.id}"></sql:param>
		</sql:update>
	</c:if>
	<jsp:forward page="success_modify.jsp"></jsp:forward>
</body>
</html>