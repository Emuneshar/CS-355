<?php
	session_start();
	session_destroy();
	header("Location: HTML/loginPage.html");
	exit();
?>