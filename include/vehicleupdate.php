<?php

include "dbh.inc.php";

if(isset($_POST['submit'])){

  $userid = $_POST['id'];
  $verification = $_POST['verifiy'];

  $sql = "UPDATE claim SET verification='$verification' WHERE id='$userid'";

  $result = mysqli_query($connection,$sql);
  header("Location:../admin.php");
}



 ?>
