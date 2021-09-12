<?php 
session_start();

include '_inc/dbconn.php';

$date=date('Y-m-d h:i:s');
$id=$_SESSION['login_id'];
$sql = $conn->query("UPDATE customer SET lastlogin='$date' WHERE id='$id'") or die(mysql_error());

session_destroy();
header('location:index.php');
?>