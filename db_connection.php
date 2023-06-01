<?php
session_start();

$servername = "ls-ce1eb672c2222fb22bf65c82d0b2d086c7de3f40.cdb7mxbdnxoe.ap-southeast-1.rds.amazonaws.com";
$username = "dbmasteruser";
$password = "ecom$1234";
$database = "dbmaster";

// Create a connection
$conn = mysqli_connect($servername, $username, $password, $database);
?>
