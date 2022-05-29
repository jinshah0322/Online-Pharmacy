<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width" , initial-scale="1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>EasyPharmacy</title>
  <script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="https://use.fontawesome.com/e8101d6bd2.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/contact.css">
  <script src="https://kit.fontawesome.com/36a2be57d1.js" crossorigin="anonymous"></script>
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <link rel="icon" href="images/taskbar.png" type="image/icon type"> 
  <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Maven+Pro:wght@400;700&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Rubik&display=swap" rel="stylesheet">

</head>

<body>
    <jsp:include page="navbar.jsp" />  
  
  <br><br><br>  <br><br><br>

</div>

  <h1 style="color:#fff;font-family: 'Varela Round',sans-serif;text-align: center;font-weight: 700;">Contact-Us</h1><br><br><br><br><br><br><br><br>
  <!--Feedback Form-->
  <div class="site-section site-section-sm""></div>
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-8 mb-5">
          <h1 class="heading contact">Reach-Us</h1><hr class="line"><br>
          <form name="form">
            <div class="form-group col-md-8">
              <label>Name* </label>
              <input type="name" class="form-control" name="name">
              
            </div>
            <div class="form-group col-md-8">
              <label>E-mail*</label>
              <input type="email" class="form-control" name="email">
            </div>
  
            <div class="form-group col-md-8">
              <label>How Can We Help You?*</label>
              <textarea class="form-control" name="text"></textarea>
            </div>
  
           
            &nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-info">Submit</button>
            <button type="reset" class="btn btn-danger">Reset</button>
          </form>
        </div>
  
  <!--Contact-information-->
        <div class="col-md-4 reachus" style="margin-left: -7% !important;">
          <div class="mb-3 bg-white">
            <h1 class="heading reach_us">Contact</h1><hr class="line_1"><br>
            <div style="margin-left: 11%;">
            <p>Phone:<br>
            <b>1234567890</b></p>
  
            <p>Email Address: <br>
            <b>support.123@gmail.com </b></p>
            </div>
  <br>
          </div>
        </div>
      </div>
    </div>
  </div>

  
 <!-- Footer -->
  <jsp:include page="footer.jsp" />  

</body>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>
</html>