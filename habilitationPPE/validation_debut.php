
 <?php 

$value = $_POST["choix"] ;
 
	
	if ($value == "Eleve")
	{
	header("Location:Inscription_eleve.php");
	}
	
	else if($value == "Entreprise")
	{
		header("Location:Inscription_entreprise.php");
	}
	else
	{
		header("Location:Inscription_professeur.php");
	}
	
 ?> 
