<?php
    require('db_connection.php');    

    $emailAdd = $_POST['emailinp'];
    $password = $_POST['passwordinp'];

    $s  = "select * from admin where ADMIN_EMAIL =  '$emailAdd' && ADMIN_PASSWORD = '$password' ";
    $result = mysqli_query($conn,$s);
    $num = mysqli_num_rows($result);

    if ($num==1){
        header('location:adminPage.php');
        $_SESSION['adminMail'] = $emailAdd;             
    }
    else{
        header('location:adminLogin.php');
        alert("Invalid email or Password");  
    }
?>  
