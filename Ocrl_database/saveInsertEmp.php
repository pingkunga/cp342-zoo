<html>
<head>
<title>updateEmployee</title>
</head>
<body>
<?php
	include("connectOrcl.php");
	$query = "INSERT INTO ZOO_EMPLOYEES ";
	$query .= "(EMP_ID,FIRST_NAME,LAST_NAME,EMP_DOB,PHONE_NUMBER,JOB_ID,HIRE_DATE,SALARY,MANEGER_ID)";
	$query .= "VALUES ";
	$query .= "('".$_POST["txtEmpID"]."','".$_POST["txtFirstName"]."','".$_POST["txtLastName"]."','".$_POST["txtDOB"]."','".$_POST["txtPhoneNum"]."','".$_POST["txtJob"]."','".$_POST["txtHireDate"]."','".$_POST["txtSalary"]."','".$_POST["txtManeger"]."')";
	
/*	echo "<pre>".$query;
	print_r($_POST);
*/
$objParse = oci_parse($conn, $query);
$objExecute = oci_execute($objParse, OCI_DEFAULT);
if($objExecute)
{
	oci_commit($conn); //*** Commit Transaction ***//
	echo "Save Done.";
	<META HTTP-EQUIV="refresh" CONTENT="3;URL=login2.php">
}
else
{
	oci_rollback($conn); //*** RollBack Transaction ***//
	echo "Error Save ".$query."";
}
oci_close($conn);
?>
</body>
</html>