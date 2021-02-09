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
			<li><a href="user-profile.php">Show Profile</a></li>
			<li><a href="user-updateprofile.php">Update Profile</a></li>
		</ul>
	</li>
	<li>
		<a href="">Team</a>
		<ul>
			<li><a href="creat-userteam.php">CREAT Team</a></li>
			<li><a href="show-userteam.php">Team Details</a></li>
			<li><a href="allu-team.php">All Team</a></li>
		</ul>
	</li>
	<li>
		<a href="">Player</a>
		<ul>
			<li><a href="defender.php">SELECT Player</a> </li>
			<li><a href="">Our Player Details</a></li>
	
			<li><a href="all-player.php">All Player</a></li>
			<li><a href="all-playerrecord.php">All Player Details</a></li>
		</ul>
	</li>
	<li><a href="user-fixture.php">Fixture</a></li>
    <li><a href="point.php">POINT</a></li>
    <li><a href="winer.php">WINER</a></li>
	<li><a href="creat-userteam.php?logout='1'" style="color: red;">Log Out</a></li>

</ul>
	<title>user</title>
</head>
<body>
	<div class="header">
  	<h2>Create Team</h2>
  </div>
	
  <form method="post" action="creat-userteam.php">
      
  	<div class="input-group">
  	  <label>Team Name</label>
  	  <input type="team" name="team">
  	</div>
  	
  	<div class="input-group">
  	  <button type="submit" class="btn" name="collect">Select</button>
  	</div>
  </form>

</body>
</html>

<?php  
$username = "";
$teamname    = "";
$c=0;
$db = mysqli_connect('localhost', 'root', '', 'games');
if (isset($_POST['collect'])) {
  // receive all input values from the form
  $teamname = mysqli_real_escape_string($db, $_POST['team']);
  $username =$_SESSION['username'];
  $c=1;

echo 'success';
    
  }
if($c==1){
  	$query = "INSERT INTO users_team (uteamname,username) 
  			  VALUES('$teamname', '$username')";
  	mysqli_query($db, $query);
  	$_SESSION['username'] = $username;
  	$_SESSION['teamname'] =$teamname ;
  }
?>