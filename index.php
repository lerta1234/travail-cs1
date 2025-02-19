<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale)1.0">
        <title> Home page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
</head>
<body>


<p>BIENVENU MUNDELE</p>

<marquee>TRAVAIL EFFECTUE</marquee>
<?php
 require_once('./config/database.php');
 $db= new ConnexionDB();
 if($db->getConnexion()){
	 echo "Il y a connexion!! Mundele";
 }
 else{
	 echo "Erreur de connexion";
 }
?>


</body>


</html>
