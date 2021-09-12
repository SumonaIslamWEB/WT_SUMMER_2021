<?php 
session_start();
        
if(!isset($_SESSION['admin_login'])) 
    header('location:adminlogin.php');   
?>
<?php
include '_inc/dbconn.php';
$name=  ($_REQUEST['edit_name']);
$gender=  ($_REQUEST['edit_gender']);
$dob=  ($_REQUEST['edit_dob']);
$id=  ($_REQUEST['current_id']);
$status=  ($_REQUEST['edit_status']);
$dept=  ($_REQUEST['edit_dept']);
$doj=  ($_REQUEST['edit_doj']);
$address=  ($_REQUEST['edit_address']);
$email = ($_REQUEST['edit_email']);
$mobile=  ($_REQUEST['edit_mobile']);

$result = $conn->query("UPDATE staff SET  name='$name', dob='$dob', relationship='$status', 
    department='$dept', doj='$doj', address='$address', 
        mobile='$mobile', email='$email', gender='$gender' WHERE id='$id'");
header('location:display_staff.php');
?>