<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width" , initial-scale="1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>EasyPharmacy</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet" />
  <script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
  <script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
  <script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <link rel="icon" href="images/taskbar.png" type="image/icon type"> 
  <link href="https://fonts.googleapis.com/css2?family=Maven+Pro:wght@400;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
<style>
	body{
		overflow-x:hidden;
		  scroll-behavior: smooth;
		  
		
	}
	.card{
		background:none !important;
	}
	.c,.c:hover{
		background:#38A688;
	}
	@media screen and (max-width:650px) {
		.card h1{
			font-size:30px !important;
		}
		.card h1 a{
			font-size:20px !important;
		}
	}
	

</style>
</head>
<body>
    <jsp:include page="navbar.jsp" /> <br><br><br><br><br> 

<div style="padding-left:2vw;margin-right:2vw;">
<div class="row">
  <div class="col-sm-3" >
    <div class="card">
      <div class="card-body">
        <h5 class="card-title "><b>Dr. Jinay Shah</b></h5>
        <p class="card-text">Pulmonologist</p>
        <a href="dr_appointment_1.jsp" class="btn btn-primary c">Book Appointment</a>
      </div>
    </div>
  </div>
   <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><b>Dr. Purav Shah</b></h5>
        <p class="card-text">Cardiologist</p>
        <a href="dr_appointment_2.jsp" class="btn btn-primary c">Book Appointment</a>
      </div>
    </div>
  </div>
   <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><b>Dr. Tirth Patel</b></h5>
        <p class="card-text">Dentist</p>
        <a href="dr_appointment_3.jsp" class="btn btn-primary c">Book Appointment</a>
      </div>
    </div>
  </div>
  <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><b>Dr. WAD</b></h5>
        <p class="card-text">Eye Specialist</p>
        <a href="dr_appointment_4.jsp" class="btn btn-primary c">Book Appointment</a>
      </div>
    </div>
  </div>
</div></div>
<br><br><br><br><br><br><br><br><br>
<h1 class="text-center" style="color:#000;font-weight:700;">How Online Doctor Consultation Works?</h1><br><br>
<div class="ask">
<div class="row">
  <div class="col-sm-6" >
    <div class="card" style="border:none;box-shadow:none;" data-aos="fade-up"  data-aos-duration="1000">
      <div class="card-body text-center" >
        <img src="images/doctor_step_1.jpg" style="width:50%;border-radius:50%;" class="text-right">
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card" style="border:none;box-shadow:none;" data-aos="fade-up"  data-aos-duration="1000"> 
      <div class="card-body text-center" style="margin-right:10vw;">
        <h1 class="card-title" style="margin-top:7vw;color:#38a688;font-size:80px"><b>01</b><a style="font-size:30px;color:#000;font-family:arial;font-weight:700;font-size:40px">&nbsp;&nbsp;&nbsp; Start a session </a></h1>
      </div>
    </div>
  </div>
</div><br><br>
<div class="row">
  <div class="col-sm-6 card2">
    <div class="card" style="border:none;box-shadow:none;" data-aos="fade-up"  data-aos-duration="1000"> 
      <div class="card-body" style="margin-left:4vw;">
        <h1 class="card-title" style="margin-top:7vw;color:#38a688;font-size:80px"><b>02</b><a style="font-size:30px;color:#000;font-family:arial;font-weight:700;font-size:35px">&nbsp;&nbsp;&nbsp; Tell doctor your problem </a></h1>
      </div>
    </div>
  </div>
  <div class="col-sm-6" >
    <div class="card" style="border:none;box-shadow:none;" data-aos="fade-up"  data-aos-duration="1000">
      <div class="card-body text-center" >
        <img src="images/ask_doctor.jpg" style="width:50%;border-radius:50%;" class="text-right">
      </div>
    </div>
  </div>

</div><br><br>
<div class="row">
  <div class="col-sm-6" >
    <div class="card" style="border:none;box-shadow:none;" data-aos="fade-up"  data-aos-duration="1000">
      <div class="card-body text-center" >
        <img src="images/connect_doctor.jpg" style="width:60%;border-radius:50%;" class="text-right">
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card" style="border:none;box-shadow:none;" data-aos="fade-up"  data-aos-duration="1000"> 
      <div class="card-body text-center" >
        <h1 class="card-title" style="margin-top:7vw;color:#38a688;font-size:80px"><b>03</b><a style="font-size:30px;color:#000;font-family:arial;font-weight:700;font-size:40px">&nbsp;&nbsp;&nbsp; Connect with doctor </a></h1>
      </div>
    </div>
  </div>
</div></div><br><br>


    <jsp:include page="footer.jsp" />  

</body>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  AOS.init();
</script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</html>