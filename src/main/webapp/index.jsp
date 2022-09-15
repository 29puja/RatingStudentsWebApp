<html ><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <title>Student Rating</title>
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
        <form id="cov" action="" method="POST" enctype="multipart/form-data" onsubmit="return myFunction()" />
            <!--<h5 style="text-align: center; margin-bottom: 1rem;font-size: 30px;"><span class="footer-logo">PORTAL</span> FOR DOCTORS</h5>-->
            <h2 style="text-align: center;">Student Rating</h2>
            <p  style="text-align: center;">Please select options</p>
            <hr>
            <div class="form-group">
                <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="sc" name="sc">
                 <option value="Please Select Option">Please Select Option</option>
                 <option value="1">Add/Remove/Display Assignment Category</option>
                 <option value="2">Enroll/Remove/Display Students from Assignment</option>
                 <option value="3">Compute & display student average score per assignment category &overall  rating for assigned subject</option>
                 <option value="4">Compute & Display subject average score per assignment category &overall rating for assigned student</option>
                 
                 </select>
                 <p id="err2" style="color:Red;"></p>
            <div class="form-group">
                <center>
				<input type="submit" class="btn btn-primary btn-lg" value="Submit" onSubmit="myFunction()">
				</center>
            </div>
        </form>
        
    <script>
function myFunction() {
  var inpObj = document.getElementById("sc").value;
   
  
  
  
  if(inpObj == "Please Select Option")
  {
	  document.getElementById("err2").innerHTML = "*Please select Option";
      return false;
  }
  else if(inpObj=="1")
  {
	  document.getElementById("cov").action = "in.jsp";
  }
  else if(inpObj=="2")
  {
	  document.getElementById("cov").action = "crudAssign.jsp";
  }
  else if(inpObj=="3")
  {
	  document.getElementById("cov").action = "cpa.jsp";
  }
  else if(inpObj=="4")
  {
	  document.getElementById("cov").action = "cpp.jsp";
  }
  
  
  
}

</script>
    </body></html>
