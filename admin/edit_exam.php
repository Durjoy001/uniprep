<?php

include "header.php";
include "../authentication/connection.php";
$id = $_GET["id"];
$res = mysqli_query($db, "select * from exam_category where id=$id");
while ($row = mysqli_fetch_array($res)) {
    $exam_category = $row["category"];
    $exam_time = $row["exam_time"];
}

?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1></h1>
            </div>
        </div>
    </div>
</div>

<div class="content mt-3">
    <div class="animated fadeIn">


        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <form name="form1" action="" method="post">
                        <div class="card-body">

                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header"><strong>Edit Exam</strong></div>
                                    <div class="card-body card-block">
                                        <div class="form-group"><label for="company" class=" form-control-label">New Exam Category</label><input type="text" name="examname" class="form-control" value="<?php echo $exam_category; ?>"></div>
                                        <div class="form-group"><label for="vat" class=" form-control-label">Exam Time</label><input type="text" name="examtime" class="form-control" value="<?php echo $exam_time; ?>"></div>
                                        <div class="form-group">
                                            <input type="submit" name="submit1" value="Update Exam" class="btn btn-success">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </form>
                </div>

            </div>



        </div>
    </div>
</div>


<?php

if (isset($_POST["submit1"])) {
    mysqli_query($db, "update exam_category set category='$_POST[examname]',exam_time='$_POST[examtime]' where id=$id")  or die(mysqli_error($db));
?>
    <script type="text/javascript">
        window.location="exam_category.php";
    </script>
<?php
}

?>

<?php

include "footer.php";

?>