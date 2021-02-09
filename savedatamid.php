<?php 

session_start(); 

$id1=$_GET['id1'];
$id2=$_GET['id2'];
$id3=$_GET['id3'];
$id4=$_GET['id4'];
$id5=$_GET['id5'];
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
         $c3="SELECT prize
              FROM player WHERE id='$id3'";
         $p3=$con->query($c3);
        $ta3=$p3->fetchAll(PDO::FETCH_NUM);
        $t3=$ta3[0][0];
        //echo $t3;
         $c5="SELECT prize
              FROM player WHERE id='$id4'";
         $p5=$con->query($c5);
        $ta5=$p5->fetchAll(PDO::FETCH_NUM);
        $t5=$ta5[0][0];

         $c6="SELECT prize
              FROM player WHERE id='$id5'";
         $p6=$con->query($c6);
        $ta6=$p6->fetchAll(PDO::FETCH_NUM);
        $t6=$ta6[0][0];

         $c4="SELECT coin
              FROM users WHERE username='$username'";
         $p4=$con->query($c4);
        $ta4=$p4->fetchAll(PDO::FETCH_NUM);
        $t4=$ta4[0][0];
       // echo $t4;


        $c=$t4-$t3-$t2-$t1-$t5-$t6;
        //echo $c;
        if($c>=0){
        	$update="update users SET COIN='$c' where username='$username'";
            $con->exec($update);
                          
		$s="INSERT INTO teamplayer(teamname,playerid) VALUES('$teamname','$id1'),
		('$teamname','$id2'),
		('$teamname','$id3'),
        ('$teamname','$id4'),
        ('$teamname','$id5')";
		$con->exec($s);
		
		echo "new record add";
	header('location: newpage.php');

        }
        else{ 
            header('location: midfielder.php');}

 }
 catch(PDOException $e){
		#echo $sql."<br>".$e->getMessage();
		} 
 ?>