<?php
$serverName="localhost";
$dbusername="root";
$dbpassword="";
$dbname="bnak_db";
$conn = new mysqli($serverName, $dbusername, $dbpassword,$dbname) or die(mysql_error());
?>