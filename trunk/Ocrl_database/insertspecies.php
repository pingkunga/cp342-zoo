<html>
<head>
<title>ThaiCreate.Com PHP & Oracle Tutorial</title>
</head>
<body>
<?
 $objConnect = oci_connect("zoo","oracle","orcl");
$strSQL = "INSERT INTO ANI_SPECIES ";
$strSQL .="(ANI_SPECIES_ID ";
$strSQL .=",ANI_SPECIES_NAME,ANI_DES,ZONE_ID,ANI_PIC) VALUES ";
$strSQL .="('".$_POST["txtid"]."','".$_POST["txtName"]."','".$_POST["des"]."' ";
$strSQL .=",'".$_POST["zone"]."','".$_POST["urlpic"]."' )";

$objParse = oci_parse($objConnect, $strSQL);
$objExecute = oci_execute($objParse, OCI_DEFAULT);
if($objExecute)
{
	oci_commit($objConnect); //*** Commit Transaction ***//
	echo "Save Done.";
	echo "<META HTTP-EQUIV=\"refresh\"  CONTENT=\"2;URL=fromedit.php\" >";
}
else
{
	oci_rollback($objConnect); //*** RollBack Transaction ***//
	echo "Error Save [".$strSQL."";
}

oci_close($objConnect);
?>
</body>
</html>