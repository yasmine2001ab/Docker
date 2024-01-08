<?php
$host = 'db'; // Nom utilisé dans le docker-compose.yml
$user = 'tpreseau';
$password = 'monpassword';
$db = 'virtualization';


$conn = new mysqli($host,$user,$password,$db);
if ($conn) {
    echo "Erreur de connexion à MySQL";
} else {
    echo "Connexion à MySQL réussie !";
    mysqliclose($conn);
}
?>
