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
    $validatename= "you must enter name";
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

$target_dir = "files/";
$target_file = $target_dir . $_FILES["filetoupload"]["name"];

if (move_uploaded_file($_FILES["filetoupload"]["tmp_name"], $target_file)) {
    echo "You have uploaded" .$_FILES["filetoupload"]["type"];
    echo "<br>".$_FILES["filetoupload"]["type"];
    echo "<img sec ='".$target_file."'>";
}else {
    echo"Error";
}

$formdata = array(
    'Name'=> $_POST["fname"],
    'Email'=> $_POST["email"],
    'Password'=>$_POST["password"],
    'Comment'=> $_POST["comment"],
    'Gender'=>"$validateradio",
    'Hobby'=>"$h1 $h2 $h3",
    "File_Path"=>"$target_dir"
   

 );


 $existingdata = file_get_contents('data.json');
 $tempJSONdata = json_decode($existingdata);
 $tempJSONdata[] =$formdata;
 $jsondata = json_encode($tempJSONdata, JSON_PRETTY_PRINT);
 
 if(file_put_contents("data.json", $jsondata)) {
      echo "Data successfully saved <br>";
  }
 else 
      echo "no data saved";

$data = file_get_contents("data.json");
$mydata = json_decode($data);


foreach($mydata as $myobject)
{
foreach($myobject as $key=>$value)
{
  echo "your ".$key." is ".$value."<br>";
} 
echo "<br>";
}


}
?>