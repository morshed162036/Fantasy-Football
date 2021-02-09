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
			<li><a href="rep-profile.php">Show Profile</a></li>
			<li><a href="rep-updateprofile">Update Profile</a></li>
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
			<li><a href="">Update Our Player</a></li>
			<li><a href="allr-player.php">All Player</a></li>
			<li><a href="allr-playerrecord.php">All Player Details</a></li>
		</ul>
	</li>
	<li><a href="allr-playerrecord.php" style="color: red;">Log Out</a></li>

</ul>
<head>
	<title>Team PLAYER Record</title>
<!-- <link rel="stylesheet" type="text/css" href="style.css"> -->
</head>
<body>
    <br><br> <br><br> <br><br> <br><br> <br><br>
<div class="content">
	<div> <p> <center><h3>PLAYER Record</h3></center> </p></div>
  	<!-- notification message -->
  	<table>
		<tr>
			<th>TEAM ID</th>
			<th>ID</th>
			<th>NAME</th>
			<th>MINUTES PLAYED</th>
			<th>APPERANCE</th>
			<th>LINE UP</th>
			<th>SUBSTITUTE IN</th>
			<th>SUBSTITUTE OUT</th>
			<th>SUBSTITUTE ON BENCH</th>
			<th>GOAL</th>
			<th>ASSISTS</th>
			<th>YELLOW CARD</th>
			<th>RED CARD</th>
			<th>RECORD NO</th>
		</tr>
		<?php
		#$con=new PDO("mysql:host=localhost;dbname=football_games",'root',"");
		$con=mysqli_connect("localhost","root","","games");
		if($con-> connect_error){
			die("connection faild:".$con-> connect_error);
		}
        $a=$_SESSION['username'];
		$sql="SELECT p.teamid,r1.id,p.name,r1.minutes_played,r1.apperance,r1.line_up,r1.substitute_in,r1.substitute_out,r1.substitute_on_bench,r1.goal,r1.assists,r1.yellow_card,r1.red_card,r1.recordid FROM records as r1 join player as p  on r1.id=p.id join team as t on p.teamid=t.id join representer as r on r.id=t.representerid order by r1.id,r1.recordid";
		$result=$con->query($sql);

		if($result->num_rows >0){
			while ($row=$result->fetch_assoc()) {
                echo "<tr><td>".$row["teamid"]."</td><td>".$row["id"]."</td><td>".$row["name"]."</td><td>".$row["minutes_played"]."</td><td>".$row["apperance"]."</td><td>".$row["line_up"]."</td><td>".$row["substitute_in"]."</td><td>".$row["substitute_out"]."</td><td>".$row["substitute_on_bench"]."</td><td>".$row["goal"]."</td><td>".$row["assists"]."</td><td>".$row["yellow_card"]."</td><td>".$row["red_card"]."</td><td>".$row["recordid"]."</td></tr>";
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