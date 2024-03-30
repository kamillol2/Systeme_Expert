<?php 
	require_once("identifier.php");
	require_once("connexiondb.php");
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Dashboard</title>
		<link rel="stylesheet" type="text/css" href="mysidebar.css">
	</head>
	<body>
        <ul class="menu">
              <li>
                <a href="ajouter.php">Ajouter une règle</a>
              </li>
              <li>
                <a href="modifier.php">Modifier une règle</a>
              </li>
              <li>
                <a href="supprimer.php">Supprimer une règle</a>
              </li>
              <li>
                <a href="../index.php" class="logout">Déconnexion</a>
              </li>
        </ul>
    </body>

</html>
    