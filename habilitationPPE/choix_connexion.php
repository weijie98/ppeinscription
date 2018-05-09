
 <?php 

$value = $_POST["choix"] ;
 
	
	if ($value == "Eleve")
	{
	header("Location:connexion_eleve.php");
	}
	
	else if($value == "Entreprise")
	{
		header("Location:connexion_entreprise.php");
	}
	else
	{
		header("Location:connexion_professeur.php");
	}
	
 ?> 
