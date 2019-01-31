<?php
include('../boot.php');
 
// default svar
$response = ['loggedIn' => false];
$lyckad = true;
 
// Vi får ett inloggningsförsök
if($request['email']){
  // hämta användaren med detta email i databasen
  $statement = $db->prepare("SELECT * FROM users WHERE email = :email LIMIT 1");
  $statement->execute(array(
    'email' => $request['email']
  ));
  $result = $statement->fetch(PDO::FETCH_ASSOC);
  // jämför lösenorden
  if(password_verify($request['password'], $result['password'])){
    // de stämmer, spara användaren i session
    $_SESSION['user'] = $result;
    // sätt inloggat svar
    $response['loggedIn'] = true;
    $response['user'] = $result;
    // skicka ej lösen ord till frontend  
    unset($response['user']["password"]);
  }
}

// skicka svar till klienten
echo( json_encode($response) );
