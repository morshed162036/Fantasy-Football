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
			<li><a href="defender.php">SELECT Player</a>
             </li>
			<li><a href="show-userplayer.php">Our Player Details</a></li>
			
			<li><a href="all-player.php">All Player</a></li>
			<li><a href="all-playerrecord.php">All Player Details</a></li>
		</ul>
	</li>
	<li><a href="user-fixture.php">Fixture</a></li>
    <li><a href="point.php">POINT</a></li>
    <li><a href="winer.php">WINER</a></li>
	<li><a href="show-userteam.php?logout='1'" style="color: red;">Log Out</a></li>

</ul>
<head>
	<title>Profile</title>
</head>
<body>
	 <br><br> <br><br> <br><br> <br><br> <br><br>
<div class="content">
    <table>
		<tr>
			<th>USER TEAM NAME</th>
			
		</tr>
		<?php
		#$con=new PDO("mysql:host=localhost;dbname=football_games",'root',"");
		$con=mysqli_connect("localhost","root","","games");
		if($con-> connect_error){
			die("connection faild:".$con-> connect_error);
		}
        $a=$_SESSION['username'];
		$sql="SELECT uteamname FROM users_team where username='$a'";
		$result=$con->query($sql);

		if($result->num_rows >0){
			while ($row=$result->fetch_assoc()) {
                echo "<tr><td>".$row["uteamname"]."</td></tr>";
			}
			echo "</table>";
		}
		else{
			echo "0 result";
		} 
	
		$con=null;

		 ?>
	</table>
</div>
</body>
</html>