<?php

include "header.php";
include "../authentication/connection.php";
$id = $_GET["id"];
$ids=$_GET["ids"];
$question="";
$option1="";
$option2="";
$option3="";
$option4="";
$answer="";

$res = mysqli_query($db,"select * from questions where id=$id");
while($row=mysqli_fetch_array($res))
{
    $question = $row["question"];
    $option1 = $row["option1"];
    $option2 = $row["option2"];
    $option3 = $row["option3"];
    $option4 = $row["option4"];
    $answer = $row["answer"];
}
?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Update Question</h1>
            </div>
        </div>
    </div>
</div>

<div class="content mt-3">
    <div class="animated fadeIn">


        <div class="row">
            <div class="col-lg-12">
                <div class="card">

                    <div class="card-body">
                        <div class="col-lg-6">
                            <form name="form1" action="" method="post">
                                <div class="card">
                                    <div class="card-header"><strong>Update</strong></div>
                                    <div class="card-body card-block">
                                        <div class="form-group"><label for="company" class=" form-control-label">Question</label><input type="text" name="question" class="form-control" value="<?php echo $question;?>"></div>
                                        <div class="form-group"><label for="company" class=" form-control-label">First Option</label><input type="text" name="option1" class="form-control" value="<?php echo $option1;?>"></div>
                                        <div class="form-group"><label for="company" class=" form-control-label">Second Option</label><input type="text" name="option2" class="form-control" value="<?php echo $option2;?>"></div>
                                        <div class="form-group"><label for="company" class=" form-control-label">Third Option</label><input type="text" name="option3" class="form-control" value="<?php echo $option3;?>"></div>
                                        <div class="form-group"><label for="company" class=" form-control-label">Fourth Option</label><input type="text" name="option4" class="form-control" value="<?php echo $option4;?>"></div>
                                        <div class="form-group"><label for="company" class=" form-control-label">Answer</label><input type="text" name="answer" class="form-control" value="<?php echo $answer;?>"></div>
                                        <div class="form-group">
                                            <input type="submit" name="submit1" value="Submit" class="btn btn-success">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>



        </div>
    </div>
</div>
<?php

if(isset($_POST["submit1"]))
{
    mysqli_query($db,"update questions set question='$_POST[question]',option1='$_POST[option1]',option2='$_POST[option2]',option3='$_POST[option3]',option4='$_POST[option4]',answer='$_POST[answer]' where id=$id");

    ?>

        <script type="text/javascript">
            window.location="add_edit_questions.php?id=<?php echo $ids ?>";
        </script>

    <?php
}

?>

<?php

include "footer.php";

?>