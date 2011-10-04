<html>
<head>
<title>update_employees</title>
</head>
<center><body>
<?
$objConnect = oci_connect("zoo","oracle","orcl");
$strSQL = "SELECT EMP_ID,FIRST_NAME,LAST_NAME,JOB_NAME,JOB_TITLE,PHONE_NUMBER,SALARY
FROM ZOO_EMPLOYEES ZM JOIN ZOO_JOBS ZJ  ON(ZM.JOB_ID = ZJ.JOB_ID) ORDER BY EMP_ID";
$objParse = oci_parse ($objConnect, $strSQL);
oci_execute ($objParse,OCI_DEFAULT);

ECHO $NAME;
?>

<table width="1050" border="1">
<tr>
<th width="50"> <div align="center">EMPLOYEES_ID</div></th>
<th width="100"> <div align="center">NAME</div></th>
<th width="100"> <div align="center">JOB</div></th>
<th width="100"> <div align="center">JOB_TITLE</div></th>
<th width="100"> <div align="center">PHONE</div></th>
<th width="100"> <div align="center">SALARY</div></th>
<th width="100"> <div align="center">EDIT</div></th>
<th width="100"> <div align="center">DELETE</div></th>

</tr>
<?
while($objResult = oci_fetch_array($objParse,OCI_BOTH))
{
?>
<tr>
<td align="right"><?=$objResult["EMP_ID"];?></td>
<td><div align="center"><?=$objResult["FIRST_NAME"]."  ".$objResult["LAST_NAME"];?></div></td>
<td><?=$objResult["JOB_NAME"];?></td>
<td><?=$objResult["JOB_TITLE"];?></td>
<td align="right"><?=$objResult["PHONE_NUMBER"];?></td>
<td align="right"><?=$objResult["SALARY"];?></td>




<td align="center"><a href="updateemp.php?empID=<?=$objResult["EMP_ID"];?>">Edit</a></td>
<td align="center"><a href="JavaScript:if(confirm('Confirm Delete?')==true){window.location='deleteemp2.php?EmpID=<?=$objResult["EMP_ID"];?>';}">Delete</a></td>



</tr>
<?
}
?>
</table>
<?
oci_close($objConnect);
?>
</body></center>
</html>