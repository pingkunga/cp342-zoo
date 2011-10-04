<?
$username="zoo";
$password = "oracle";
$dbname = "orcl";
$conn = oci_connect($username,$password,$dbname);
if($conn)
{
	echo "Connect to the Oracle Sucesfully <br>";
	echo "Connect number = $conn";
	oci_close($conn);
}
else
{
	echo "Can not connect to the Oracle Database,please Contact the Oracle DBA";
}
?>