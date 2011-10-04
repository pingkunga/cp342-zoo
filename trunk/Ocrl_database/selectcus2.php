<html>
<head>
<title>ThaiCreate.Com PHP & Oracle Tutorial</title>
</head>
<body><center>
<b><font color="#FF3300" size="6">รายชื่อพนักงาน</font></b>
<br><br><?

$objConnect = oci_connect("zoo","oracle","orcl");
$strSQL = "SELECT * FROM EMPLOYEES ORDER BY EMPLOYEE_ID";
$objParse = oci_parse ($objConnect, $strSQL);
oci_execute ($objParse,OCI_DEFAULT);

?>

<table width="600" border="1">
<tr>
<th width="91"> <div align="center">EMPLOYEE_ID </div></th>
<th width="98"> <div align="center">FIRST_NAME </div></th>
<th width="198"> <div align="center">EMAIL </div></th>
<th width="97"> <div align="center">PHONE_NUMBER </div></th>
<th width="59"> <div align="center">JOB_ID </div></th>
<th width="71"> <div align="center">SALARY</div></th>
<th width="30"> <div align="center">Delete </div></th>

</tr>

<?

while($objResult = oci_fetch_array($objParse,OCI_BOTH))
{

?>

<tr>
<td><div align="center"><?=$objResult["EMPLOYEE_ID"];?></div></td>
<td><?=$objResult["FIRST_NAME"];?></td>
<td><?=$objResult["EMAIL"];?></td>
<td><div align="center"><?=$objResult["PHONE_NUMBER"];?></div></td>
<td align="right"><?=$objResult["JOB_ID"];?></td>
<td align="right"><?=$objResult["SALARY"];?></td>
<td align="center"><a href="deleteemp.php?EmpID=<?=$objResult["EMPLOYEE_ID"];?>">Delete</a></td>
</tr>

<?
}
?>

</table>

<?

oci_close($objConnect);

?>

</center></body>
</html>