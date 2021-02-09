<?php 
  session_start(); 

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
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
			<li><a href="">Show Profile</a></li>
			<li><a href="">Update Profile</a></li>
		</ul>
	</li>
	<li>
		<a href="">Team</a>
		<ul>
			<li><a href="">Our Team</a></li>
			<li><a href="">Update Team</a></li>
			<li><a href="">All Team</a></li>
		</ul>
	</li>
	<li>
		<a href="">Player</a>
		<ul>
			<li><a href="">Our Player</a></li>
			<li><a href="">Our Player Details</a></li>
			<li><a href="">Update Our Player</a></li>
			<li><a href="">All Player</a></li>
			<li><a href="">All Player Details</a></li>
		</ul>
	</li>
	<li><a href="login.php" style="color: red;">Log Out</a></li>

</ul>
<head>
	<title>Home</title>
<!-- <link rel="stylesheet" type="text/css" href="style.css"> -->
</head>
<body>
    <br><br> <br><br> <br><br> <br><br> <br><br>
<div class="content">
  	<!-- notification message -->
  	<?php if (isset($_SESSION['success'])) : ?>
      <div class="error success" >
      	<h3>
          <?php 
          	echo $_SESSION['success']; 
          	unset($_SESSION['success']);
          ?>
      	</h3>
      </div>
  	<?php endif ?>
 <!-- logged in user information -->
    <?php  if (isset($_SESSION['username'])) : ?>
    	<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
    
    <?php endif ?>
</div>
		
</body>
</html>