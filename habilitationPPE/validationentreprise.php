

<?php
//ouverture session
session_start();
$_SESSION['ACCES_INDIRECT']= 1;
$_SESSION['username']= $_POST['username'];
echo $_SESSION['username'];
// Validation des donnees envoyées par le formulaire inscription.php

$loginCorrection = $_POST["username"] ;
$mdpCorrection = $_POST["password"];
$mdpCorrection = sha1($mdpCorrection);

// echo htmlspecialchars($loginCorrection);
// echo htmlspecialchars($mdpCorrection);

$baseDeDonnees = new PDO('mysql:host=localhost;dbname=ppe','root','');






//On compare le hash du pseudo entré par l'utilisateur et celui dans la BDD


$reqLoginCorrection = $baseDeDonnees->prepare('SELECT * FROM entreprise WHERE username=:username '.
' AND password =:password ') ;

$reqLoginCorrection->bindValue(':username', $loginCorrection, PDO::PARAM_STR);
$reqLoginCorrection->bindValue(':password', $mdpCorrection, PDO::PARAM_STR);

$reqLoginCorrection->execute();



$nombreLignesRetournees = $reqLoginCorrection->rowCount();

if ($nombreLignesRetournees ==0)
{
	
	header("Location:erreurconnexion_entreprise.php") ;
	
}
else  
{
	header("Location: accueil.html") ;
	
}


$reqLoginCorrection->closeCursor();


?>