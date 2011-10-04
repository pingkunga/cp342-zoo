<html>
<head>
<title>Update</title></head>
<body>
<?
$objConnect = oci_connect("zoo","oracle","orcl");
//$strSQL1= "SELECT ANI_TYPE_ID FROM ANIMAL_TYPE WHERE ANI_TYPE_NAME like '".$_post["type"]."' ";
//$objParse1 = oci_parse ($objConnect, $strSQL1);
//oci_execute ($objParse1,OCI_DEFAULT);
//$objResult1 = oci_fetch_array($objParse1);

//echo $objResult1;
//$strSQL2 = "SELECT ZONE_ID FROM ZONE_ID WHERE ZONE_NAME ='".$_post["txtZone"]."' ";
//$objParse2 = oci_parse ($objConnect, $strSQL2);
//oci_execute ($objParse2,OCI_DEFAULT);
//$objResult2 = oci_fetch_array($objParse2);
//echo $_POST["type"];
//$objConnect = oci_connect("zoo","oracle","orcl");
$strSQL = "UPDATE ANIMAL SET ";
$strSQL .=",ANIMAL_NAME = '".$_POST["txtName"]."'  ";
$strSQL .=",ANIMAL_DOB= '".$_POST["txtDOB"]."' ";
$strSQL .=",ID_FATHER= '".$_POST["txtfather"]."' ";
$strSQL .=",ID_MOTHER= '".$_POST["txtMom"]."' ";
$strSQL .=",ANIMAL.ANI_TYPE_ID = '".$_POST["type"]."' ";
$strSQL .=",ZONE_ID= '".$_POST["txtZone"]."' ";
$strSQL .=",ANI_PIC= '".$_POST["txtPic"]."' ";
$strSQL .="WHERE ANIMAL_ID = '".$_GET["AniID"]."' ";
$objParse = oci_parse($objConnect,$strSQL);
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