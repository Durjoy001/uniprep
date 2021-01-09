<?php

include "../authentication/connection.php";
$id = $_GET["id"];
$ids = $_GET["ids"];
mysqli_query($db, "delete from questions where id=$id");

?>

<script type="text/javascript">
    window.location = "add_edit_questions.php?id=<?php echo $ids ?>";
</script>