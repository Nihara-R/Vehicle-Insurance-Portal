<?php
include "dbh.inc.php";

if(isset($_POST['submit'])){

  $id = $_POST['id'];

  $sql = "DELETE from contactus WHERE id='$id'";

  $result = mysqli_query($connection,$sql);
  header("Location:../admin.php");
}



 ?>
