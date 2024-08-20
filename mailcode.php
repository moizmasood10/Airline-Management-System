<?php
include('smtp/PHPMailerAutoload.php');
require('db_connection.php');

$to_email = $_POST['emailinp'];
$sub = 'Password Reset';
$generator = rand(4321,9999);
$body = "  Hi, This is Primero Avioinics, we have encounter a password reset request. If it is you then,
    Enter the following code to reset your password


    $generator";
 
function smtp_mailer($to,$subject, $msg){
	$mail = new PHPMailer(); 
	$mail->SMTPDebug  = 3;
	$mail->IsSMTP(); 
	$mail->SMTPAuth = true; 
	$mail->SMTPSecure = 'tls'; 
	$mail->Host = "smtp.gmail.com";
	$mail->Port = 587; 
	$mail->IsHTML(true);
	$mail->CharSet = 'UTF-8';
	$mail->Username = "airways.primero@gmail.com";
	$mail->Password = "primero12345";
	$mail->SetFrom("airways.primero@gmail.com");
	$mail->Subject = $subject;
	$mail->Body =$msg;
	$mail->AddAddress($to);
	$mail->SMTPOptions=array('ssl'=>array(
		'verify_peer'=>false,
		'verify_peer_name'=>false,
		'allow_self_signed'=>false
	));
	if(!$mail->Send()){
		echo $mail->ErrorInfo;
	}else{
		return 'Sent';
	}
}

smtp_mailer($_POST['emailinp'],$sub,$body);
    $_SESSION['mail'] = $to_email;
    $_SESSION['code'] = $generator;   
header('location:forgetReg.php');
?>
