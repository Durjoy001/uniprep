<?php
// <!-- hello -->
include "header.php";
include "../authentication/connection.php";
$exam_category = '';
$id = $_GET["id"];
$res = mysqli_query($db, "select * from exam_category where id=$id");
while ($row = mysqli_fetch_array($res)) {
    $exam_category = $row["category"];
}

?>

<br>
<footer id="sticky-footer" class="card text-white bg-primary mb-3" style="height: 1cm;">
  <div class="container text-center">
    <small style="color: white; text-align: center;" ><h5>Add New Questions</h5></small>
  </div>
</footer>

<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                
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

                        <div class="col-lg-12">
                            <form name="form1" action="" method="post">
                                <div class="card">
                                    <div class="card-header"><strong>Add New Questions</strong></div>
                                    <div class="card-body card-block">
                                        <div class="form-group"><label for="company" class=" form-control-label">Question</label><input type="text" name="question" class="form-control"></div>
                                        <div class="form-group"><label for="company" class=" form-control-label">First Option:</label><input type="text" name="option1" class="form-control"></div>
                                        <div class="form-group"><label for="company" class=" form-control-label">Second Option:</label><input type="text" name="option2" class="form-control"></div>
                                        <div class="form-group"><label for="company" class=" form-control-label">Third Option:</label><input type="text" name="option3" class="form-control"></div>
                                        <div class="form-group"><label for="company" class=" form-control-label">Fourth Option:</label><input type="text" name="option4" class="form-control"></div>
                                        <div class="form-group"><label for="company" class=" form-control-label">Answer</label><input type="text" name="answer" class="form-control"></div>
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

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-bordered">
                            <tr>
                                
                                <th>No</th>
                                <th>Questions</th>
                                <th>Option1</th>
                                <th>Option2</th>
                                <th>Option3</th>
                                <th>Option4</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>

                            <?php

                            $res = mysqli_query($db, "select * from questions where category='$exam_category' order by question_no asc");

                            while ($row = mysqli_fetch_array($res)) {
                                echo "<tr>";
                                echo "<td>";
                                echo $row["question_no"];
                                echo "</td>";
                                echo "<td>";
                                echo $row["question"];
                                echo "</td>";
                                echo "<td>";
                                echo $row["option1"];
                                echo "</td>";
                                echo "<td>";
                                echo $row["option2"];
                                echo "</td>";
                                echo "<td>";
                                echo $row["option3"];
                                echo "</td>";
                                echo "<td>";
                                echo $row["option4"];
                                echo "</td>";
                                echo "<td>";
                                ?>
                                    <a class="btn btn-success" href="edit_option.php?id=<?php echo $row["id"];?>&ids=<?php echo $id; ?>">Edit</a>
                                <?php
                                echo "</td>";
                                echo "<td>";
                                ?>
                                    <a class="btn btn-danger" href="delete_option.php?id=<?php echo $row["id"];?>&ids=<?php echo $id; ?>">Delete</a>
                                <?php
                                echo "</td>";
                                echo "</tr>";
                            }


                            ?>
                        </table>

                    </div>
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

<?php

if (isset($_POST["submit1"])) {
    $loop = 0;
    $count = 0;

    $res = mysqli_query($db, "select * from questions where category='$exam_category' order by id asc") or die(mysqli_error($db));
    $count = mysqli_num_rows($res);
    if ($count == 0) {
    } else {
        while ($row = mysqli_fetch_array($res)) {
            $loop = $loop + 1;
            mysqli_query($db, "update questions set question_no='$loop' where id=$row[id]");
        }
    }
    $loop = $loop + 1;
    mysqli_query($db, "insert into questions values(NULL,'$loop','$_POST[question]','$_POST[option1]','$_POST[option2]','$_POST[option3]','$_POST[option4]','$_POST[answer]','$exam_category')") or die(mysqli_error($db));

?>

    <script type="text/javascript">
        alert("question added successfully");
        window.location.href = window.location.href;
    </script>

<?php
}

?>
<?php

include "footer.php";

?>