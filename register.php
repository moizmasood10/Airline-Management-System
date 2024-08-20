<?php
require('db_connection.php');

$inpFrom = $_POST['inpFrom'];
$inpTo = $_POST['inpTo'];
$departureDateInp = $_POST['departureDateInp'];
$classInp = $_POST['classInp'];
$adultInp = $_POST['adultInp'];
$childInp = $_POST['childInp'];
$passengers = $childInp + $adultInp;
$trackID = rand(100000000000000, 999999999999999);


$_SESSION['from'] = $inpFrom;
$_SESSION['to'] = $inpTo;
$_SESSION['date'] = $departureDateInp;
$_SESSION['seatClass'] = $classInp;
$_SESSION['passengerCount'] = $passengers;
$_SESSION['tracking'] = $trackID;
header("location:searchFlights.php");

?>