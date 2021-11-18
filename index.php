<?php
require_once "API/connect_db.php";

$mode = isset($_REQUEST['mode']) ? $_REQUEST['mode'] : false;
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	//Если передаётся параметр mode=admin_panel, то происходит проверка на авторизацию
	if ($mode === 'admin_panel') {
		$email = trim($_REQUEST['email']);
		$authorization = mysqli_query($mysqli, "SELECT email, password FROM data WHERE email = '$email' LIMIT 1");

		$authorization = mysqli_fetch_array($authorization, MYSQLI_ASSOC);

		if ($authorization) {
			if (password_verify(trim($_REQUEST['password']), $authorization['password'])) {
				// Получение данных из таблицы для дальнейшего вывода на страницу
				$result = mysqli_query($mysqli, "SELECT * FROM data");

				while ($record = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
					$users[] = $record;
				}
				require 'users.html';
			} else {

				$authorizationFailed = true;
				require('auth.html');
			}
		} else {
			$authorizationFailed = true;
			require('auth.html');
		}

		exit;
	}

	//Регистрация - добавление данных в БД
	$first_name = trim($_REQUEST['first_name']);
	$last_name = trim($_REQUEST['last_name']);
	$email = trim($_REQUEST['email']);
	$password = password_hash(trim($_REQUEST['password']), PASSWORD_BCRYPT);
	$information = trim($_REQUEST['information']);
	$gender = $_REQUEST['gender'];
	$approval = $_REQUEST['approval'];

	// Проверка на пустые поля
	if (!($first_name && $last_name && $email && $password &&  $approval)) {
		$emptyValue = true;
		require('index.html');
		exit;
	}


	$sql = "INSERT INTO data (first_name, last_name, email, password, information, gender, approval)
	VALUES ('$first_name', '$last_name', '$email', '$password', '$information', '$gender', '$approval')";

	if (mysqli_query($mysqli, $sql)) {
		$addUser = true;
	}
}


if ($mode === 'auth') {
	require('auth.html');
} else {
	$notWarning = true;
	require('index.html');
}
mysqli_close($mysqli);
exit;
