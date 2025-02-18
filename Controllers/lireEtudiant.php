<?php
// Les entêtes requises
header("Access-Control-Allow-Origin:*");
header("Content-type: application/json; charset= UTF-8");
header("Access-Control-Allow-Methods: GET");

require_once("../config/database.php");
require_once("../models/etudiant.php");

if($_SERVER['REQUEST_METHOD']=='GET'){
	$bdd=new ConnexionDB();
	$db1=$bdd->getConnexion();
	//instanciation de la classe etudiant
	$etudiant= new Etudiant($db1);
	$recup=$etudiant->lireEtudiant();
	if($recup->rowCount()>0){
		$data=[];
		$data[]=$recup->fetchAll();
		//renvoie de données
		echo json_encode($data);
	}
	
}
else{
	echo json_encode(['Message'=>"Methode n'autorisée Mundele" ]);
}
?>