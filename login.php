<?php
    session_start();

    $cleardb_url = parse_url(getenv("CLEARDB_DATABASE_URL"));
    $cleardb_server = $cleardb_url["host"];
    $cleardb_username = $cleardb_url["user"];
    $cleardb_password = $cleardb_url["pass"];
    $cleardb_db = substr($cleardb_url["path"],1);
    $active_group = 'default';
    $query_builder = TRUE;
    // Connect to DB
    $conn = mysqli_connect($cleardb_server, $cleardb_username, $cleardb_password, $cleardb_db);

    $emailAdd = "";
    $password = "";
    $err = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $_SESSION['start_time'] = time();
        $emailAdd = test_input($_POST['emailinp']);
        $password = test_input($_POST['passwordinp']);
        $s  = "select * from signup where pEmail =  '$emailAdd' && pPassword = '$password' ";
        $result = mysqli_query($conn,$s);
        $num = mysqli_num_rows($result);

        if ($num==1){
            header('location:homepage.php');
            $_SESSION['mail'] = $emailAdd;             
        }
        else{
            $err = "*Invalid Username or password";         
        }
    }
function test_input($data) 
{
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Log In - Primero Avionics </title>
    <link rel="icon" href="AIRLINE-LOGO2.png" type="image/gif">
    <link rel="stylesheet" href="login.css">
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="masterkey.css">
</head>
<body>
    <header class="main">
        <div class="row">           
            <nav>
            <input type="checkbox" id="threebar">
                <label for="threebar" class="checklabel">
                    <i id="bars" class="fa fa-bars"></i>
                    <i id="cross" class="fa fa-times"></i>
                </label>
                <ul>
                    <li><i class="fa fa-home"></i><a href="homepage.html"> About Us </a></li>
                    <li><i class="fa fa-newspaper-o"></i><a onclick="alert('Please login first');"> Book </a></li>
                    <li><i class="fa fa-tasks"></i><a onclick="alert('Please login first');"> Manage </a></li>
                    <li><i class="fa fa-address-book"></i><a href="contact.php"> Contact Us</a></li>
                    <li><i class="fa fa-user-circle-o"></i><a class="sign" href="signup.php"> Signup | Login </a></li>
                </ul>
            </nav>
        </div>
    </header>
    
    <div class="heading">
        <div class="namelogo">
            <img class="logo" src="AIRLINE-LOGO2.png">
            <h1 class="name"> Primero </h1>
            <br><br>
            <h1 class="name2"> Avionics </h1>
        </div>
    </div>
    <div class="container">
        <div class="btn-box">
            <button id="btn1"><i class="fa fa-user"></i> Login </button>
            <button id="btn2"> </button>       
        </div> 
    <form id="form" class="form" method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
    <h3> Enter Email & Password to login</h3>
    <div class="one">
        <div class="two">
            <div class="three" onclick="openDivemail()">
                <label id="emaillbl"> Email Address </label>
                <input type="text" id="emailinp" name="emailinp">
                <small> * </small>
            </div>
        </div>
        <div class="two">
            <div class="three" onclick="openDivpassword()">
                <label  id="passwordlbl"> Password </label> <br>
                <input id="passwordinp" name="passwordinp" type="password">
                <small> * </small>
            </div>
        </div>
    </div>
    <small class="err"><?php echo $err ?></small>
    <div class="one">
        <div class="btn-submit" id="submit">
            <button type="submit" id= "crtAcc" onclick="show()"> Login </button>
        </div>
    </div> 
    <div class="forget">
        <label class="lbls1"> <u> <a href="forgetpw.php"> Forget Password? </a></u></label>
        <label class="lbls2"> <u> <a onclick="alert('This action cannot be done')"> Reset Email </a></u></label>
    </div>
    <div class="createAcc">
        <div class="one"> 
            <h2> Don't Have An Account ? </h2>
            <br>
            <p>Manage your bookings and receive our latest news and offers just for you</p>
            <div class="btn-crtAcc" id="submit">
                <button> <a href="signup.php"> Create Account </a> </button>
            </div>
        </div>
    </div> 
    <div class="last">
        
    </div>
    </form>
</div>

<div class="footer-wave" >           
    <div class="wave-decoration">
      <div class="wave02">
          <svg version="1.1" width="100%" height="131" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 100% 131.2" style="enable-background:new 0 0 100% 131.2;" xml:space="preserve">
               <style type="text/css">
                  .st0 {
                  opacity: 0.25;
                  enable-background: new;
                  }
                  .st1 {
                  opacity: 0.35;
                  enable-background: new;
                  }                  
               </style>
               <path class="st0" d="M-0.5,83.4c59.6,40.5,193.3,35,316.7-12.3C525.6-9.2,756.7-9.6,979.8,12.3s445.6,57.9,669.8,54.1C1821.1,63.5,1932,56,2000,53c0,36,0,76.4,0,76.4H1L-0.5,83.4z"></path>
               <path class="st1" d="M309.2,46.1c265.1-57.8,453.7-19.6,687.9,6.8c285.1,32.2,564.2,63,863.4,33.4c94-9.3,119.5-19.6,139.5-19c0,32.2,0,63,0,63H0v-66C0,64.3,152.7,80.2,309.2,46.1z"></path>
               <path class="st1" d="M344.5,54.9c82.3-26.3,167.2-46,253-36.5S767,51.6,851.9,67.8c272.3,52,522.5,16.7,819.3,5c90-3.5,293.8-13.6,328.8-12.6c0,24,0,71,0,71H-1v-59C-1,72.3,198.7,101.6,344.5,54.9z"></path>
               <path d="M1731.8,97.1c-289.3,18.5-590.4,17.2-873.9-16.8C746,66.9,641.1,42.1,528.5,39.5s-249.3,31-353.7,69.9c-57.5,21.4-164.7,2.3-175.7-4.7c0,8,0,26.5,0,26.5h2003v-58C2002,73.3,1854.2,89.2,1731.8,97.1z"></path>
          </svg>
        </div>
    </div>
</div>
<footer class="foot">
<div>
 <br>
 <div class="footer-content">
      <a href="homepage.php">About Us</a>&emsp14; | &emsp14;
     <a href="booking.php">Book Flights</a>&emsp14; | &emsp14;
     <a href="faq.html">FAQs</a>&emsp14; | &emsp14;
     <a href="contact.php">Contact Us</a>
 </div>
 <br>
 <br>
 <div class="icons-footer"><a href="#"><i class="fa fa-facebook"></i></a>&emsp14;<a href="#"><i class="fa fa-twitter"></i></a>&emsp14;<a href="#"><i class="fa fa-snapchat"></i></a>&emsp14;<a href="#"><i class="fa fa-instagram"></i></a></div>
 <br>
 <br>    
 <p class="copyright"> Primero Avionics © 2018</p>
</div>
</footer>




<script src="login.js"></script>

</body>
</html>
