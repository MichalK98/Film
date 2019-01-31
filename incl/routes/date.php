<?php
include('../boot.php');

// vi hämtar svaret ifrån databasen
$statement = $db->prepare("SELECT title, images, Date, Salon 
FROM movies, schedule 
WHERE movies.ID = movieID 
GROUP BY schedule.ID");
$statement->execute();
$response = $statement->fetchall(PDO::FETCH_ASSOC);

// skicka svar till klienten
echo( json_encode($response) );