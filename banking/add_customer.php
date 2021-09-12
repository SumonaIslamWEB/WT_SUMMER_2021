<?php 
session_start();
        
if(!isset($_SESSION['admin_login'])) 
    header('location:adminlogin.php');   
?>
    <?php
include '_inc/dbconn.php';
$name=  ($_REQUEST['customer_name']);
$gender=  ($_REQUEST['customer_gender']);
$dob= ($_REQUEST['customer_dob']);
$nominee=  ($_REQUEST['customer_nominee']);
$type=  ($_REQUEST['customer_account']);
$credit=  ($_REQUEST['initial']);
$address=  ($_REQUEST['customer_address']);
$mobile=  ($_REQUEST['customer_mobile']);
$email= ($_REQUEST['customer_email']);


$salt="@g26jQsG&nh*&#8v";
$password=  sha1($_REQUEST['customer_pwd'].$salt);

$branch= ($_REQUEST['branch']);
$date=date("Y-m-d");
switch($branch){
case 'DHAKA': $ifsc="K421A";
    break;
case 'GAZIPUR': $ifsc="D30AC";
    break;
case 'SAVAR': $ifsc="B6A9E";
    break;
}

$sql3 = $conn->query("SELECT MAX(id) from customer") or die(mysql_error());
$rws=  mysqli_fetch_array($sql3);
$id=$rws[0]+1;
$sql1 =$conn->query("CREATE TABLE passbook".$id." 
    (transactionid int(5) AUTO_INCREMENT, transactiondate date, name VARCHAR(255), branch VARCHAR(255), ifsc VARCHAR(255), credit int(10), debit int(10), 
    amount float(10,2), narration VARCHAR(255), PRIMARY KEY (transactionid))") or die(mysql_error());

$sql=$conn->query("insert into customer values('','$name','$gender','$dob','$nominee','$type','$address','$mobile',
    '$email','$password','$branch','$ifsc','','ACTIVE')");
$sql4=$conn->query("insert into passbook".$id." values('','$date','$name',
                    '$branch','$ifsc','$credit','0','$credit','Account Open')") or die(mysql_error());
header('location:admin_hompage.php');
?>