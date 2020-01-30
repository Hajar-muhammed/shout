<?php 
$con =mysqli_connect("localhost", "root", "", "shoutit");
if (mysqli_connect_errno()){
	echo "faild to connect to mysql: ".mysqli_connect_errno();
}