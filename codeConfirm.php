<?php
require('db_connection.php');

$code = $_POST['codeinp'];
if ($_SESSION['code'] == $code) {
    header("location:passwordconfirm.php");
}
?>