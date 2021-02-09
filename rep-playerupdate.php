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
	<li><a href="login.php" style="color: red;">Log Out</a></li>

</ul>
<head>
	<title>Profile</title>
</head>
<body>
	 <br><br> <br><br> <br><br> <br><br> <br><br>
<body>
  <div class="content">
  	<h2>player update</h2>
  </div>
	
  <form method="post" action="rep-playerupdate.php">
  	<div class="input-group">
  	  <label>match no</label>
  	  <input type="text" name="matchno">
  	</div>
  	<div class="input-group">
  	  <label>player id</label>
  	  <input type="text" name="playerid">
  	</div>
  	<div class="input-group">
  	  <label>goal</label>
  	  <input type="text" name="goal">
  	</div>
  	<div class="input-group">
  	  <label>assist</label>
  	  <input type="text" name="assist">
  	</div>
  	<div class="input-group">
  	  <button type="submit" class="btn" name="update">update</button>
  	</div>
  </form>
</body>
</html>
<?php 

if(isset($_POST['update'])){
	try{$con=new PDO("mysql:host=localhost;dbname=games",'root',"");
		$con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	$matchno =$_POST['matchno'];
	$playerid =$_POST['playerid'];
	$goal =$_POST['goal'];
	$assist =$_POST['assist'];
        echo $goal;
        echo $assist;
	//$username = mysqli_real_escape_string($db, $_SESSION['username']);
    $point1=0; $point2=0;
	if($goal>0){
		echo $goal;
		$g="select goal from records where id='$playerid'";
		$p=$con->query($g);
        $ta=$p->fetchAll(PDO::FETCH_NUM);
        $t=$ta[0][0];
       echo $t;
        $point1=2*$goal;
        echo $point1;
        $k=$t+$goal;
        echo $k;
        $update="update records SET goal='$k' where id='$playerid'";
            $con->exec($update);
        echo $t;
        echo $goal;
        echo $k;
    }
    if($assist>0){
    	$a="select assists from records where id='$playerid'";
    	$p1=$con->query($a);
        $ta1=$p1->fetchAll(PDO::FETCH_NUM);
        $t1=$ta1[0][0];
        $point2=3*$assist;
        $k1=$t1+$assist;
        $update1="update records SET assists='$k1' where id='$playerid'";
            $con->exec($update1);
    }
    $point=$point1+$point2;
        
    $u="select distinct(teamname) from teamplayer where playerid='$playerid'";
    $result=$con->query($u);
        $re=$result->fetchAll(PDO::FETCH_NUM);
        
    foreach($re as $row){
        $tname=$row[0];
        $stmt="Insert INTO point VALUES($matchno,'$tname',$point,$playerid)";
        $con->exec($stmt);
    }    
        //$ree=$re[0][0];
        //echo $ree;
  //  $x=count($re,1);
    //echo $x;
//   try{if($x >0){
//        
//        for($i=0;$i<$x;$i++){
//        	//echo $i;
//            //$ree=$re[0][0];
//        	//echo $ree;
//
//             $z=$re[$i][0];
//            //echo $z;
//        
//			//foreach($re as $z){
//				$a="INSERT INTO point(matchno,teamname,point) VALUES ('$matchno','$z','$point')";
//     $con->exec($a);
//
//			}
//		}}catch(Exception $e){
//
//		} 
}catch(Exception $e){
        
    }
}
 

 ?>