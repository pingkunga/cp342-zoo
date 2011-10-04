<?php  
session_start();

if(isset($_SESSION["name"])){
	
	
	echo "<center><h1>welcome<br></h1><h1>".$_SESSION["name"]."</h1></center>";
}
else{
$result = "error";

}
?>
<html>
<body bgcolor='#8B8386'>
<center><img src= "http://i185.photobucket.com/albums/x108/b-fore/zoo/simply.gif"/></center>
</body>
</html>