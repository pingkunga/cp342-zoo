<html>
<head>
<title>ThaiCreate.Com PHP & Oracle Tutorial</title>
</head>
<body>
<?
$objConnect = oci_connect("zoo","oracle","orcl");
$strSQL = "DELETE FROM ANIMAL ";
$strSQL .="WHERE ANIMAL_ID = '".$_GET["AniID"]."' ";
$objParse = oci_parse($objConnect, $strSQL);
$objExecute = oci_execute($objParse, OCI_DEFAULT);
if($objExecute)
{
oci_commit($objConnect); //*** Commit Transaction ***//
echo "Record Deleted.";
echo "<META HTTP-EQUIV=\"refresh\"  CONTENT=\"2;URL=fromedit.php\" >";
}
else
{
oci_rollback($objConnect); //*** RollBack Transaction ***//
echo "Error Save ".$strSQL."";
}
oci_close($objConnect);
?>
</body>
</html>