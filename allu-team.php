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
			<li><a href="">Team Details</a></li>
			<li><a href="allu-team.php">All Team</a></li>
		</ul>
	</li>
	<li>
		<a href="">Player</a>
		<ul>
			<li><a href="">Select Player</a></li>
			<li><a href="">Own Player </a></li>
			<li><a href="">Own Player Details</a></li>
			<li><a href="">All Player</a></li>
			<li><a href="">All Player Details</a></li>
		</ul>
	</li>
	<li><a href="user-fixture.php">Fixture</a></li>
	<li><a href="allu-team.php?logout='1'" style="color: red;">Log Out</a></li>

</ul>
<head>
	<title>Team</title>
<!-- <link rel="stylesheet" type="text/css" href="style.css"> -->
</head>
<body>
    <br><br> <br><br> <br><br> <br><br> <br><br>
<div class="content">
  	<!-- notification message -->
  	<div> <p> <center><h3>ALL TEAM DETAILS</h3></center> </p></div>
  	<table>
		<tr>
			<th>ID</th>
			<th>TEAM NAME</th>
			<th>COACH NAME</th>
			<th>TROPHY</th>
			<th>PLAY MATCH</th>
			<th>WIN</th>
			<th>LOSE</th>
			<th>DRAW</th>
			<th>POSITION</th>
			<th>REPRESENTER NAME</th>
		</tr>
		<?php
		#$con=new PDO("mysql:host=localhost;dbname=football_games",'root',"");
		$con=mysqli_connect("localhost","root","","games");
		if($con-> connect_error){
			die("connection faild:".$con-> connect_error);
		}
        $a=$_SESSION['username'];
		$sql="SELECT t.id,t.name,t.coachname,t.trophy,t.playmatch,t.win,t.lose,t.draw,t.position,r.username FROM representer as r join team as t on r.id=t.representerid order by t.id ";
		$result=$con->query($sql);

		if($result->num_rows >0){
			while ($row=$result->fetch_assoc()) {
                echo "<tr><td>".$row["id"]."</td><td>".$row["name"]."</td><td>".$row["coachname"]."</td><td>".$row["trophy"]."</td><td>".$row["playmatch"]."</td><td>".$row["win"]."</td><td>".$row["lose"]."</td><td>".$row["draw"]."</td><td>".$row["position"]."</td><td>".$row["username"]."</td></tr>";
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