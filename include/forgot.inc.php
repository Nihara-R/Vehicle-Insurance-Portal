<?php

include "dbh.inc.php";

if(isset($_POST['submit'])){

  $username = $_POST['username'];
  $new_password = $_POST['new_password'];
  $conpassword = $_POST['conpassword'];
  $hashedPwd = password_hash($new_password,PASSWORD_DEFAULT);

  $sql = "UPDATE  singup SET upassword='$hashedPwd' WHERE firstname='$username'";

  $result = mysqli_query($connection,$sql);
  header("Location:../sign_in.php");
}



 ?>
