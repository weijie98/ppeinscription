
 <?php 

$value = $_POST["choix"] ;
 
	
	if ($value == "Oui")
	{
	header("Location:Debut_connexion.php");
	}
	else
	{
		header("Location:Debut_inscription.php");
	}
	
 ?> 
