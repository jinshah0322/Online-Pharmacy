<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>EasyPharmacy</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rubik&display=swap"
	rel="stylesheet">
<link rel="icon" href="images/taskbar.png" type="image/icon type">

<style>
body {
	background: #eee !important;
	font-family: calibri;
	color: #000 !important;
}
@media screen and (max-width:650px) {
		.container{
			margin-top:-26vw;
		}
	}
</style>
<body>

	<!--NAVBAR-->
	<jsp:include page="navbar.jsp" />

	<br>
	<br>
	<br>
	<br>
	<br>
	<%
	String username = (String) session.getAttribute("Username");
	int count = 1;

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs = stmt.executeQuery("select * from signup where Name=" + "\'" + username + "\'");
	Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs1 = stmt1.executeQuery("select * from signup where Name=" + "\'" + username + "\'");
	Statement stmt2 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs2 = stmt2.executeQuery("select * from signup where Name=" + "\'" + username + "\'");
	Statement stmt3 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs3 = stmt3.executeQuery("select * from signup where Name=" + "\'" + username + "\'");
	Statement stmt4 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs4 = stmt4.executeQuery("select * from signup where Name=" + "\'" + username + "\'");
	Statement stmt5 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs5 = stmt5.executeQuery("select * from ammount_wallet where Name=" + "\'" + username + "\'");
	%>
	<section style="background-color: #eee;">
		<div class="container py-5">


			<div class="row">
				<div class="col-lg-4">
					<div class="card mb-4">
						<div class="card-body text-center">
							<img src="images/profile.jpg" alt="avatar"
								class="rounded-circle img-fluid" style="width: 150px;">
							<h5 class="my-3">
								<b>
									<%
									while (rs.next()) {
										out.print(rs.getString(1));
									}
									%>
								</b>
							</h5>

						</div>
					</div>

				</div>
				<div class="col-lg-8">
					<div class="card mb-4">
						<div class="card-body">
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Full Name</p>
								</div>
								<div class="col-sm-9">
									<p class="text-muted mb-0">
										<%
										while (rs4.next()) {
											out.print(rs4.getString(1));
										}
										%>
									</p>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Email</p>
								</div>
								<div class="col-sm-9">
									<p class="text-muted mb-0">
										<%
										while (rs1.next()) {
											out.print(rs1.getString(3));
										}
										%>
									</p>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Phone</p>
								</div>
								<div class="col-sm-9">
									<p class="text-muted mb-0">
										<%
										while (rs2.next()) {
											out.print(rs2.getString(2));
										}
										%>
									</p>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Wallet</p>
								</div>
								<div class="col-sm-9">
									<p class="text-muted mb-0">
										<%
										while (rs5.next()) {
											out.print("&#8377;&nbsp;" + rs5.getString(2));
										}
										%>
									</p>
								</div>
							</div>
							<hr>

							<div class="row">
								<div class="col-sm-3">
									<p class="mb-0">Address</p>
								</div>
								<div class="col-sm-9">
									<p class="text-muted mb-0">
										<%
										while (rs3.next()) {
											out.print(rs3.getString(5));
										}
										%>
									</p>
								</div>
							</div>


						</div>
					</div>

					<a href="account.jsp"><button type="submit"
							class="btn btn-danger" style="background: #38A688;">Back</button></a>

				</div>
			</div>
		</div>
	</section>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- Footer -->
	<jsp:include page="footer.jsp" />

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

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