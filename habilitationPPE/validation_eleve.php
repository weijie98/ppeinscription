

<?php
//ouverture session
session_start();
$_SESSION['ACCES_INDIRECT']= 1;
$_SESSION['username']= $_POST['username'];
//echo $_SESSION['username'];
  //connection au serveur
  $cnx = new PDO('mysql:host=localhost;dbname=ppe;charset=utf8', 'root', '');
 
 If (isset($_POST['nom']) AND isset($_POST['prenom']) AND isset($_POST['username']) AND isset($_POST['password']) AND isset($_POST['email'])  ) 
{
	
  //récupération des valeurs des champs:
  //nom:
  $nom     = $_POST["nom"] ;
  //prenom:
 
  $prenom = $_POST["prenom"] ;
  
  //adresse:
  $username = $_POST["username"] ;
   
  //code postal:
  $password       = $_POST["password"] ;
  $password = sha1($password);
  $confirmation = $_POST["confirmpassword"];
  $confirmation = sha1($confirmation);
  
 
  $email=$_POST['email'];
  
 
  if (!isset($_POST['telephone'])){
	  
  $telephone = "NULL";
  }
  else {
	  $telephone=$_POST['telephone'];
  }
 
  if (!isset($_POST['adresse'])) {
	  $adresse= "NULL";
  }
  else {
	  $adresse=$_POST['adresse'];
  }
 
if ($password == $confirmation)
{
 
  //création de la requête SQL:
  $stmt = $cnx->prepare("INSERT INTO eleves (username, password, prenom, nom, email,adresse,telephone) VALUES (:username, :password, :prenom, :nom, :email,:adresse,:telephone)");

 $stmt->bindParam(':username', $username);
 $stmt->bindParam(':password', $password);
 $stmt->bindParam(':prenom', $prenom);
 $stmt->bindParam(':nom', $nom);
 $stmt->bindParam(':email', $email);
 $stmt->bindParam(':adresse', $adresse);
 $stmt->bindParam(':telephone', $telephone);

 
 $resultat = $stmt->execute() ;
 
  //affichage des résultats, pour savoir si l'insertion a marchée:
  

  if($resultat)
  {
    header("Location: validinscription.php") ;
	
	
  }
  else
  {
	session_destroy() ;
	header("Location: erreurinscription.php") ;
  }
 
 
}

else 
{
	session_destroy() ;
	header("Location: mauvaismdp.php");

}

}
else 
{
	header("Location: identifiant_manquant.html");
}
?>