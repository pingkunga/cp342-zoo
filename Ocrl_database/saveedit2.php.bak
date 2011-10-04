<html>
<head>
<title>Editsave</title>
</head>
<body>
<?
$objConnect = oci_connect("zoo","oracle","orcl");
echo $_POST["type"];

$strSQL = "UPDATE ANIMAL SET ";
$strSQL .=",ANIMAL_NAME = '".$_POST["txtName"]."'  ";
$strSQL .=",ANIMAL_DOB= '".$_POST["txtDOB"]."' ";
$strSQL .=",ID_FATHER= '".$_POST["txtfather"]."' ";
$strSQL .=",ID_MOTHER= '".$_POST["txtMom"]."' ";
//$strSQL .=",ANI_TYPE_ID = '".$typey."' ";
$strSQL .=",ZONE_ID= '".$_POST["txtZone"]."' ";
$strSQL .=",ANI_PIC= '".$_POST["txtPic"]."' ";
$strSQL .="WHERE ANIMAL_ID = '".$_GET["AniID"]."' ";
$objParse = oci_parse($objConnect, $strSQL);
$objExecute = oci_execute($objParse, OCI_DEFAULT);
if($objExecute)
{
oci_commit($objConnect); //*** Commit Transaction ***//
echo "Save Done.";
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
