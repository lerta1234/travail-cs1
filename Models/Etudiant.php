<?php
 class Etudiant{
	 private $table='etudiant';
	 private $connexion=null;
	 //propriétés membres de la classe
	 public $Matricule;
	 public $Nom;
	 public $postnom;
	 public $Prenom;
	 public $Sexe;
	 public $Codpromo;
	 
	 public function __construct($db)
	 {
		 if($this->connexion==null){
			 $this->connexion=$db;
		 }
	 }
	 public function lireEtudiant(){
		 $sql="select * from $this->table";
	     $req=$this->connexion->query($sql);
		 return $req;
	 }
	  public function CreerEtudiant(){
		$sql="INSERT INTO $this->table(Matricule,Nom,postnom,Prenom,Sexe,CodPromo) VALUES('".$this->Matricule."','".$this->Nom."','".$this->postnom."','".$this->Prenom."','".$this->Sexe."','".$this->Codpromo."')";
		 // Préparation de la réqête
		 $req=$this->connexion->prepare($sql);
 		 // éxecution de la reqête
		 $re=$req->execute();
		 if ($re) {
			 return true;
		 } else {
			 return false;
		 }
	 }
	 public function ModifierEtudiant(){
		$sql="Update $this->table set  Nom='".$this->Nom."' , postnom='".$this->postnom."',prenom='".$this->Prenom."',sexe='".$this->Sexe."',Codpromo='".$this->Codpromo."' where Matricule='".$this->Matricule."'";
		 // Préparation de la réqête
		 $req=$this->connexion->prepare($sql);
 		 // éxecution de la reqête
		 $re=$req->execute();
		 if ($re) {
			 return true;
		 } else {
			 return false;
		 }
	 }
 
	 
 }
?>