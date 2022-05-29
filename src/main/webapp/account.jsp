<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width" , initial-scale="1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>EasyPharmacy</title>
  <script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet" />
  <link rel="preconnect" href="https://fonts.googleapis.com"> 
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
  <link href="https://fonts.googleapis.com/css2?family=Rubik&display=swap" rel="stylesheet"> 
    <link rel="icon" href="images/taskbar.png" type="image/icon type"> 

<style>
.nav-link{
 		margin-left:20px;
 	}
 	body{
 		overflow-x:hidden !important;
 		font-family:calibri !important;
 		color:#000;
 	}

@media screen and (max-width:650px){
	.row{
	margin-left:6px !important;
	}
	footer{
		width:466px !important;
	}
	.logout{
		margin-left:-260px !important;
	}
}

.card{
	box-shadow:none !important;
}
.row .card{
	border:solid 1px #eee!important;

}
.row2 .btn-danger{
	background: #38A688 !important;
}
</style>

</head>
<body>
    <jsp:include page="navbar.jsp" />  
   <br><br><br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp" style="color:#000;">Home</a> ><a href="account.jsp"> Your Account</a>
   <div class="row" style="margin-left:210px;">
   
  <div class="col-sm-6 col-md-5">
    <div class="card" style="border:none !important;">
      <div class="card-body">
      
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-5">
    <div class="card" style="border:none !important;margin-left:400px;">
      <div class="card-body">
        <a href="signout.jsp" class="btn btn-danger logout" >Logout</a>
      </div>
    </div>
  </div>
</div>
   <div class="row row2" style="margin-left:210px;">
   
  <div class="col-sm-6 col-md-5">
    <div class="card">
      <div class="card-body">
      
        <h5 class="card-title" style="font-weight:700;">Account Info</h5>
        <p class="card-text">View your account details here.</p><br>
        <a href="account_info.jsp" class="btn btn-danger">Account Info</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-5">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title" style="font-weight:700;">Cart</h5>
        <p class="card-text">Go to Cart to see the products you have added to the EasyPharmacy cart.</p><br>
        <a href="cart.jsp" class="btn btn-danger">Your Orders</a>
      </div>
    </div>
  </div>
</div><br><br>
 <div class="row row2" style="margin-left:210px;">
  <div class="col-sm-6 col-md-5" >
    <div class="card" >
      <div class="card-body">
        <h5 class="card-title" style="font-weight:700;">Wallet</h5>
        <p class="card-text">You can check your wallet balance and transfer Money in Wallet from your Bank.</p>
                <a href="wallet.jsp" class="btn btn-danger">Wallet</a>
        
      </div>
    </div>
  </div>
  <div class="col-sm-6 col-md-5">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title" style="font-weight:700;">Change Your Account's Password</h5>
        <p class="card-text">If you want to change your password then click here.</p><br>
        <a href="change_acc_pass.jsp" class="btn btn-danger">Change Account's Password</a>
      </div>
    </div>
  </div>
</div><br><br><br><br><br><br>
    <jsp:include page="footer.jsp" />  


</body>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="js/app.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>

</html>