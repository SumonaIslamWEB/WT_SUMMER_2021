<?php
$validatename="";
$validateemail="";
$validatepassword="";
$validatecomment="";
$validatecheckbox="";
$validateradio="";
$h1=$h2=$h3="";
$name=$email=$gender="";
if($_SERVER["REQUEST_METHOD"]=="POST")
{
$name=$_REQUEST["fname"];
$email=$_REQUEST["email"];
if(empty($_REQUEST["fname"]) || (strlen($_REQUEST["fname"])<3))
{
    $validatename= "you must enter first name";  
    
}
else
{
    $validatename=$_REQUEST["fname"];
}

if(empty($email) || !preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix",$email))
{
    $validateemail="you must enter email";
}
else{
    $validateemail= "your email is ".$email;
}
if(empty($_REQUEST["password"]) || (strlen($_REQUEST["password"])<3))
{
    $validatepassword= "you must enter password";

}
else
{
    $validatepassword=$_REQUEST["password"];
}
if(empty($_REQUEST["comment"]) || (strlen($_REQUEST["comment"])<3))
{
    $validatecomment= "you must enter comment";

}
else
{
    $validatecomment=$_REQUEST["comment"];
}
if(!isset($_REQUEST["hobby1"])&&!isset($_REQUEST["hobby2"])&&!isset($_REQUEST["hobby3"]))
{
    $validatecheckbox = "please select at least one checkbox";
    
}
else{
   if(isset($_REQUEST["hobby1"]))
   {
       $h1= $_REQUEST["hobby1"];
   }
   if(isset($_REQUEST["hobby2"]))
   { 
       $h2= $_REQUEST["hobby2"];
   }
   if(isset($_REQUEST["hobby3"]))
   {
    $h3= $_REQUEST["hobby3"];
   }
}
if(isset($_REQUEST["gender"]))
{
    $validateradio= $_REQUEST["gender"];
}
else{
    $validateradio= "please select at least one radio";
}
}
?>