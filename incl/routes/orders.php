<?php
include('../boot.php');

$response = false;
 
if(!empty($_SESSION['user']['ID'])){
  $statement = $db->prepare("SELECT * FROM orders WHERE ID = :user_ID");
  $statement->execute(array('user_ID' => $_SESSION['user']['ID']));
  $response = $statement->fetchAll(PDO::FETCH_ASSOC);
}
 
// skicka svar till klienten
echo( json_encode($response) );