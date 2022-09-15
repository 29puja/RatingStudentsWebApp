<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <title>Add Assignment Category</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/signup.css"> 
   
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                 <!-- <a class="nav-link m-1" href="#">Home</a>-->
                </li>
                <li class="nav-item">
                  <!--<a class="nav-link m-1" href="#">Covid-19 Test</a>-->
                </li>
                <li class="nav-item">
                  <!--<a class="nav-link m-1" href="#">Oxygen Supplier</a>-->
                </li>
                <li class="nav-item">
                  <!--<a class="nav-link m-1" href="#">Vaccination</a>-->
                </li>
                <li class="nav-item">
                 <!-- <a class="nav-link m-1" href="#">About Us</a>-->
                </li>
              </ul>
            </div>
            <div class="mx-auto order-0">
              <a class="navbar-brand mx-auto" href="#"><span style="color: palevioletred; font-size: 30px; font-family: Arial, Helvetica, sans-serif;">Student</span> Rating Webapp</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                <span class="navbar-toggler-icon"></span>
              </button>
            </div>
            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
              <ul class="navbar-nav ms-auto"> 
                <li class="nav-item">
                  <!--<button type="button" class="btn btn-outline-danger  m-1 fw-bold">Sign in</button>-->
                </li>
                <li class="nav-item">
                  <!--<button type="button" class="btn btn-outline-danger  m-1 fw-bold">Log in</button>-->
                </li>
              </ul>
            </div>
          </nav>
    <div class="signup-form">
        <form id="cov" action="sv1.jsp" method="post" onsubmit="return myFunction()" />
            <!--<h5 style="text-align: center; margin-bottom: 1rem;font-size: 30px;"><span class="footer-logo">PORTAL</span> FOR DOCTORS</h5>-->
            <h2 style="text-align: center;">Add Assignment category</h2>
            <p  style="text-align: center;">Please fill in this form for add Assignment Category!</p>
            <hr>
            
			<div class="form-group">
                <div class="row"> 
                    <div class="col"> <b><p>Assignment Category</p><b><input type="text" class="form-control" id="fname" name="fname" placeholder="Assignment Category" required></div>
                    
                </div>        	
            </div>
           <div class="form-group">
                <div class="row"> 
                    <div class="col"> <b><p>Weight:-</p><b><input type="number" class="form-control" id="po" name="po" placeholder="Weight add:-1 to 100" required></div>
                     <p id="err" style="color:Red;"></p>
                </div>        	
            </div>
            <div class="form-group">
                <center>
				<input type="submit" class="btn btn-primary btn-lg" value="Add" onSubmit="myFunction()">
				</center>
            </div>
        </form>
        
    <script>
function myFunction() {
  var inpObj = document.getElementById("po");
 
  
  if(isNaN(inpObj.value))
  {
	  document.getElementById("err").innerHTML = "*Please enter a number 1-100";
  return false;
  }
 
}

</script>
    </body></html>
