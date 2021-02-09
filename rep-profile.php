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
<link rel="stylesheet" type="text/css" href="">
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
	<li><a href="rep-profile.php?logout='1'" style="color: red;">Log Out</a></li>

</ul>
<head>
	<title>Profile</title>
</head>
<body>
	 <br><br> <br><br> <br><br> <br><br> <br><br>
<div class="content">
    <table>
		<tr>
			<th>USER NAME</th>
			<th>EMAIL</th>
			<th>ID</th>
		</tr>
		<?php
		#$con=new PDO("mysql:host=localhost;dbname=football_games",'root',"");
		$con=mysqli_connect("localhost","root","","games");
		if($con-> connect_error){
			die("connection faild:".$con-> connect_error);
		}
        $a=$_SESSION['username'];
		$sql="SELECT username,email,id FROM representer where username='$a'";
		$result=$con->query($sql);

		if($result->num_rows >0){
			while ($row=$result->fetch_assoc()) {
                echo "<tr><td>".$row["username"]."</td><td>".$row["email"]."</td><td>".$row["id"]."</td></tr>";
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