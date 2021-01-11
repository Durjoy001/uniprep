<?php

include "header.php";
include "../authentication/connection.php";

?>
<!-- hello -->
<br>
<footer id="sticky-footer" class="card text-white bg-primary mb-3" style="height: 1cm;">
  <div class="container text-center">
    <small style="color: white; text-align: center;" ><h5>Select Exam for Add and Edit Questions</h5></small>
  </div>
</footer>

<div class="breadcrumbs">
    <div class="col-sm-12">
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
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Exam Name</th>
                                    <th scope="col">Exam Time</th>
                                    <th scope="col">Select</th>
                                    
                                </tr>
                            </thead>
                            <tbody>

                                <?php
                                $count = 0;
                                $res = mysqli_query($db, "select * from exam_category");
                                while ($row = mysqli_fetch_array($res)) {
                                    $count = $count + 1;
                                ?>
                                    <tr>
                                        <th scope="row"><?php echo $count; ?></th>
                                        <td><?php echo $row["category"]; ?></td>
                                        <td><?php echo $row["exam_time"]; ?></td>
                                        <td><a class="btn btn-success" href="add_edit_questions.php?id=<?php echo $row["id"]; ?>">Select</a></td>
                                    </tr>
                                <?php
                                }

                                ?>

                            </tbody>
                        </table>

                    </div>
                </div>

            </div>



        </div>
    </div>
</div>


<br>

<footer id="sticky-footer" class="card text-white bg-primary mb-3" style="height: 1cm;">
  <div class="container text-center">
    <small style="color: white; text-align: center;" >Copyright &copy; UniPrep 2021</small>
  </div>
</footer>

<?php

include "footer.php";

?>