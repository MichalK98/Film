<?php
include('../boot.php');

// vi hämtar svaret ifrån databasen
$statement = $db->prepare("SELECT * FROM movies WHERE ID = :id");



$statement->execute(array(id=>$_GET["id"]));
$response = $statement->fetch(PDO::FETCH_ASSOC);

// skicka svar till klienten
echo( json_encode($response) );