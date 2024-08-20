<?php
// Database connection details
$servername = "localhost";
$username = "moiz";
$password = "moizairline69";
$database = "airline_db";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";
?>
