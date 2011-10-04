<html>
<head>
<title>Search Animal</title>
</head>
<body>
<center>
<form name="frmSearch" method="get" action="<?=$_SERVER['SCRIPT_NAME'];?>">
<table width="599" border="1">
<tr>
<th>Keyword
<input name="txtKeyword" type="text" id="txtKeyword" value="<?=$_GET["txtKeyword"];?>">
<input type="submit" value="Search"></th>
</tr>
</table>
</form>
<?
if($_GET["txtKeyword"] != "")
{
$objConnect = oci_connect("hr","oracle","orcl");
$strSQL = "SELECT  * FROM EMPLOYEES  WHERE (EMPLOYEE_ID LIKE '%".$_GET["txtKeyword"]."%'
or EMAIL LIKE '%".$_GET["txtKeyword"]."%' )  ";
$objParse = oci_parse ($objConnect, $strSQL);
oci_execute ($objParse);
?>
<table width="600" border="1">
<tr>
<th width="91"> <div align="center">EMPLOYEE_ID </div></th>
<th width="98"> <div align="center">FIRST_NAME </div></th>
<th width="198"> <div align="center">EMAIL </div></th>
<th width="97"> <div align="center">PHONE_NUMBER </div></th>
<th width="59"> <div align="center">JOB_ID </div></th>
<th width="71"> <div align="center">SALARY</div></th>

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
</tr>
<?
}
?>
</table>
<?
oci_close($objConnect);
}
?>
</center>
</body>
</html>