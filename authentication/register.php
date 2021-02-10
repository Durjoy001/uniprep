<?php
 include "connection.php";
?>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Register Now</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
</head>

<body>

<nav class="navbar navbar-expand-md navbar-light bg-primary">
<a  class="navbar-brand" href="/uniprep"><h3 style="color:white;">UniPrep</h3></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" style="color: white;">
              Courses
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown"> 

              <a class="dropdown-item" href="course/class_1_12.html">Class 1-12</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="course/admissionTest.html">Admission Test</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="course/universityJob.html">University/Jobs</a>
            </div>
          </li>
      <li class="nav-item active">
        <a class="nav-link" style="color: white;" href="#">Study</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: white;" href="#">Skills</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: white;" href="#">Admission 2020</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: white;" href="login.php">Login/SignUp</a>
      </li>
    </ul>
  </div>
</nav>


<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Register Now</h5>
            <form class="form-signin" name="form1" method="post">
              <div class="form-label-group">
              <input type="text" name="username" class="form-control">
                <label >Username</label>
              </div>

              <div class="form-label-group">
                <input type="password" name="password" class="form-control" >
                <label >Password</label>
              </div>

              <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember password</label>
              </div>
              
              <button  type="submit" name="submit1" class="btn btn-lg btn-primary btn-block text-uppercase">Register</button>
              <hr class="my-4">
              <!--<button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i class="fab fa-google mr-2"></i> Register</button>-->
              <!--<a class="btn btn-lg btn-facebook btn-block text-uppercase" href="register.php">Register</a>->

              <!-<button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i>Register</button>-->
                <div class="alert alert-success" id="success" style="display:none">
                <strong>Success!</strong> Registration Complete!
                </div>

                <div class="alert alert-danger" id="failure" style="display:none">
                <strong>Error!</strong> User Already Registered!
                </div>
              <!--<div class="alert alert-danger" id="failure" style="display:none">
                     <strong>Error!</strong> Wrong username & password!
                </div>-->
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <footer id="sticky-footer" class="card text-white bg-primary mb-3" style="height: 1cm;">
  <div class="container text-center">
    <small style="color: white; text-align: center;" >Copyright &copy; UniPrep 2021</small>
  </div>
</footer>

<!------------------------------------------------------------------------------------>
	<!--<div class="error-pagewrap">
		<div class="error-page-int">
			<div class="text-center custom-login">
				<h3>Register Now</h3>

			</div>
			<div class="content-error">
				<div class="hpanel">
                    <div class="panel-body">
                        <form action="" name="form1" method="post">
                            <div class="row">
                                <div class="form-group col-lg-12">
                                    <label>Username</label>
                                    <input type="text" name="username" class="form-control">
                                </div>
                                <div class="form-group col-lg-12">
                                    <label>Password</label>
                                    <input type="password" name="password" class="form-control">
                                </div>
                              </div>
                            <div class="text-center">
                                <button type="submit" name="submit1" class="btn btn-success loginbtn">Register</button>
                            </div>

                            <div class="alert alert-success" id="success" style="display:none">
                                <strong>Success!</strong> Registration Complete!
                            </div>

                            <div class="alert alert-danger" id="failure" style="display:none">
                                <strong>Error!</strong> User Already Registered!
                            </div>
                        </form>
                    </div>
                </div>
			</div>

		</div>   
    </div>-------------------------------------------------------------------------------------------->

    <?php
        if(isset($_POST["submit1"]))
        {
            $count=0;
            $res=mysqli_query($db,"select * from registration where username='$_POST[username]'") or die(mysqli_error($db));
            $count=mysqli_num_rows($res);

            if($count>0)
            {
                ?>
                    <script type="text/javascript">
                        document.getElementById("success").style.display="none";
                        document.getElementById("failure").style.display="block";
                    </script>
                <?php
            }else{
                mysqli_query($db,"insert into registration values(NULL,'$_POST[username]','$_POST[password]')") or die(mysqli_error($db));
                mysqli_query($db,"insert into admin_login values(NULL,'$_POST[username]','$_POST[password]')") or die(mysqli_error($db));
                ?>
                    <script type="text/javascript">
                        document.getElementById("success").style.display="block";
                        document.getElementById("failure").style.display="none";
                    </script>
                <?php
            }
        }
    ?>
</body>

</html>