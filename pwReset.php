<?php
require('db_connection.php');
$email = $_SESSION['mail'];
$pw = $_POST['passwordinp'];

$query1 = "update signup set PASSWORD='$pw' where EMAIL ='$email' ";
mysqli_query($conn, $query1);

header("location:login.php");
?>