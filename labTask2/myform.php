<?php include "control/results.php"; ?>
<!DOCTYPE html>
<html>
<body>

<h1>Regstretion Page</h1>
<hr></hr>
<form action="" method="post">
Enter your first name: <input type="text" name="fname"> <?php echo $validatename; ?>
<br><br>
Enter your email: <input type="text" name="email"> <?php echo $validateemail; ?>
<br><br>

Password: <input type="password" name="password" ><?php echo $validatepassword; ?>
<br><br>
Comment: <textarea name="comment" rows="10" cols="30"></textarea> <?php echo $validatecomment; ?>
<br><br>
<p>Please select your gender:</p>
  <input type="radio" id="male" name="gender" value="male">
  <label for="male">Male</label><br>
  <input type="radio" id="female" name="gender" value="female">
  <label for="female">Female</label><br>
  <input type="radio" id="other" name="gender" value="other">
  <label for="other">Other</label>
  <br>
  <?php echo $validateradio; ?>

<br>
<p>Please select your hobby: </p>
<input type="checkbox" id="hooby1" name="hobby1" value="Singing" > Singing <br>
<input type="checkbox" id="hobby2" name="hobby2" value="Dancing" > Dancing <br>
<input type="checkbox" id="hobby3" name="hobby3" value="Reading" > Reading <br>
<br>
<?php echo $validatecheckbox; ?>

<?php echo $h1;?>

<?php echo $h2;?>

<?php echo $h3;?>
<br>
<p>Please choose a file: </p>
<input type="file" name="" > <br>
<input type="submit" value="Submit">
<input type="reset" value="Reset">

</form>

</body>
</html>