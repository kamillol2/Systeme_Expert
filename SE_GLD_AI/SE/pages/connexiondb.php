<?php
	try{
		$pdo=new PDO("mysql:host=localhost;dbname=sysexpert","root","",array(
PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
	}catch(Exception $e){
		die('Erreur de connexion:' .$e->getMessage());
	}
?>