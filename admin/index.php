<?php

include "../authentication/connection.php";

?>


<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Register Now</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
</head>

<body>

	<div class="error-pagewrap">
		<div class="error-page-int">
			<div class="text-center custom-login">
				<h3>Admin Login</h3>

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
                                <button type="submit" name="submit1" class="btn btn-success loginbtn">Login</button>
                            </div>

                            <div class="alert alert-danger" id="failure" style="display:none">
                                <strong>Error!</strong> Wrong username  & password!
                            </div>

                           
                        </form>
                    </div>
                </div>
			</div>

		</div>   
    </div>
</body>

</html>

<?php
        if(isset($_POST["submit1"]))
        {
            $count=0;
            $username=mysqli_real_escape_string($db,$_POST["username"]);
            $password=mysqli_real_escape_string($db,$_POST["password"]);

            $res=mysqli_query($db,"select * from admin_login where username='$username' && password='$password'");
            $count=mysqli_num_rows($res);

            if($count==0)
            {
                ?>
                     <script type="text/javascript">
                        
                        document.getElementById("failure").style.display="block";
                    </script>
                <?php
            }
            else
            {
                ?>
                    <script type="text/javascript">
                        window.location="exam_category.php";
                    </script>
                <?php
            }
        }
    ?>