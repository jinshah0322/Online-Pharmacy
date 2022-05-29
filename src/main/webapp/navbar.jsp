<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>EasyPharmacy</title>
<style>
.nav-link {
	margin-left: 20px;
	font-size: 17px;
}

.nav-link:hover {
	color: #2d8b72 !important;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}
</style>
</head>
<body>

	<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarTogglerDemo01"
				aria-controls="navbarTogglerDemo01" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>
			<a class="navbar-brand" href="index.jsp"
				style="letter-spacing: 0px; margin-left: 100px !important;"><b>EasyPharmacy</b></a>


			<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">

				</ul>
				<a class="nav-link" href="index.jsp"
					style="letter-spacing: 1px; color: #000;"><b>Home</b></a> <a
					class="nav-link" href="products.jsp"
					style="letter-spacing: 1px; color: #000;"><b>Products</b></a>
				<div class="dropdown">
					<button class="btn dropdown-toggle nav-link" type="button"
						id="dropdownMenuButton" data-mdb-toggle="dropdown"
						aria-expanded="false"
						style="box-shadow: none !important; font-size: 17px; margin-left: 10px; color: #000; letter-spacing: 1px; text-transform: capitalize;">
						<%
						String username = (String) session.getAttribute("Username");
						%>
						<b><%=username%></b>
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a class="dropdown-item" href="account.jsp">Your
								Account</a></li>
						<li><a class="dropdown-item" href="wallet.jsp">Your
								Wallet</a></li>
						<li><a class="dropdown-item" href="signout.jsp">Sign Out</a></li>
					</ul>
				</div>

				<a class="nav-link" href="cart.jsp"><i
					class="fas fa-shopping-cart" style="color: #000;"></i></a>
			</div>
		</div>
	</nav>
	<!-- Navbar -->
	<!-- Navbar -->
</body>

</html>