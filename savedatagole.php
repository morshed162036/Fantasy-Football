<?php 

session_start(); 

$id1=$_GET['id1'];
$id2=$_GET['id2'];
$username=$_SESSION['username'];
$teamname=$_SESSION['teamname'];
//echo $username;
//echo $teamname;

try{$con=new PDO("mysql:host=localhost;dbname=games",'root',"");
		$con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

		 $c1="SELECT prize
              FROM player WHERE id='$id1'";
         $p1=$con->query($c1);
        $ta1=$p1->fetchAll(PDO::FETCH_NUM);
        $t1=$ta1[0][0];
        //echo $t1;
         $c2="SELECT prize
              FROM player WHERE id='$id2'";
         $p2=$con->query($c2);
        $ta2=$p2->fetchAll(PDO::FETCH_NUM);
        $t2=$ta2[0][0];
        //echo $t2;
        //echo $t3;
         $c4="SELECT coin
              FROM users WHERE username='$username'";
         $p4=$con->query($c4);
        $ta4=$p4->fetchAll(PDO::FETCH_NUM);
        $t4=$ta4[0][0];
       // echo $t4;

        $c=$t4-$t2-$t1;
        //echo $c;
        if($c>=0){
        	$update="update users SET COIN='$c' where username='$username'";
            $con->exec($update);
                          
		$s="INSERT INTO teamplayer(teamname,playerid) VALUES('$teamname','$id1'),
		('$teamname','$id2')";
		$con->exec($s);
		
		echo "new record add";
	header('location: show-userteam.php');

        }
        else{
            header('location: goalkeeper.php');}

 }
 catch(PDOException $e){
		#echo $sql."<br>".$e->getMessage();
		} 
 ?>