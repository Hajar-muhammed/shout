<?php
include 'database.php';
//check if form submittted
if (isset($_POST['submit'])) {
  $user = mysqli_real_escape_string($con, $_POST['user']);
  $message = mysqli_real_escape_string($con, $_POST['message']);

  //set time zone 
   date_default_timezone_set('Africa/Cairo');
   $time = date('h:i:s A', time());
   //VALIDATE INPUT 
   if(!isset($user) || $user =='' || !isset($message) || $message ==''){
   	  $error =" Please fill in your name and amessage";
   	  header("location: index.php?error=".urlencode($error));
   	  exit();
   } else{
   	$query = "INSERT INTO shouts (user, message, time) VALUES ('$user', '$message', '$time')";
   	if(!mysqli_query($con, $query)){
   		die('ERROR: '.Mysqli_error($con));
   	}else{
   		header("location: index.php");
   		exit();
   	}
   }

}
