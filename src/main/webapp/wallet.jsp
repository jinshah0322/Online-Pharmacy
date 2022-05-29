<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<link rel="stylesheet" type="text/css"
	href="src/main/webapp/css/style.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rubik&display=swap"
	rel="stylesheet">
<link rel="icon" href="images/taskbar.png" type="image/icon type">
<link
	href="https://fonts.googleapis.com/css2?family=Maven+Pro:wght@400&display=swap"
	rel="stylesheet">



<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>

</head>
<style>
div {
	background: none !important;
	box-shadow: none !important;
}

body {
	overflow-x: hidden !important;
}

@media screen and (max-width:650px) {
	.wallet {
		margin-top: 80px !important;
	}
}

.loader {
	border: 16px solid #f3f3f3;
	border-radius: 50%;
	border-top: 16px solid #3498db;
	width: 120px;
	height: 120px;
	-webkit-animation: spin 2s linear infinite; /* Safari */
	animation: spin 2s linear infinite;
}
</style>
</head>
<body>



	<!--NAVBAR-->
	<jsp:include page="navbar.jsp" />
	<br>
	<br>
	<br>
	<br>

	<div class="row">
		<div class="col-sm-6">
			<div class="card">
				<div class="card-body">
					<h3 style="color: #000; text-align: center; margin-top: -80px;">
						<br> <br> <br>Transfer Money
					</h3>
					<br> <br>

					<form class="mx-1 mx-md-4" action="wallet_logic.jsp" method="post"
						style="background: none !important; color: #000 !important;">

						<div class="d-flex flex-row align-items-center mb-4">
							<i class="fas fa-user fa-lg me-3 fa-fw"></i>
							<div class="form-outline flex-fill mb-0">
								<input type="text" id="form3Example1c" class="form-control"
									name="Name" /> <label class="form-label" for="form3Example1c">Your
									Name</label>
							</div>
						</div>

						<div class="d-flex flex-row align-items-center mb-4">
							<i class="fas fa-solid fa-file-invoice fa-lg me-3 fa-fw"></i>
							<div class="form-outline flex-fill mb-0">
								<input type="number" id="form3Example3c" class="form-control"
									name="Acc" /> <label class="form-label" for="form3Example3c">Your
									Account Number</label>
							</div>
						</div>

						<div class="d-flex flex-row align-items-center mb-4">
							<i class="fas fa-key fa-file-invoice fa-lg me-3 fa-fw"></i>
							<div class="form-outline flex-fill mb-0">
								<input type="password" id="form3Example3c" class="form-control"
									name="pc" /> <label class="form-label" for="form3Example3c">Your
									Pass Code</label>
							</div>
						</div>


						<i class="fas fa-bank"
							style="font-size: 25px; padding-bottom: -10px;"></i> <select
							class="select form-control" name="bank"
							style="margin-left: 42px; margin-top: -37px; width: 94%;">
							<option value="1" disabled>Bank</option>
							<option value="SBI">SBI</option>
							<option value="HDFC">HDFC</option>
							<option value="AXIS">AXIS</option>
						</select><br>

						<div class="d-flex flex-row align-items-center mb-4">
							<i class="fas fa-solid fa-money fa-lg me-3 fa-fw"></i> <i
								class=""></i>
							<div class="form-outline flex-fill mb-0">
								<input type="number" id="form3Example1c" class="form-control"
									name="amount" /> <label class="form-label"
									for="form3Example1c">Ammount</label>
							</div>
						</div>



						<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4"
							style="margin-top: 90px;">
							<button type="submit" class="btn"
								style="background: #38A688; color: #fff">Transfer</button>
						</div>

					</form>
				</div>
			</div>
		</div>
		<div class="col-sm-6 wallet">
			<div class="card">
				<div class="card-body">

					<h3 class="card-title"
						style="color: #000 !important; text-align: center;">Wallet</h3>
					<%
					if ((String) session.getAttribute("amount") == null) {
						session.setAttribute("amount", "0");
					}
					String n = (String) session.getAttribute("amount");
					session.setAttribute("Amount", n);

					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "root");
					Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
					ResultSet rs = stmt.executeQuery("select * from ammount_wallet");
					int count = 0;
					while (rs.next()) {
						if (((String) session.getAttribute("Username")).equals(rs.getString("Name"))) {
							String N = rs.getString("Ammount");
							out.print(
							"<h4 style=\"font-weight:700;text-align:center;margin-top:30px;\">Your Wallet:<a style=\"text-align:center;font-weight:400;font-family:arial;\">&#8377;"
									+ N + "</a></h4>");
							session.setAttribute("amount", N);
							n = (String) session.getAttribute("amount");
							session.setAttribute("Amount", n);
							count += 1;
							break;
						}
					}
					if (count == 0) {
						out.print(
						"<h4 style=\"font-weight:700;text-align:center;margin-top:30px;\">Your Wallet:<a style=\"text-align:center;font-weight:400;font-family:arial;\">&#8377;0</a></h4>");
					}
					%>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
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