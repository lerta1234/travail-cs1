<?php
// Les entêtes requises
header("Access-Control-Allow-Origin:*");
header("Content-type: application/json; charset= UTF-8");
header("Access-Control-Allow-Methods: POST");

require_once '../config/Database.php';
require_once '../models/Etudiant.php';

if ($_SERVER['REQUEST_METHOD'] === "POST") {
    // On instancie la base de données
    $database = new ConnexionDB();
    $db = $database->getConnexion();

    // On instancie l'objet etudiant
    $etudiant = new Etudiant($db);

    // On récupère les infos envoyées
    $data = json_decode(file_get_contents("php://input"));
    if (!empty($data->Matricule) && !empty($data->Nom)) {
        // On hydrate l'objet etudiant
        $etudiant->Matricule = htmlspecialchars($data->Matricule);
        $etudiant->Nom = htmlspecialchars($data->Nom);
        $etudiant->postnom = htmlspecialchars($data->postnom);
        $etudiant->Prenom = htmlspecialchars($data->Prenom);
        $etudiant->Sexe = htmlspecialchars($data->Sexe);
        $etudiant->Codpromo = htmlspecialchars($data->Codpromo);

        $result = $etudiant->CreerEtudiant();
        if ($result) {
            http_response_code(201);
            echo json_encode(['message' => "étudiant ajouté avec sucès"]);
        } else {
            http_response_code(503);
            echo json_encode(['message' => "L'ajout de l'étudiant a échoué"]);
        }
    } else {
        echo json_encode(['message' => "Les données ne sont au complet"]);
    }
} else {
    http_response_code(405);
    echo json_encode(['message' => "La méthode n'est pas autorisée"]);
}
?>