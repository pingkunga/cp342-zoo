<html>
<head>
<title>ThaiCreate.Com PHP & Oracle Tutorial</title>
</head>
<body>

<?

$objConnect = oci_connect("hr","oracle","orcl");
$strSQL = "SELECT * FROM COSTOMER1 ORDER BY EMPLOYEE_ID";
$objParse = oci_parse($objConnect, $strSQL);
//phpinfo();
oci_execute($objParse,OCI_DEFAULT);

?>

<table width="600" border="1">
<tr>
<th width="91"> <div align="center">Student_ID</div></th>
<th width="98"> <div align="center">First_Name </div></th>
<th width="198"> <div align="center">Last_Name </div></th>
<th width="97"> <div align="center">Section</div></th>

</tr>
<?

while($objResult = oci_fetch_array($objParse,OCI_BOTH))
{
?>

<tr>
<td><div align="center"><?=$objResult["STUDENT_ID"];

?></div></td>

<td><?=$objResult["FIRST_NAME"];?></td>

<td><?=$objResult["LAST_NAME"];?></td>

<td><div align="center"><?=$objResult["SECTION"];?></div></td>

</tr>
<?
}
?>		
</table>
<?

oci_close($objConnect);

?>
</body>
</html>