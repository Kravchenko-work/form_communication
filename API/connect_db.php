<?php
// Соединение с БД
$servername = "127.0.0.1";
$username = "root";
$password = "slava16062001";
$db = "main";

$mysqli = mysqli_connect($servername, $username, $password, $db);

if (!$mysqli) {
	die("Connection failed: " . mysqli_connect_error());
}
