<?php
require('db_connection.php');

$date = $_SESSION['date'];
$ID = $_GET['depID'];

$query1 = "select * from flightdate where flightsDetailsId='$ID' and departureDate = '$date' ";
$result = mysqli_query($conn, $query1);
$row = mysqli_fetch_assoc($result);
$setDetailsId = $row['detailsId'];
$trackId = $_SESSION['tracking'];
$sclass = $_SESSION['seatClass'];
$noOfPassengers = $_SESSION['passengerCount'];

$insquery2 = "insert into bookedflights(trackingId,detailsId, class, noOfPassengers) VALUES ('$trackId','$setDetailsId','$sclass','$noOfPassengers')";
mysqli_query($conn, $insquery2);

$wq = "select * from flightsdetails WHERE flightsDetailsId = '$ID'";
$rest = mysqli_query($conn, $wq);
$row1 = mysqli_fetch_assoc($rest);

$_SESSION['depFrom'] = $row1['departure'];
$_SESSION['depTo'] = $row1['destination'];
$_SESSION['flyName'] = $row1['flightName'];
$_SESSION['depDate1'] = $date;
$_SESSION['depTime1'] = $row1['departureTime'];
$_SESSION['detailsID'] = $setDetailsId;

header('location:seatSelection.php');
?>