<?php

include "dbh.inc.php";

if(isset($_POST['submit'])){

  $userid = $_POST['id'];
  $reply = $_POST['reply'];

  $sql = "UPDATE  contactus SET reply='$reply' WHERE id='$userid'";

  $result = mysqli_query($connection,$sql);
  header("Location:../admin.php");
}



 ?>
