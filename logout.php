<?php
session_start();
unset($_SESSION['pengguna_id']);
session_destroy();
header('location: login.php');

?>