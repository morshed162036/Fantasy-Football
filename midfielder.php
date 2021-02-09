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
			<li><a href="newpage.php">Our Player</a></li>
			<li><a href="">Our Player Details</a></li>
			<li><a href="all-player.php">All Player</a></li>
			<li><a href="all-playerrecord.php">All Player Details</a></li>
		</ul>
	</li>
	<li><a href="user-fixture.php">Fixture</a></li>
	<li><a href="midfielder.php" style="color: red;">Log Out</a></li>

</ul>
	<head>

	</head>
	<body>

	<br><br>	<h3>Choose MID FIELDER</h3>
		<div style="margin-right:20px;border:1px solid blue;width:30%;height:550px;overflow:auto;display:inline-block;" id="stklist">

		</div>
		
		<div style="border:1px solid blue;width:30%;height:550px;overflow:auto;display:inline-block;" id="sellist"></div>

        <div><button type="buttom" name="submit" id="submit" onclick="savedata();" class="btn">Buy Confirmation</button></div>
		<script>
			function savedata(){
				if(window.confirm("Do you want to buy these palyers?")){
					window.location.assign("savedatamid.php?id1="+selarray[0][2]+"&id2="+selarray[1][2]+"&id3="+selarray[2][2]+"&id4="+selarray[3][2]+"&id5="+selarray[4][2]);
				}
			}
			
			function showupdatedplayers(){
				console.log(allarray.length+" "+selarray.length);
				document.getElementById('stklist').innerHTML="";

				for(var i=0;i<allarray.length;i++){
					var row=allarray[i];
					document.getElementById('stklist').innerHTML+="<div style='border:2px solid green; border-radius:5px; padding:5px;'>"+row[0]+"<br/>Price:"+row[1]+"<br/><input type='button' value='Choose' onclick='addselection(\""+row[0]+"\","+row[1]+","+row[2]+","+i+");'></div><br/>";
				}

				
				document.getElementById('sellist').innerHTML="";
				for(var i=0;i<selarray.length;i++){
					var row=selarray[i];
					document.getElementById('sellist').innerHTML+="<div style='border:2px solid green; border-radius:5px; padding:5px;'>"+row[0]+"<br/>Price:"+row[1]+"<br/><input type='button' value='Remove' onclick='addotherselection(\""+row[0]+"\","+row[1]+","+row[2]+","+i+");'></div><br/>";
				}

			}

			function addselection(name, price, id, index){
				if(selarray.length<5){
					selarray.push([name, price, id]);
					allarray.splice(index,1);
					showupdatedplayers();

				}
				else{

					window.alert('delete a player first');
				}
			}

			function addotherselection(name, price, id, index){
				allarray.push([name,price,id]);
				selarray.splice(index,1);
				showupdatedplayers();
			}


		

			

			

		</script>


		

		<?php
			include('dbConfig.php');
					    
		    $query = $db->query("SELECT * FROM player WHERE position = 'M' ORDER BY prize DESC");
		    
		    $rowCount = $query->num_rows;
		    
			if($rowCount > 0){
				echo "<script>var allarray=[]; var selarray=[];</script>";
		        while($row = $query->fetch_assoc()){ 
		        	$name=$row['name'];
		        	$price=$row['prize'];
		        	$pk=$row['id'];
		            echo "<script>allarray.push(['$name',$price,$pk]);</script>";
		        }

		       echo "<script>showupdatedplayers();</script>";
		    }else{
		        
		    }
		?>
		
	</body>
</html>