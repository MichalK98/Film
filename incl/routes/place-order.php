<?php
include('../boot.php');
 


  $statement = $db->prepare("INSERT INTO orders SET titel = :titel, plats = :plats, pris = :pris");
  try{
    $result = $statement->execute(array(
        'titel' => $request['titel'],
        'plats' => $request['plats'],
        'pris' => $request['pris']
        
    ));
  }catch(PDOException $e) {
    $result = $e;
  }
 

 
// skicka svar till klienten
echo( json_encode($result) );
