
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin</title>
    <link rel="stylesheet" href="css/admin.css">
</head>
<body>

    <div id="toggle"></div>
    <div id="sidebar">
        <ul>
           <li><a href="index.php">home</a></li>
           <li onclick="toggle0()"><a href="#">User</a></li>
           <li onclick="toggle1()"><a href="#">Message</a></li>
           <li onclick="toggle2()"><a href="#">Payment</a></li>
           <li onclick="toggle3()"><a href="#">claim</a></li>
        </ul>
    </div>

    <script>
        const toggle = document.getElementById('toggle');
        const sidebar = document.getElementById('sidebar');

        document.onclick = function(e){
            if(e.target.id !== 'sidebar' && e.target.id !== 'toggle')
            {
                toggle.classList.remove('active');
                sidebar.classList.remove('active');
            }
        }
        toggle.onclick = function(){
            toggle.classList.toggle('active');
            sidebar.classList.toggle('active');
        }
        function toggle0(){
            var x = document.getElementById('user');

            if(x.style.display === "none"){
                x.style.display = "block";
            }
            else{
                x.style.display ="none";
            }
        }

        function toggle1(){
            var x = document.getElementById('sowdata');

            if(x.style.display === "none"){
                x.style.display = "block";
            }
            else{
                x.style.display ="none";
            }
        }
        function toggle2(){
            var x = document.getElementById('showpay');

            if(x.style.display === "none"){
                x.style.display = "block";
            }
            else{
                x.style.display ="none";
            }
        }

        function toggle3(){
            var x = document.getElementById('sowclaim');

            if(x.style.display === "none"){
                x.style.display = "block";
            }
            else{
                x.style.display ="none";
            }
        }

    </script>


    <div id="user">
        <table>
        <tr>
          <th>User ID</th>
          <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Contact No</th>

        </tr>

        <?php
        include 'include/dbh.inc.php';

        $sql = "SELECT userid,firstname,lastname,useremail,contactno FROM singup";
        $result = $connection->query($sql);

        if($result -> num_rows > 0)
        {
            while($row = $result-> fetch_assoc()){
               echo "<tr><td>". $row['userid']." </td><td>". $row['firstname']." </td><td>". $row['lastname']." </td><td>". $row['useremail']."</td><td>".$row["contactno"]."</td></tr>";
            }
            echo "</table>";
        }
        else{
            echo "0 result";
        }
        $connection-> close();
        ?>
        </table>
        <a href="delet.php"><button type="button" name="button">DELETE</button></a>

    </div>






<div id="sowdata">
    <table>
    <tr>
        <th>Contact ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Description</th>
        <th>Reply yse/no</th>
    </tr>

    <?php
    include 'include/dbh.inc.php';

    $sql = "SELECT id,name,email,description,reply FROM contactus";
    $result = $connection->query($sql);

    if($result -> num_rows > 0)
    {
        while($row = $result-> fetch_assoc()){
           echo "<tr><td>". $row['id']." </td><td>". $row['name']." </td><td>". $row['email']."</td><td>".$row["description"]."</td><td>".$row["reply"]."</td></tr>";
        }
        echo "</table>";
    }
    else{
        echo "0 result";
    }
    $connection-> close();
    ?>
    </table>
<a href="delete_contact.php"><button type="button" name="button">DELETE</button></a>
<a href="updatecontact.php"><button type="button" name="button" class="update">UPDATE</button></a>
</div>



<div id="showpay">
    <table>
    <tr>
      <th>Payment ID</th>
        <th>Full Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>City</th>
        <th>State</th>
        <th>Zip-Code</th>
        <th>Type of card</th>
        <th>Name on Card</th>
        <th>Accept pay</th>

    </tr>

    <?php
    include 'include/dbh.inc.php';

    $sql = "SELECT id,fullname,email,address,city,state,zipid,card,cardname,accept FROM payment";
    $result = $connection->query($sql);

    if($result -> num_rows > 0)
    {
        while($row = $result-> fetch_assoc()){
           echo "<tr><td>". $row['id']." </td><td>". $row['fullname']." </td><td>". $row['email']."</td><td>".$row["address"]."</td><td>".$row["city"]."</td><td>".$row["state"]."</td><td>".$row["zipid"]."</td><td>".$row["card"]."</td><td>".$row["cardname"]."</td><td>".$row["accept"]."</td></tr>";
        }
        echo "</table>";
    }
    else{
        echo "0 result";
    }
    $connection-> close();
    ?>
    </table>
<a href="delete_payment.php"><button type="button" name="button">DELETE</button></a>
<a href="paymentupdate.php"><button type="button" name="button" class="update">UPDATE</button></a>
</div>


<div id="sowclaim">
    <table>
    <tr>
        <th>ID</th>
        <th>Vehicle Number</th>
        <th>Policyholder First Name</th>
        <th>Policyholder Last Name</th>
        <th>Street Address</th>
        <th>Street Address Line 2</th>
        <th>City</th>
        <th>Region</th>
        <th>postal ID</th>
        <th>Email</th>
        <th>Phone No</th>
        <th>Date</th>
        <th>description</th>
        <th>Verification</th>
    </tr>

    <?php
    include 'include/dbh.inc.php';

    $sql = "SELECT id,vehicleNo,policyholderFnme,policyholderLname,streetAddress,streetAddressLine2,city,region,postalID,Email,phoneNo,verification,Date,discription FROM claim";
    $result = $connection->query($sql);

    if($result -> num_rows > 0)
    {
        while($row = $result-> fetch_assoc()){
           echo "<tr><td>". $row['id']." </td><td>". $row['vehicleNo']." </td><td>". $row['policyholderFnme']."</td><td>". $row['policyholderLname']."</td><td>". $row['streetAddress']."</td><td>". $row['streetAddressLine2']."</td><td>". $row['city']."</td><td>". $row['region']."</td><td>". $row['postalID']."</td><td>". $row['Email']."</td><td>". $row['phoneNo']."</td><td>". $row['Date']."</td><td>". $row['discription']."</td><td>".$row["verification"]."</td></tr>";
        }
        echo "</table>";
    }
    else{
        echo "0 result";
    }
    $connection-> close();
    ?>
    </table>
<a href="delete_claim.php"><button type="button" name="button">DELETE</button></a>
<a href="vehicleupdate.php"><button type="button" name="button" class="update">UPDATE</button></a>
</div>

</body>
</html>
