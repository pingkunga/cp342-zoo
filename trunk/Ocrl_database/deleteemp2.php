<html>
<head>
<title>employees</title>
</head>
<body>
<?
$objConnect = oci_connect("zoo","oracle","orcl");
$strSQL = "DELETE FROM ZOO_EMPLOYEES ";
$strSQL .="WHERE EMP_ID = '".$_GET["empID"]."' ";
$objParse = oci_parse($objConnect, $strSQL);
$objExecute = oci_execute($objParse, OCI_DEFAULT);
if($objExecute)
{
oci_commit($objConnect); //*** Commit Transaction ***//
echo "Record Deleted.";
echo "<META HTTP-EQUIV=\"refresh\"  CONTENT=\"2;URL=showemp.php\" >";
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