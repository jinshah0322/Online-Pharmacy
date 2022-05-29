<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <link rel="icon" href="images/taskbar.png" type="image/icon type"> 
<script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css"></head>

 <link href="https://fonts.googleapis.com/css2?family=Maven+Pro:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://apis.google.com/js/platform.js" async defer></script>

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>

<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="30023213350-5ppeeggi1fqe8lqn9v8nrn02o5i0rm2j.apps.googleusercontent.com">
    
		   
<body>
 <style>
 	.card-group .btn{
 		text-decoration:none;
 	}
 	.card-group .btn:hover{
 		background:#3bb896;
 	}
 .card-title,.card h2,.card h4{
 		font-family:calibri !important;
 	}
 	body{
 		font-family:calibri;
 	}
 </style>
  <!--NAVBAR-->
    <jsp:include page="navbar.jsp" />  


<br><br>
<!--Slider-->

<!-- Carousel wrapper -->
<div id="carouselBasicExample" class="carousel slide carousel-fade" data-mdb-ride="carousel">
  <!-- Indicators -->
  <div class="carousel-indicators">
    <button
      type="button"
      data-mdb-target="#carouselBasicExample"
      data-mdb-slide-to="0"
      class="active"
      aria-current="true"
      aria-label="Slide 1" style="border-radius:100%;width:9px;height:9px;"
    ></button>
    <button
      type="button"
      data-mdb-target="#carouselBasicExample"
      data-mdb-slide-to="1"
      aria-label="Slide 2" style="border-radius:100%;width:9px;height:9px;"
    ></button>
    <button
      type="button"
      data-mdb-target="#carouselBasicExample"
      data-mdb-slide-to="2"
      aria-label="Slide 3" style="border-radius:100%;width:9px;height:9px;"
    ></button>
  </div>

  <!-- Inner -->
  <div class="carousel-inner">
    <!-- Single item -->
    <div class="carousel-item active">
      <img src="images/slider_new_9.jpg" class="d-block w-100" alt="Sunset Over the City"/>
      
    </div>

    <!-- Single item -->
    <div class="carousel-item">
      <img src="images/banner_latest_4.jpg" class="d-block w-100" alt="Canyon at Nigh"/>
     
    </div>

    <!-- Single item -->
    <div class="carousel-item">
      <img src="images/slider_4.jpg" class="d-block w-100" alt="Cliff Above a Stormy Sea"/>
      
    </div>
  </div>
  <!-- Inner -->

  <!-- Controls -->
  <button class="carousel-control-prev" type="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="prev" style="color:#000;">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-mdb-target="#carouselBasicExample" data-mdb-slide="next" style="color:#000;">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!-- Carousel wrapper --><br><br><br>
<!--Cards-->
<div class="card-group">
  <div class="card card_1" style="border-radius: 20px;height: 180px;">
    <div class="card1">
    <h2 style="color: #000;margin-left: 20px;margin-top: 40px;font-size:25px !important;">Order Medicines</h2>
    </div> 
    <img class="card-img-top img1" src="images/order_medicine.png" alt="Card image cap" style="   width: 120px !important;height: 120px !important;margin-top: -80px !important;">
    <div class="card-body">
      <a href="products.jsp"><button type="button" class="btn btn-primary btn-1 " style="font-size:12px !important;">Order Now</button></a>
    </div>
  </div>
  <div class="card card_2" style="border-radius: 20px;height: 180px;margin-left: 20px ;">
    <div class="card3">
    <h4 style="color: #000;margin-left: 20px;margin-top: 40px;font-size:25px !important;">Doctor's Appointment</h4>
    </div>
    <img class="card-img-top img3" src="images/doctor.png" alt="Card image cap">
    <div class="card-body">
      <a href="dr_regi.jsp"><button type="button" class="btn btn-primary" style="font-size:12px !important;">Book Now</button></a>
    </div>
  </div>
  <div class="card card_3" style="border-radius: 20px;height: 180px;margin-left: 20px ;">
    <div class="card3">
    <h2 style="color: #000 ;margin-left: 20px;margin-top: 40px;font-size:25px !important;">Wallet</h2>
    </div>
    <img class="card-img-top img2" src="images/wallet.png" alt="Card image cap" >
    <div class="card-body">
      <a href="wallet.jsp"><button type="button" class="btn btn-primary" style="font-size:12px !important;">Go To Wallet</button></a>
    </div>
  </div>



</div><br><br><br><br>

<!--Slider2-->
<h1 style="text-align:center;letter-spacing: 1px;color: #000;font-family:calibri;font-size:30px;font-weight:700;">&nbsp;&nbsp;&nbsp;&nbsp;VIEW PRODUCTS</h1><br>

      <div class="card-group five-banner" style="outline: none !important;font-family:calibri;" >
       <div class="card border-0 one" style="box-shadow: none;margin-left: 100px;"><br><br> <a href="products.jsp">
          <img class="card-img-top" src="images/azithromycin.webp" alt="Card image cap" style="width:200px;height:140px;">
          <div class="card-body">
            <h4 class="card-title" style="color: #000;font-famiky:calibri">Azythromycine </h4>
          </div></a>
        </div>
        <div class="card" style="box-shadow: none;"><a href="products.jsp">
          <img class="card-img-top" src="images/dollo.jpeg" alt="Card image cap" style="width:150px;height:200px;">
          <div class="card-body">
                     <h4 class="card-title" style="color: #000;">Dollo 650</h4>
          </div></a>
        </div>
        <div class="card" style="box-shadow: none;"><a href="products.jsp">
          <img class="card-img-top" src="images/products/crocin_advance.webp" alt="Card image cap" style="width:150px;height:200px;">
          <div class="card-body">
            <h4 class="card-title" style="color: #000;">Crocin</h4>
          </div></a>
        </div>
        <div class="card" style="box-shadow: none;"><a href="products.jsp">
          <img class="card-img-top" src="images/products/calpol_650.webp" alt="Card image cap" style="width:200px;height:200px;">
          <div class="card-body">
            <h4 class="card-title" style="color: #000;">Calpol</h4>
          </div></a>
        </div>
      </div>      
      <div class="card-group five-banner" style="outline: none !important;font-family:calibri;">
        <div class="card border-0" style="box-shadow: none;background: none;margin-left: 100px;"><a href="products.jsp">
          <img class="card-img-top" src="images/healthcare/face_mask.webp" alt="Card image cap" style="width:150px;height:150px;">
          <div class="card-body">
            <h4 class="card-title" style="color: #000;">Face Mask</h4>
          </div></a>
        </div>
        <div class="card" style="box-shadow: none;background: none;"><a href="products.jsp">
          <img class="card-img-top" src="images/healthcare/hair_mask.webp" alt="Card image cap" style="width:150px;height:150px;">
          <div class="card-body">
                     <h4 class="card-title" style="color: #000;">Hair Mask</h4>
          </div></a>
        </div>
        <div class="card" style="box-shadow: none;background: none;"><a href="products.jsp">
          <img class="card-img-top" src="images/healthcare/hair_oil.webp" alt="Card image cap" style="width:120px;height:150px;">
          <div class="card-body">
            <h4 class="card-title" style="color: #000;">Hair Oil</h4>
          </div></a>
        </div>
        <div class="card" style="box-shadow: none;background: none;"><a href="products.jsp">
          <img class="card-img-top" src="images/healthcare/toothpaste.webp" alt="Card image cap" style="width:280px;height:100px;">
          <div class="card-body">
            <h4 class="card-title" style="color: #000;">Toothpaste</h4>
          </div></a>
        </div>

</div>

  
<!-- Footer -->

    <jsp:include page="footer.jsp" />  


</body>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
<script>
</html>