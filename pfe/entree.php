<html>
<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport"  initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./css/entree.css">
        <title>entree</title>
    </head>
<body>
<header >
            <img class="logo" src="./images/logo eot.jpg" alt="">
            <ul>
              <li><a href="./inventaire.php">Inventaire</a></li>
              <li><a href="./stock.php">Stock</a></li>
              <li><a href="./entree.php">Entrée produit</a></li>
              <li><a href="./sortie.php">Sortie produit</a></li>
              <li><a href="./administration.php">Administration</a></li>
           </ul>
        </header>
        <section>

        <article><h4>Entrer Produit</h4></article>
        <form action="" methode='GET'>

      
            <fieldset>
<label>OF</label> <input type="text" name="of" ></br>
<label>RefP</label><input type="text" name="refp"></br>
<label>Quantite</label><input type="text" name="qte_stocke"></br>
<label>Emplacement</label><input type="text" name="emplacement"></br>
<div id="buttns">
<ul class="actions">
		<li><input type="submit" name="s" > </li>

		<li><input type="reset" value="Annuler" > Reset</button></li>
	</ul>
    <button id="nv"><a href="./entree2.php">Créer un nouveau</a> </button>
</div>
            </fieldset>
</from>


            <?php




$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gestion de stock psf";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());

}


if (isset($_GET['s'])){
$refp = $_GET['refp'];
$qte_stocke = $_GET['qte_stocke'];
$emplacement = $_GET['emplacement'];


echo '<script>alert("Welcome to Geeks for Geeks")</script>';


$sql = "INSERT INTO `stock` (`refp`, `emplacement`, `cadence`)
VALUES ('$refp', '$emplacement', '$qte_stocke')";
$result=mysqli_query($conn, $sql);
if ($result) {
echo "Data Insered";
   header('Location: entree.php');  
} 
else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);

  echo "wowooo Insered";

}


}
mysqli_close($conn);

?>

           
</body>
    </html>