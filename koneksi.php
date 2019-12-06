<?php
 
$username = "root";
$password = "";
$dbname = "akreditasi";
$servername = "localhost"; 
 
$conn =new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error){
	die("Connection Error: " . $conn->connect_error);
}
?>