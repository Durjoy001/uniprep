<?php
session_start();
include "header.php";
include "../authentication/connection.php";

?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Dashboard</h1>
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

                    <?php
                $count=0;
                $res=mysqli_query($db,"select * from exam_results order by id desc");
                $count = mysqli_num_rows($res);

                if($count==0)
                {
                    ?>
                        <center>
                            <h1>No</h1>
                        </center>

                    <?php
                }
                else
                {

                    echo "<table class='table table-bordered'>";
                    echo "<tr>";
                    echo "<th>"; echo "username";      echo "</th>";
                    echo "<th>"; echo "exam_type";     echo "</th>";
                    echo "<th>"; echo "total_question";echo "</th>";
                    echo "<th>"; echo "correct_answer";echo "</th>";
                    echo "<th>"; echo "wrong_answer";  echo "</th>";
                    echo "<th>"; echo "exam_time";     echo "</th>";
                    echo "</tr>";
                    
                    while($row=mysqli_fetch_array($res))
                    {
                        echo "<tr>";
                        echo "<td>"; echo $row["username"]; echo "</td>";
                        echo "<td>"; echo $row["exam_type"]; echo "</td>";
                        echo "<td>"; echo $row["total_question"]; echo "</td>";
                        echo "<td>"; echo $row["correct_answer"];echo "</td>";
                        echo "<td>";echo $row["wrong_answer"];echo "</td>";
                        echo "<td>";echo $row["exam_time"];echo "</td>";
                        echo "</tr>";
                    }
                    echo "</table>";


                }

            ?>

                    </div>
                </div>

            </div>



        </div>
    </div>
</div>
<?php

include "footer.php";

?>