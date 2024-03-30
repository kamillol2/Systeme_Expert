
<?php 
	require_once("connexiondb.php");
	$idp=isset($_GET['idp'])?$_GET['idp']:"";
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <title>ENSEM Systeme Expert</title>
    <meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="stylediagnostic.css">
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
</head>

<body style="padding-top: 70px; font-family: monospace;>
 
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2">

                <td>
                    <center><img class="img-responsive img-rounded" src="uh2c_logo.jpg" alt="Test2" width="140" height="100"></center>
                </td>
            </div>
            <div class="col-sm-8">
                <div class="well" style="background-color:#dadada;">

                    <div class="panel panel-default">
                        <div class="panel-heading" style="color: #929292;">
                            <h2><b><center>GLD Systeme Expert</center></b></h2>
                        </div>
                        <div class="panel-body">

                            <!--Panel Content-->


                                <!--<center><FONT color="red"><h2><b>Site en cours de maintenance</b></h2></FONT></center>  -->
                                <td>
                                    <center><img class="img-responsive img-rounded" src="Math-INFO Departement.jpg" alt="Test2" width="320" height="250"></center>
                                </td><br>
								<div class="container-fluid" >
								<?php if($idp=='') {?>
								<center><h4 class="list-group-item d-flex justify-content-between align-items-center" id='résultat'>Quel est le problème de votre PC?</h4></center>
								<div id='réponses' class="container-fluid">
									<br><br> <a href="diagnostic.php?idp=1" class="container-fluid col-sm-5 "><button class="btn btn-primary btn-md btn-block">REFUSE DE DÉMARRER</button></a>
									<a href="diagnostic.php?idp=2" class="container-fluid col-sm-5"><button class="btn btn-primary btn-md btn-block">SE FIGE OCCASIONNELLEMENT</button></a>
									<a href="diagnostic.php?idp=3" class="container-fluid col-sm-5"><button class="btn btn-primary btn-md btn-block"> MENUS RALENTIS</button></a>
									<a href="diagnostic.php?idp=4" class="container-fluid col-sm-5 "><button class="btn btn-primary btn-md btn-block">SE COMPORTE BIZARREMENT</button></a>
									</div>
									<?php }
									else{
										$query="SELECT * FROM résultats WHERE réponseid=$idp";
										$resultat=$pdo->query($query);
										$resultat=$resultat->fetch();
										$isfinal=$resultat['isfinal'];
								if($isfinal==1){
									echo "<br><br><h4 class='list-group-item d-flex justify-content-between align-items-center container-fluid cfinal'>".$resultat['contenu']."</h4>";
								}else{
									echo '<center><h4 class="list-group-item d-flex justify-content-between align-items-center container-fluid">'.$resultat['contenu'].' </h4></center>';
									$query2="SELECT * FROM réponses WHERE idparent=$idp";
									$resultat2=$pdo->query($query2);
									while($resultat22=$resultat2->fetch()){
										echo "<br><a href='diagnostic.php?idp=".$resultat22['id']."'><button class='container-fluid col-sm-10 btn btn-primary btn-md'>".$resultat22['contenu']."</button></a><br>";
									}
								}
										}
										?>

						</div>

                        </div>
                        <div class="panel-footer"></div>
                    </div>

                </div>

            </div>

            <div class="col-sm-2">

                <td>
                    <center><img class="img-responsive img-rounded" src="logoEnsem.png" alt="Test2" width="120" height="100"></center>
                </td>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-inverse navbar-fixed-bottom" style="background-color: #000000;">

        <div class="container-fluid">
            <div  style="background-color: #000052;">

                <p ><font style="color: #ffffff;"><center>© 2024 ENSEM</center></font>

            </div>
        </div>
    </nav>
</body>

</html lang="fr">

