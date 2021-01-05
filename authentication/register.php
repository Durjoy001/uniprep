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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
</head>

<body>

	<div class="error-pagewrap">
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
                                <strong>Success!</strong> You should <a href="#" class="alert-link">read this message</a>.
                            </div>

                            <div class="alert alert-danger" id="failure" style="display:none">
                                <strong>Success!</strong> You should <a href="#" class="alert-link">read this message</a>.
                            </div>
                        </form>
                    </div>
                </div>
			</div>

		</div>   
    </div>

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