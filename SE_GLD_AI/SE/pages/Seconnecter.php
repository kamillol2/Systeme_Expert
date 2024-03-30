<?php
	session_start();
	require_once('connexiondb.php');
	$matricule=isset($_POST['matricule'])?$_POST['matricule']:"";
	$pwd=isset($_POST['pwd'])?$_POST['pwd']:"";

	$requete="select * from utilisateur where matricule='$matricule' and motdepasse=md5('$pwd')";
	$resultat=$pdo->query($requete);

	if($user=$resultat->fetch()){
		$_SESSION['user']=$user;
		header('location:ajouter.php');
	}
	else{
		$_SESSION['erreurLogin']="<strong>Erreur: </strong> matricule ou mot de passe incorrecte!";
		header('location:login.php');
	}
?>