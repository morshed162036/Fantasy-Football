<?php
session_start();
 if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
     unset($_SESSION['teamname']);
  	header("location: login.php");
  }
?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="style1.css">
<ul>
	<li>
		<a href="">Profile</a>
		<ul>
			<li><a href="rep-profile.php">Show Profile</a></li>
			<li><a href="rep-updateprofile.php">Update Profile</a></li>
		</ul>
	</li>
	<li>
		<a href="">Team</a>
		<ul>
			<li><a href="rep-team.php">Our Team</a></li>
			<li><a href="">Update Team</a></li>
			<li><a href="all-team.php">All Team</a></li>
		</ul>
	</li>
	<li>
		<a href="">Player</a>
		<ul>
			<li><a href="rep-player.php">Our Player</a></li>
			<li><a href="rep-playerrecord.php">Our Player Details</a></li>
			<li><a href="rep-playerupdate.php">Update Our Player</a></li>
			<li><a href="all-player.php">All Player</a></li>
			<li><a href="all-playerrecord.php">All Player Details</a></li>
		</ul>
	</li>
    <li><a href="rep-fixture.php">FIXTURE</a></li>
	<li><a href="rep-updateprofile.php?logout='1'" style="color: red;">Log Out</a></li>

</ul>
	<title>Update Profile</title>
</head>
<body>
	<div class="header">
  	<h2>Update Profile</h2>
  </div>
	
  <form method="post" action="rep-updateprofile.php">
      
  	<div class="input-group">
  	  <label>Email</label>
  	  <input type="email" name="email">
  	</div>
  	<div class="input-group">
  	  <label>Password</label>
  	  <input type="password" name="password_1">
  	</div>
  	
  	<div class="input-group">
  	  <button type="submit" class="btn" name="update">Update</button>
  	</div>
  </form>

</body>
</html>

<?php  
$username = "";
$email    = "";
$errors = array(); 

$db = mysqli_connect('localhost', 'root', '', 'games');

// REGISTER USER
if ((isset($_POST['update'])) && (!empty($_POST['update']))) {
  // receive all input values from the form
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  //if (empty($email)) { array_push($errors, "Email is required"); }
  //if (empty($password_1)) { array_push($errors, "Password is required"); }
    $s=$_SESSION['username'];
   
   
	$query = "UPDATE representer
  			  SET email='$email', password='$password_1' where username='$s'";
  	mysqli_query($db, $query);
   
}
?>