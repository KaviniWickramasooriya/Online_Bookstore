<?php
$hostname = 'localhost'; 
$username = 'root'; 
$password = ''; 
$database = 'ebooks';

$conn = mysqli_connect($hostname, $username, $password, $database);

if (!$conn) {
    die('Failed to connect to MySQL: ' . mysqli_connect_error());
}

?>