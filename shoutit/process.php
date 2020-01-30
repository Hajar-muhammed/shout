<?php
include 'database.php';
if($_SERVER['REQUEST_METHOD'] == 'POST'){

	$user= $_POST['user'];
	$message = $_POST['message'];


date_default_timezone_set('Africa/Cairo');
$time =date('h:i:s A', time());

//validate input & error massage
if(!isset ($user) || $user == ""  || !isset ($message) || $message == ""){
     $error="Please Fill Yn Your Name And  A Message";
     header("location: index.php? error=".urlencode( $error));
     exit();
}else{
      $query = "INSERT INTO shouts(user, message, time) VALUES ('$user', '$message', '$time')";
      if (!mysqli_query($con, $query)) {
      	 die('Error: '.mysqli_error($con));
      }else{
     
      header("location: index.php");
      exit();
           }
    }

}
?>