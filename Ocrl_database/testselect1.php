<html>
<head>
<title>ThaiCreate.Com PHP & Oracle Tutorial</title>
</head>
<body><center>
<b><font color="#FF3300" size="6">��ª��;�ѡ�ҹ</font></b>
<br><br><?

$objConnect = oci_connect("zoo","oracle","orcl");
$strSQL = "SELECT * FROM ANIMAL ORDER BY ANIMAL_ID";
$objParse = oci_parse ($objConnect, $strSQL);
oci_execute ($objParse,OCI_DEFAULT);

?>

<table width="600" border="1">
<tr>
<th width="91"> <div align="center">ANIMAL_ID </div></th>
<th width="98"> <div align="center">ANIMAL_TYPE</div></th>
<th width="198"> <div align="center">ANI_PIC </div></th>
<th width="97"> <div align="center">ZONE</div></th>
<th width="59"> <div align="center">JOB_ID </div></th>

</tr>

<?

while($objResult = oci_fetch_array($objParse,OCI_BOTH))
{

?>

<tr>
<td><div align="center"><?=$objResult["ANIMAL_ID"];?></div></td>
<td><?=$objResult["ANI_TYPE_ID"];?></td>
<td><img src ='<?=$objResult["ANI_PIC"];?>'></td>
<td><div align="center"><?=$objResult["PHONE_NUMBER"];?></div></td>
<td align="right"><?=$objResult["JOB_ID"];?></td>

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