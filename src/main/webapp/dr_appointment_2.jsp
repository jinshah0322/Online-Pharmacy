<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>EasyPharmacy</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.css"
	rel="stylesheet" />
<script src="https://kit.fontawesome.com/6519af718f.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="images/taskbar.png" type="image/icon type">
<style>
body {
	color: #000;
	overflow-x: hidden;
}

.alagclass:hover {
	background: #38A688 !important;
}

.card {
	border: none;
	box-shadow: none;
	background: none !important;
}
</style>
</head>
<body>
	<!--NAVBAR--><jsp:include page="navbar.jsp" />

	<br>
	<br>
	<br>
	<div class="row">
		<div class="col-sm-6">
			<div class="card">
				<div class="card-body">
					<img src="images/doctors_appointment.jpg" style="width: 100%;">
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="card">
				<div class="card-body justify-content-center">
					<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Book
						Appointment</p>
					<form class="mx-1 mx-md-4" action="dr1_logic.jsp" method="post">


						<input type="hidden" name="doc" value="purav">
						<div class="d-flex flex-row align-items-center mb-4 "
							style="margin-top: 20px;">
							<i class="fas fa-user fa-lg me-3 fa-fw"></i>
							<div class="form-outline flex-fill mb-0">
								<input type="text" id="form3Example1c" class="form-control"
									name="pn" required /> <label class="form-label"
									for="form3Example1c">Patient Name</label>
							</div>
						</div>


						<div class="d-flex flex-row align-items-center mb-4">
							<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
							<div class="form-outline flex-fill mb-0">
								<input type="email" id="form3Example3c" class="form-control"
									name="email" required /> <label class="form-label"
									for="form3Example3c">Your Email</label>
							</div>
						</div>

						<div class="d-flex flex-row align-items-center mb-4">
							<i class="fa-solid fa-calendar-days fa-lg me-3 fa-fw"></i>
							<div class="form-outline flex-fill mb-0">
								<input type="date" id="form3Example3c" class="form-control"
									min=<%=java.time.LocalDate.now()%> name="date" required /> <label
									class="form-label" for="form3Example3c">Date</label>
							</div>
						</div>

						<div class="d-flex flex-row align-items-center mb-4">
							<i class="fa-solid fa-clock fa-lg me-3 fa-fw"></i>
							<div class="form-outline flex-fill mb-0">
								<input type="time" id="form3Example3c" class="form-control"
									min="10:00" max="20:00" name="time" required /> <label
									class="form-label" for="form3Example3c"></label>
							</div>
						</div>

						<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
							<button type="submit" class="btn btn-primary btn-lg alagclass">Book</button>
						</div>

					</form>
				</div>
			</div>
		</div>


	</div>
	<!-- Footer -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp" />
</body>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>


</html>