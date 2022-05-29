<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
<script src="https://kit.fontawesome.com/6519af718f.js"
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/admin.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="icon" href="images/taskbar.png" type="image/icon type">
<script src="https://kit.fontawesome.com/36a2be57d1.js"
	crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
</head>
<style>
.dashboardhover:hover {
	background: #c5ded7 !important;
}

.user th {
	font-size: 17px !important;
}

.user tr:nth-child(odd) {
	background: #c5ded7;
}

.user tr:nth-child(even) {
	background: #fff !important;
}

.user thead tr {
	background: #fff !important;
}

.btn-primary:hover {
	background: #3bb896 !important;
}
</style>
</head>
<body>

	<!-- Navbar -->
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
		<!-- Container wrapper -->
		<div class="container-fluid">
			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- Navbar brand -->
				<a class="navbar-brand" href="index.jsp"
					style="letter-spacing: 0px; margin-left: 100px !important;">EasyPharmacy</a>
				<!-- Left links -->

				<!-- Left links -->
			</div>
			<!-- Collapsible wrapper -->

			<!-- Right elements -->
			<div class="d-flex align-items-center icons ">
				<!-- Icon -->
				<a class="text-reset me-3 nav-icons"
					href="https://www.instagram.com/"> <i class="fab fa-instagram"></i>
				</a>

				<!-- Notifications -->
				<a class="text-reset me-3 nav-icons"
					href="https://www.facebook.com/"> <i class="fab fa-facebook"></i>
				</a> <a class="text-reset me-3 nav-icons" href="https://twitter.com/">
					<i class="fab fa-twitter"></i>
				</a>

				<!-- Notifications -->
				<a class="text-reset me-3 nav-icons" href="https://youtube.com/">
					<i class="fab fa-youtube"></i>
				</a>
				<!-- Avatar -->

			</div>
			<!-- Right elements -->
		</div>
		<i class="fas fa-user"
			style="font-size: 18px !important; color: #000;"></i> <a href="#"
			style="color: #000; margin-right: 30px; font-size: 18px; color: #000; cursor: text;">&nbsp;&nbsp;&nbsp;Admin
		</a> <a href="signout_admin.jsp">
			<button type="submit" class="btn btn-danger"
				style="width: 105px; margin-right: 30px;">Sign Out</button>

		</a>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->
	<!--Main Navigation-->
	<br>
	<br>
	<br>
	<br>
	<div class="row">
		<div class="col-2 side-navs">
			<!-- Tab navs -->
			<div class="nav flex-column nav-pills" id="v-pills-tab"
				role="tablist" aria-orientation="vertical">

				<a class="nav-link active" id="v-pills-home-tab"
					data-mdb-toggle="pill" href="#v-pills-dash" role="tab"
					aria-controls="v-pills-dash" aria-selected="true"><i
					class="fas fa-tachometer-alt" style=""></i>&nbsp;&nbsp;&nbsp;Dashboard</a>
				<a class="nav-link" id="v-pills-profile-tab" data-mdb-toggle="pill"
					href="#v-pills-add-prod" role="tab"
					aria-controls="v-pills-add-prod" aria-selected="false"><i
					class="fas fa-plus"></i>&nbsp;&nbsp;&nbsp;Add Products</a> <a
					class="nav-link" id="v-pills-messages-tab" data-mdb-toggle="pill"
					href="#v-pills-mod-prod" role="tab"
					aria-controls="v-pills-mod-prod" aria-selected="false"><i
					class="fas fa-edit"></i>&nbsp;&nbsp;&nbsp;Modify Products</a> <a
					class="nav-link" id="v-pills-messages-tab" data-mdb-toggle="pill"
					href="#v-pills-del-prod" role="tab"
					aria-controls="v-pills-del-prod" aria-selected="false"><i
					class="fas fa-minus"></i>&nbsp;&nbsp;&nbsp;Delete Products</a> <a
					class="nav-link" id="v-pills-messages-tab" data-mdb-toggle="pill"
					href="#v-pills-view-prod" role="tab"
					aria-controls="v-pills-view-prod" aria-selected="false"><i
					class="fa-solid fa-eye"></i> &nbsp;&nbsp;&nbsp;View Products</a> <a
					class="nav-link" id="v-pills-messages-tab" data-mdb-toggle="pill"
					href="#v-pills-user" role="tab" aria-controls="v-pills-user"
					aria-selected="false"><i class="fas fa-user-cog"></i>&nbsp;&nbsp;&nbsp;Users</a>

			</div>
			<!-- Tab navs -->
		</div>

		<div class="col-9">
			<!-- Tab content -->
			<div class="tab-content" id="v-pills-tabContent">
				<div class="tab-pane fade show active" id="v-pills-dash"
					role="tabpanel" aria-labelledby="v-pills-home-tab">
					<div class="row">
						<div class="col-sm-6 ">
							<div class="card dashboardhover">
								<div class="card-body">
									<h1 class="card-title">
										<i class="fas fa-users"></i>&nbsp;&nbsp;Total Users
									</h1>
									<%
									Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
									Statement stmt = con.createStatement();
									ResultSet rs = stmt.executeQuery("select count(*) from signup");
									rs.next();
									int x = rs.getInt("count(*)");
									%>
									<h3 class="card-text">
										<%=x%></h3>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="card dashboardhover">
								<div class="card-body">
									<%
									Statement stmt1 = con.createStatement();
									ResultSet rs1 = stmt.executeQuery("select count(*) from ammount_wallet");
									rs1.next();
									int x1 = rs1.getInt("count(*)");
									%>

									<h1 class="card-title">
										<i class="fas fa-wallet"></i>&nbsp;&nbsp;Total Wallet's User
									</h1>
									<h3 class="card-text" style="color: #000;"><%=x1%></h3>
								</div>
							</div>
						</div>
					</div>
					<br> <br> <br>
					<div class="row">
						<div class="col-sm-6">
							<div class="card dashboardhover">
								<div class="card-body">
									<h1 class="card-title">
										<i class="fas fa-calendar-check"></i>&nbsp;&nbsp;Doctor's
										Appointment
									</h1>
									<h3 class="card-text">
										<%
										Connection con11 = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
										Statement stmt6 = con11.createStatement();
										Statement stmt7 = con11.createStatement();
										Statement stmt8 = con11.createStatement();
										Statement stmt9 = con11.createStatement();
										ResultSet rs6 = stmt6.executeQuery("select count(*) from doctor1");
										rs6.next();
										int c1=rs6.getInt(1);
										ResultSet rs7 = stmt7.executeQuery("select count(*) from doctor2");
										rs7.next();
										int c2=rs7.getInt(1);
										ResultSet rs8 = stmt8.executeQuery("select count(*) from doctor3");
										rs8.next();
										int c3=rs8.getInt(1);
										ResultSet rs9 = stmt9.executeQuery("select count(*) from doctor4");
										rs9.next();
										int c4=rs9.getInt(1);
										int c=c1+c2+c3+c4;
										%>
										<%=c %>
									</h3>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="card dashboardhover">
								<div class="card-body">
									<h1 class="card-title">
										<i class="fas fa-box-open"></i>&nbsp;&nbsp;Total Orders
									</h1>
									<h3 class="card-text">
										<%
										Connection con10 = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
										Statement s = con10.createStatement();
										ResultSet rs10 = s.executeQuery("select count(Distinct username) from order_hist");
										rs10.next();
										int count = rs10.getInt(1);
										%>
										<%=count%>
									</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane fade " id="v-pills-add-prod" role="tabpanel"
					aria-labelledby="v-pills-profile-tab"
					style="margin-top: -10px; margin-right: -1vw">
					<ul class="nav nav-pills mb-3" id="pills-tab2" role="tablist">
						<li class="nav-item  col-md-6" role="presentation">
							<button class="nav-link text-center" id="pills-home-tab2"
								data-mdb-toggle="pill" data-mdb-target="#pills-home2"
								type="button" role="tab" aria-controls="pills-home"
								aria-selected="true"
								style="width: 100%; font-size: 15px; letter-spacing: 2px;">Medicines</button>
						</li>
						<li class="nav-item col-md-6" role="presentation">
							<button class="nav-link text-center" id="pills-profile-tab2"
								data-mdb-toggle="pill" data-mdb-target="#pills-profile2"
								type="button" role="tab" aria-controls="pills-profile"
								aria-selected="false"
								style="width: 100%; font-size: 15px; letter-spacing: 2px;">Healthcare
								Products</button>
						</li>
					</ul>
					<div class="tab-content" id="pills-tabContent2">
						<div class="tab-pane fade show" id="pills-home2" role="tabpanel"
							aria-labelledby="pills-home-tab2">
							<section class="vh-100"
								style="background-color: none; margin-top: -1vw">
								<div class="container h-100">
									<div
										class="row d-flex justify-content-center align-items-center h-100">
										<div class="col-lg-12 col-xl-11">
											<div class="card text-black"
												style="border-radius: 25px; border: none !important; box-shadow: none !important; margin-top: -10vw;">
												<div class="card-body p-md-5">
													<div class="row justify-content-center">
														<div
															class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">


															<form class="mx-1 mx-md-4" method="post"
																action="add_product_1.jsp">
																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-pen-to-square"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="number" id="form3Example1c"
																			class="form-control" name="id" required /> <label
																			class="form-label" for="form3Example1c">Product
																			ID</label>
																	</div>
																</div>

																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-file-signature"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="text" id="form3Example1c"
																			class="form-control" name="pn" required /> <label
																			class="form-label" for="form3Example1c">Product
																			Name</label>
																	</div>
																</div>

																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-indian-rupee-sign"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="number" id="form3Example3c"
																			class="form-control" name="pp" required /> <label
																			class="form-label" for="form3Example3c">Product
																			Price</label>
																	</div>
																</div>

																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-image" style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="file" id="form3Example4c" name="img"
																			class="form-control" accept="image/*" required>
																		<label class="form-label" for="form3Example4c"></label>
																	</div>
																</div>

																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-file-pen"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="text" id="form3Example4cd"
																			class="form-control" name="desc" required /> <label
																			class="form-label" for="form3Example4cd">Product
																			Description</label>
																	</div>
																</div>

																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-arrow-up-wide-short"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="number" id="form3Example4cd"
																			class="form-control" name="quan" required /> <label
																			class="form-label" for="form3Example4cd">Enter
																			Quantity</label>
																	</div>
																</div>


																<div
																	class="d-flex justify-content-center mx-4 mb-3 mb-lg-4 ">
																	<button type="submit" class="btn btn-primary btn-lg">ADD
																		PRODUCT</button>
																</div>

															</form>

														</div>
														<div
															class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

															<img src="images/admin_add_prod_1.png" class="img-fluid"
																alt="Sample image"
																style="margin-top: -80px; width: 80%; margin-left: 80px">

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
						<div class="tab-pane fade" id="pills-profile2" role="tabpanel"
							aria-labelledby="pills-profile-tab2">
							<section class="vh-100"
								style="background-color: none; margin-top: -1vw">
								<div class="container h-100">
									<div
										class="row d-flex justify-content-center align-items-center h-100">
										<div class="col-lg-12 col-xl-11">
											<div class="card text-black"
												style="border-radius: 25px; border: none !important; box-shadow: none !important; margin-top: -10vw;">
												<div class="card-body p-md-5">
													<div class="row justify-content-center">
														<div
															class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">


															<form class="mx-1 mx-md-4" action="add_product_2.jsp"
																method="post">
																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-pen-to-square"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="number" id="form3Example1c"
																			class="form-control" name="id1" required /> <label
																			class="form-label" for="form3Example1c">Product
																			ID</label>
																	</div>
																</div>

																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-file-signature"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="text" id="form3Example1c"
																			class="form-control" name="pn1" required /> <label
																			class="form-label" for="form3Example1c">Product
																			Name</label>
																	</div>
																</div>

																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-indian-rupee-sign"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="number" id="form3Example3c"
																			class="form-control" name="pp1" required /> <label
																			class="form-label" for="form3Example3c">Product
																			Price</label>
																	</div>
																</div>

																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-image" style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="file" id="form3Example4c" name="img1"
																			class="form-control" accept="image/*" required>
																		<label class="form-label" for="form3Example4c"></label>
																	</div>
																</div>

																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-file-pen"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="text" id="form3Example4cd"
																			class="form-control" name="desc1" required /> <label
																			class="form-label" for="form3Example4cd">Product
																			Description</label>
																	</div>
																</div>
																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-arrow-up-wide-short"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="number" id="form3Example4cd"
																			class="form-control" name="quan1" required /> <label
																			class="form-label" for="form3Example4cd">Enter
																			Quantity</label>
																	</div>
																</div>


																<div
																	class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
																	<button type="submit" class="btn btn-primary btn-lg">ADD
																		PRODUCT</button>
																</div>

															</form>

														</div>
														<div
															class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

															<img src="images/admin_add_prod_2.jpg" class="img-fluid"
																alt="Sample image"
																style="margin-top: -80px; width: 70%; margin-left: 80px">

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="v-pills-mod-prod" role="tabpanel"
					aria-labelledby="v-pills-messages-tab">
					<ul class="nav nav-pills mb-3" id="ex1" role="tablist">
						<li class="nav-item col-md-6 text-center" role="presentation"><a
							class="nav-link" id="ex1-tab-1" data-mdb-toggle="pill"
							href="#ex1-pills-1000" role="tab" aria-controls="ex1-pills-10"
							aria-selected="true" style="letter-spacing: 2px;">Medicines</a></li>
						<li class="nav-item col-md-6 text-center" role="presentation"><a
							class="nav-link" id="ex1-tab-2" data-mdb-toggle="pill"
							href="#ex1-pills-2000" role="tab" aria-controls="ex1-pills-20"
							aria-selected="false" style="letter-spacing: 2px;">Healthcare
								Products</a></li>

					</ul>
					<!-- Pills navs -->

					<!-- Pills content -->
					<div class="tab-content" id="ex1-content">
						<div class="tab-pane fade show" id="ex1-pills-1000"
							role="tabpanel" aria-labelledby="ex1-tab-1">
							<section class="vh-100"
								style="background-color: none; margin-top: -5vw">
								<div class="container h-100">
									<div
										class="row d-flex justify-content-center align-items-center h-100">
										<div class="col-lg-12 col-xl-11">
											<div class="card text-black"
												style="border-radius: 25px; border: none !important; box-shadow: none !important; margin-top: -5vw;">
												<div class="card-body p-md-5">
													<div class="row justify-content-center">
														<div
															class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">


															<form class="mx-1 mx-md-4" method="post"
																action="modify_1.jsp">

																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-id-badge"
																		style="font-size: 20px;"></i>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="text" id="form3Example1c"
																			class="form-control" name="id" required /> <label
																			class="form-label" for="form3Example1c">Product
																			ID </label>
																	</div>
																</div>
																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-pen-to-square"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;
																	<select class="select form-control" name="data">
																		<option value="1" disabled>Choose What You
																			Want To Modify</option>
																		<option value="name">Name</option>
																		<option value="price">Price</option>
																		<option value="image">Image</option>
																		<option value="desc">Description</option>
																		<option value="quan">Quantity</option>
																	</select>
																</div>





																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-file-pen"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="text" id="form3Example4cd"
																			class="form-control" name="datas" required /> <label
																			class="form-label" for="form3Example4cd">Updated
																			Data</label>
																	</div>
																</div>


																<div
																	class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
																	<button type="submit" class="btn btn-primary btn-lg">Modify</button>
																</div>

															</form>

														</div>
														<div
															class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

															<img src="images/admin_add_prod_1.png" class="img-fluid"
																alt="Sample image"
																style="width: 80%; margin-left: 100px; margin-top: -100px;">

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
						<div class="tab-pane fade" id="ex1-pills-2000" role="tabpanel"
							aria-labelledby="ex1-tab-2">
							<section class="vh-100"
								style="background-color: none; margin-top: -5vw">
								<div class="container h-100">
									<div
										class="row d-flex justify-content-center align-items-center h-100">
										<div class="col-lg-12 col-xl-11">
											<div class="card text-black"
												style="border-radius: 25px; border: none !important; box-shadow: none !important; margin-top: -5vw;">
												<div class="card-body p-md-5">
													<div class="row justify-content-center">
														<div
															class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">


															<form class="mx-1 mx-md-4" method="post"
																action="modify_2.jsp">

																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-id-badge"
																		style="font-size: 20px;"></i>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="text" id="form3Example1c"
																			class="form-control" name="id" required /> <label
																			class="form-label" for="form3Example1c">Product
																			ID </label>
																	</div>
																</div>
																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-pen-to-square"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;
																	<select class="select form-control" name="data">
																		<option value="1" disabled>Choose What You
																			Want To Modify</option>
																		<option value="name">Name</option>
																		<option value="price">Price</option>
																		<option value="image">Image</option>
																		<option value="desc">Description</option>
																		<option value="quan">Quantity</option>
																	</select>
																</div>





																<div class="d-flex flex-row align-items-center mb-4">
																	<i class="fa-solid fa-file-pen"
																		style="font-size: 20px;"></i>&nbsp;&nbsp;&nbsp;
																	<div class="form-outline flex-fill mb-0">
																		<input type="text" id="form3Example4cd"
																			class="form-control" name="datas" required /> <label
																			class="form-label" for="form3Example4cd">Updated
																			Data</label>
																	</div>
																</div>


																<div
																	class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
																	<button type="submit" class="btn btn-primary btn-lg">Modify</button>
																</div>

															</form>

														</div>
														<div
															class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

															<img src="images/admin_add_prod_1.png" class="img-fluid"
																alt="Sample image"
																style="width: 80%; margin-left: 100px; margin-top: -100px;">

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>

					</div>
				</div>
				<div class="tab-pane fade" id="v-pills-view-prod" role="tabpanel"
					aria-labelledby="v-pills-messages-tab">


					<!-- Pills navs -->
					<ul class="nav nav-pills mb-3" id="ex1" role="tablist">
						<li class="nav-item col-md-6 text-center" role="presentation">
							<a class="nav-link " id="ex1-tab-1" data-mdb-toggle="pill"
							href="#ex1-pills-1" role="tab" aria-controls="ex1-pills-1"
							aria-selected="true" style="letter-spacing: 2px;">Medicines</a>
						</li>
						<li class="nav-item col-md-6 text-center" role="presentation">
							<a class="nav-link" id="ex1-tab-2" data-mdb-toggle="pill"
							href="#ex1-pills-2" role="tab" aria-controls="ex1-pills-2"
							aria-selected="false" style="letter-spacing: 2px;">Healthcare
								Products</a>
						</li>

					</ul>
					<!-- Pills navs -->

					<!-- Pills content -->
					<div class="tab-content" id="ex1-content">
						<div class="tab-pane fade show " id="ex1-pills-1" role="tabpanel"
							aria-labelledby="ex1-tab-1">
							<div class="row view_prod">
								<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
									url="jdbc:mysql://localhost:3307/project" user="root"
									password="root" />
								<sql:query dataSource="${con}" var="rs">  
									SELECT * from products;  
								</sql:query>
								<c:forEach var="table" items="${rs.rows}">
									<div class="card"
										style="width: 23vw; margin-left: 10px; margin-top: 10px;">
										<img src="images/products/${table.P_image_name}"
											class="card-img-top" alt="Chicago Skyscrapers"
											style="width: 55%; margin-left: 80px;" />
										<div class="card-body">
											<p class="card-text" style="font-size: 20px;">
												<b>ID:</b>${table.P_ID}</p>
											<p class="card-text" style="font-size: 20px;">
												<b>Name:</b>${table.P_name}</p>
											<p class="card-text" style="font-size: 20px;">
												<b>Description:</b>${table.P_desc}</p>
											<p class="card-text" style="font-size: 20px;">
												<b>Price:</b>${table.P_price}</p>
											<p class="card-text" style="font-size: 20px;">
												<b>Quantity:</b>${table.Quantity}</p>
										</div>
									</div>
								</c:forEach>
								<br>
							</div>

						</div>
						<br>
						<div class="tab-pane fade" id="ex1-pills-2" role="tabpanel"
							aria-labelledby="ex1-tab-2">
							<div class="row view_prod">
								<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
									url="jdbc:mysql://localhost:3307/project" user="root"
									password="root" />
								<sql:query dataSource="${con}" var="rs">  
									SELECT * from products1;  
								</sql:query>
								<c:forEach var="table" items="${rs.rows}">
									<div class="card"
										style="width: 23vw; margin-left: 10px; margin-top: 10px;">
										<img src="images/healthcare/${table.P_image_name}"
											class="card-img-top" alt="Chicago Skyscrapers"
											style="width: 55%; margin-left: 80px;" />
										<div class="card-body">
											<p class="card-text" style="font-size: 20px;">
												<b>ID:</b>${table.P_ID}</p>
											<p class="card-text" style="font-size: 20px;">
												<b>Name:</b>${table.P_name}</p>
											<p class="card-text" style="font-size: 20px;">
												<b>Description:</b>${table.P_desc}</p>
											<p class="card-text" style="font-size: 20px;">
												<b>Price:</b>${table.P_price}</p>
											<p class="card-text" style="font-size: 20px;">
												<b>Quantity:</b>${table.Quantity}</p>
										</div>
									</div>
								</c:forEach>
								<br>
							</div>
						</div>
					</div>
					<!-- Pills content -->


				</div>
				<div class="tab-pane fade" id="v-pills-del-prod" role="tabpanel"
					aria-labelledby="v-pills-messages-tab">
					<ul class="nav nav-pills mb-3" id="ex1" role="tablist">
						<li class="nav-item col-md-6 text-center" role="presentation"><a
							class="nav-link" id="ex1-tab-1" data-mdb-toggle="pill"
							href="#ex1-pills-10" role="tab" aria-controls="ex1-pills-10"
							aria-selected="true" style="letter-spacing: 2px;">Medicines</a></li>
						<li class="nav-item col-md-6 text-center" role="presentation"><a
							class="nav-link" id="ex1-tab-2" data-mdb-toggle="pill"
							href="#ex1-pills-20" role="tab" aria-controls="ex1-pills-20"
							aria-selected="false" style="letter-spacing: 2px;">Healthcare
								Products</a></li>

					</ul>
					<!-- Pills navs -->

					<!-- Pills content -->
					<div class="tab-content" id="ex1-content">
						<div class="tab-pane fade show" id="ex1-pills-10" role="tabpanel"
							aria-labelledby="ex1-tab-1">
							<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
								url="jdbc:mysql://localhost:3307/project" user="root"
								password="root" />
							<sql:query dataSource="${con}" var="rs">  
									SELECT * from products;  
								</sql:query>
							<table class="table align-middle mb-0 bg-white user">
								<thead>
									<tr>
										<th><b>P_ID</b></th>
										<th><b>P_name</b></th>
										<th><b>P_price</b></th>
										<th><b>P_desc</b></th>
										<th><b>Quantity</b></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="table" items="${rs.rows}">
										<form action="delete_product1.jsp" method="post">
											<tr>
												<td>${table.P_ID}</td>
												<td>${table.P_name}</td>
												<td>${table.P_price}</td>
												<td>${table.P_desc}</td>
												<td>${table.Quantity}</td>
												<input type="hidden" name="id" value="${table.P_ID}">
												<td><input type="submit" value="Delete"
													class="btn btn-danger"></td>
											</tr>
										</form>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="tab-pane fade" id="ex1-pills-20" role="tabpanel"
							aria-labelledby="ex1-tab-2">
							<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver"
								url="jdbc:mysql://localhost:3307/project" user="root"
								password="root" />
							<sql:query dataSource="${con}" var="rs">  
									SELECT * from products1;  
								</sql:query>
							<table class="table align-middle mb-0 bg-white user">
								<thead>
									<tr>
										<th><b>P_ID</b></th>
										<th><b>P_name</b></th>
										<th><b>P_price</b></th>
										<th><b>P_desc</b></th>
										<th><b>Quantity</b></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="table" items="${rs.rows}">
										<form action="delete_product2.jsp" method="post">
											<tr>
												<td>${table.P_ID}</td>
												<td>${table.P_name}</td>
												<td>${table.P_price}</td>
												<td>${table.P_desc}</td>
												<td>${table.Quantity}</td>
												<input type="hidden" name="id" value="${table.P_ID}">
												<td><input type="submit" value="Delete"
													class="btn btn-danger"></td>
											</tr>
										</form>
									</c:forEach>
								</tbody>
							</table>
						</div>

					</div>
				</div>
				<div class="tab-pane fade" id="v-pills-user" role="tabpanel"
					aria-labelledby="v-pills-messages-tab">
					<%
					Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
					Statement stmt2 = con1.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
					ResultSet rs2 = stmt2.executeQuery("select * from signup");
					%>
					<table class="table align-middle mb-0 bg-white user">
						<thead>
							<tr>
								<th><b>Name</b></th>
								<th><b>Phone</b></th>
								<th><b>Email</b></th>
								<th><b>Address</b></th>
							</tr>
						</thead>
						<tbody>
							<%
							while (rs2.next()) {
								out.println("<tr>");
								out.println("<td>");
								out.println(rs2.getString(1));
								out.println("</td>");
								out.println("<td>");
								out.println(rs2.getString(2));
								out.println("</td>");
								out.println("<td>");
								out.println(rs2.getString(3));
								out.println("</td>");
								out.println("<td>");
								out.println(rs2.getString(5));
								out.println("</td>");
								out.println("</tr>");

							}
							%>
						</tbody>
					</table>
				</div>
			</div>
			<!-- Tab content -->
		</div>
	</div>
</body>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
<script>
	</html>
