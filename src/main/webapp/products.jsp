<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>EasyPharmacy</title>
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/slider.css">
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">

<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="icon" href="images/taskbar.png" type="image/icon type">
<style>
body {
	font-family: calibri !important;
	overflow-x: hidden;
}

.view_prod .card {
	margin-left: 50px;
	border: none !important;
}

.nav-pills .nav-link {
	color: #38a688 !important;
	font-size: 16px !important;
	letter-spacing: 1px !important;
	background: #fff !important;
}

.nav-pills .nav-link:focus {
	background: #38a688 !important;
	color: #fff !important;
}

@media screen and (max-width:650px) {
	.card {
		margin-left: -00px !important;
	}
	footer {
		width: 110% !important;
	}
}

.btn-primary:hover {
	background: #38a688 !important;
}
</style>

</head>
<body>

	<!--NAVBAR-->
	<jsp:include page="navbar.jsp" />

	<br>
	<br>
	<br>
	<!-- Pills navs -->
	<ul class="nav nav-pills nav-fill mb-3" id="ex1" role="tablist">
		<li class="nav-item " role="presentation"><a
			class="nav-link active" id="ex2-tab-1" data-mdb-toggle="pill"
			href="#ex2-pills-1" role="tab" aria-controls="ex2-pills-1"
			aria-selected="true"> Medicines</a></li>
		<li class="nav-item" role="presentation"><a class="nav-link"
			id="ex2-tab-2" data-mdb-toggle="pill" href="#ex2-pills-2" role="tab"
			aria-controls="ex2-pills-2" aria-selected="false"> Healthcare
				Products</a></li>

	</ul>
	<!-- Pills navs -->

	<!-- Pills content -->
	<div class="tab-content" id="ex2-content">

		<div class="tab-pane fade show active" id="ex2-pills-1"
			role="tabpanel" aria-labelledby="ex2-tab-1">
			<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
				url="jdbc:mysql://localhost:3307/project" user="root"
				password="root" />
			<sql:query dataSource="${con}" var="rs">  
									SELECT * from products;  
								</sql:query>
			<div class="row view_prod" style="margin-left: 1.5vw;">
				<c:forEach var="table" items="${rs.rows}">
					<div class="card col-md-2"
						style="margin-left: 10px; margin-top: 10px; box-shadow: none;">
						<br>
						<div style="width: 100%; height: 100%;">
							<img src="images/products/${table.P_image_name}"
								class="card-img-top" alt="Chicago Skyscrapers" />
						</div>
					</div>
					<div class="card col-md-9" style="box-shadow: none;">
						<div class="card-body">
							<form action="product_logic.jsp" method="post">
								<input type="hidden" name="image" value="${table.P_image_name}">
								<%
								session.setAttribute("medi", "products");
								%>
								<p class="card-text" style="font-size: 18px;">
									<b>Name:&nbsp;</b>${table.P_name}</p>
								<input type="hidden" name="name" value="${table.P_name}">
								<p class="card-text" style="font-size: 18px;">
									<b>Description:&nbsp;</b>${table.P_desc}</p>
								<input type="hidden" name="desc" value="${table.P_desc}">
								<p class="card-text" style="font-size: 18px;">
									<b>Price:&nbsp;&#8377;&nbsp;</b>${table.P_price}</p>
								<p class="card-text" style="font-size: 18px;">

									<b>Quantity:</b> <select name="quantity"
										style="border: none; outline: none;">
										<option value="1">1&nbsp;</option>
										<option value="2">2&nbsp;</option>
										<option value="3">3&nbsp;</option>
										<option value="4">4&nbsp;</option>
										<option value="5">5&nbsp;</option>

									</select>
								</p>
								<input type="hidden" name="price" value="${table.P_price}">
								<%
								String u = (String) session.getAttribute("Username");
								%>
								<input type="hidden" name="uname" value="<%=u%>">
								<p class="card-text" style="font-size: 20px;">
									<c:if test="${table.Quantity eq 0 }"><h5 style="color:red;">Out of Stock</h5></c:if>
									<c:if test="${table.Quantity ne 0 }">
										<button type="submit" class="btn btn-primary">Add To
											Cart</button>
									</c:if>
								</p>
							</form>
						</div>
					</div>
					<hr>
				</c:forEach>
			</div>
		</div>
		<div class="tab-pane fade active" id="ex2-pills-2" role="tabpanel"
			aria-labelledby="ex2-tab-2">
			<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
				url="jdbc:mysql://localhost:3307/project" user="root"
				password="root" />
			<sql:query dataSource="${con}" var="rs">  
									SELECT * from products1;  
								</sql:query>
			<div class="row view_prod" style="margin-left: 1.5vw;">
				<c:forEach var="table" items="${rs.rows}">
					<div class="card col-md-2"
						style="margin-left: 10px; margin-top: 10px; box-shadow: none;">
						<br>
						<div style="width: 100%; height: 100%;">
							<img src="images/healthcare/${table.P_image_name}"
								class="card-img-top" alt="Chicago Skyscrapers" />
						</div>
					</div>
					<div class="card col-md-9" style="box-shadow: none;">
						<div class="card-body">
							<form action="product_logic.jsp" method="post">
								<input type="hidden" name="image" value="${table.P_image_name}">
								<%
								session.setAttribute("medi", "healthcare");
								%>
								<p class="card-text" style="font-size: 18px;">
									<b>Name:&nbsp;</b>${table.P_name}</p>
								<input type="hidden" name="name" value="${table.P_name}">
								<p class="card-text" style="font-size: 18px;">
									<b>Description:&nbsp;</b>${table.P_desc}</p>
								<input type="hidden" name="desc" value="${table.P_desc}">
								<p class="card-text" style="font-size: 18px;">
									<b>Price:&nbsp;&#8377;&nbsp;</b>${table.P_price}</p>
								<p class="card-text" style="font-size: 18px;">

									<b>Quantity:</b> <select name="quantity"
										style="border: none; outline: none;">
										<option value="1">1&nbsp;</option>
										<option value="2">2&nbsp;</option>
										<option value="3">3&nbsp;</option>
										<option value="4">4&nbsp;</option>
										<option value="5">5&nbsp;</option>

									</select>
								</p>
								<input type="hidden" name="price" value="${table.P_price}">
								
								<%
								String u = (String) session.getAttribute("Username");
								%>
								<input type="hidden" name="uname" value="<%=u%>">
								<p class="card-text" style="font-size: 20px;">
									<c:if test="${table.Quantity eq 0 }"><h5 style="color:red;">Out of Stock</h5></c:if>
									<c:if test="${table.Quantity ne 0 }">
										<button type="submit" class="btn btn-primary">Add To
											Cart</button>
									</c:if>
								</p>
							</form>
						</div>
					</div>
					<hr>
				</c:forEach>
			</div>
		</div>
		<!-- Pills content -->

		<!-- Footer -->
		<jsp:include page="footer.jsp" />
</body>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="js/app.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>

<script>
	AOS.init();
</script>

</html>