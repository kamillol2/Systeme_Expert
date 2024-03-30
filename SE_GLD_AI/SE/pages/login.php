<?php 
	session_start();
	if(isset($_SESSION['erreurLogin']))
		$erreurLogin=$_SESSION['erreurLogin'];
	else{
		$erreurLogin="";
	}
	session_destroy();
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Panel Admin</title>
		<link rel="stylesheet" type="text/css" href="stylelogin.css">
	</head>
	<body>
		<div class="container">
		<form action="Seconnecter.php" method="POST" class="login-email">
			<p class="login-text" style="font-size: 2rem; font-weight: 800;">Panel Admin</p>
			<?php if(!empty($erreurLogin)) {?>
					<div class="alert">
						<?php echo $erreurLogin; ?>
					</div>
					<?php } ?>
			<div class="input-group <?php if(!empty($erreurLogin)) echo 'incorrect' ?>">
				<input type="text" placeholder="Matricule" name="matricule">
			</div>
			<div class="input-group <?php if(!empty($erreurLogin)) echo 'incorrect' ?>">
				<input type="password" placeholder="Mot de passe" name="pwd" >
			</div>
			<div class="input-group">
				<button name="submit" class="btn">Login</button>
			</div>	
		</form>
	</div>
	</body>
</html>