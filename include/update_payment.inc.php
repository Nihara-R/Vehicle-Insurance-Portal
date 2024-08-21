<?php

include "dbh.inc.php";

if(isset($_POST['submit'])){

  $userid = $_POST['id'];
  $accept = $_POST['accept'];

  $sql = "UPDATE  payment SET accept='$accept' WHERE id='$userid'";

  $result = mysqli_query($connection,$sql);
  header("Location:../admin.php");
}



 ?>
