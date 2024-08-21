<?php
include "dbh.inc.php";

if(isset($_POST['submit'])){

  $username = $_POST['username'];

  $sql = "DELETE from singup WHERE firstname='$username'";

  $result = mysqli_query($connection,$sql);
  header("Location:../admin.php");
}



 ?>
