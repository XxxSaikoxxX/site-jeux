<?php
$serverName = "localhost"; // Adresse du serveur de base de données
$userName = "root"; // Nom d'utilisateur de la base de données
$password = ""; // Mot de passe de la base de données
$dbName = "site_jeux"; // Nom de la base de données

// Créer une connexion à la base de données
$conn = new mysqli($serverName, $userName, $password, $dbName);

// Vérifier la connexion
if ($conn->connect_error) {
    die("Échec de la connexion : " . $conn->connect_error);
}

echo "Connexion réussie !";