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