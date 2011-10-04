<html>
<head>
<title>ThaiCreate.Com PHP & Oracle Tutorial</title>
</head>
<body>
<?
 $objConnect = oci_connect("zoo","oracle","orcl");
$strSQL = "INSERT INTO ANIMAL ";
$strSQL .="(ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_ID,ANI_GENDER,ZONE_ID ";
$strSQL .=",ANI_SPECIES_ID,ANI_PIC) VALUES ";
$strSQL .="('".$_POST["txtid"]."','".$_POST["txtName"]."','".$_POST["txtDOB"]."' ";
$strSQL .=",'".$_POST["txtfather"]."','".$_POST["txtMom"]."','".$_POST["type"]."' ";
$strSQL .=",'".$_POST["sex"]."','".$_POST["zone"]."','".$_POST["speci"]."','".$_POST["txtPic"]."') ";
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