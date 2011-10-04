<html>
<head>
<title>INSERT_EMPLOYEES</title>
</head>
<body>
<?
 $objConnect = oci_connect("zoo","oracle","orcl");
$strSQL = "INSERT INTO ZOO_EMPLOYEES ";
$strSQL .="(EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANAGER_ID)";
$strSQL .="VALUES ";
$strSQL .="('".$_POST["txtid"]."','".$_POST["firstname"]."','".$_POST["lastname"]."' ";
$strSQL .=",'".$_POST["empdob"]."','".$_POST["phone"]."','".$_POST["job"]."' ";
$strSQL .=",'".$_POST["hire"]."','".$_POST["salary"]."','".$_POST["managerid"]."')";
$objParse = oci_parse($objConnect, $strSQL);
$objExecute = oci_execute($objParse, OCI_DEFAULT);
if($objExecute)
{
	oci_commit($objConnect); //*** Commit Transaction ***//
	echo "Save Done.";
	echo "<META HTTP-EQUIV=\"refresh\"  CONTENT=\"2;URL=fromeditemp.php\" >";
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