<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	<sql:query dataSource="${con}" var="rs">
			select * from cart;
		</sql:query>
	<%
	int count = 0;
	%>
	<c:forEach var="table" items="${rs.rows}">
		<c:if test="${param.uname==table.username}">
			<c:if test="${param.name==table.P_Name}">
				<sql:update dataSource="${con}" var="insert">
			update cart set quan=? where P_Name=? and username=?
				<sql:param value="${ param.quantity+table.quan}"></sql:param>
					<sql:param value="${ param.name}"></sql:param>
					<sql:param value="${ param.uname}"></sql:param>
				</sql:update>
				<%
				count += 1;
				%>
			</c:if>
		</c:if>
	</c:forEach>
	<%
	if (count == 0) {
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
		PreparedStatement p = con.prepareStatement("INSERT INTO cart VALUES (?,?,?,?,?,?)");
		p.setString(1, request.getParameter("name"));
		p.setInt(2, Integer.parseInt(request.getParameter("price")));
		p.setString(3, request.getParameter("image"));
		p.setString(4, request.getParameter("desc"));
		p.setString(5, request.getParameter("uname"));
		p.setInt(6, Integer.parseInt(request.getParameter("quantity")));

		p.executeUpdate();
	}
	%>
	<jsp:forward page="successfully_added.jsp"></jsp:forward>
</body>
</html>