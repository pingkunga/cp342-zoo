<html>
<head>
<title>ThaiCreate.Com PHP & Oracle Tutorial</title>
</head>
<body><center>

<br><br><?

$objConnect = oci_connect("zoo","oracle","orcl");
$strSQL = "SELECT ANI_SPECIES_NAME,ANI_DES,ZONE_NAME,ANI_PIC FROM ANI_SPECIES 
JOIN ANIMAL_ZONE USING(ZONE_ID) WHERE ANI_SPECIES_ID LIKE '033'";
$objParse = oci_parse ($objConnect, $strSQL);
oci_execute ($objParse);
?>

<table width="600" border="1">
<tr>
<th width="600"> <div align="center">PICTURE </div></th>
</tr>

<?

while($objResult = oci_fetch_array($objParse,OCI_BOTH))
{

?>
<tr><td align="center"><img src ='<?=$objResult["ANI_PIC"];?>'></td></tr></table>
<table width="600" border="1">
<tr><th width="100"><div align="center">SPICIES </div></td><td width="500" align="left"><?=$objResult["ANI_SPECIES_NAME"];?></td></tr>
<tr><th width="100"><div align="center">DESC </div></td><td width="500" align="left"><?=$objResult["ANI_DES"];?></td></tr>
<tr><th width="100"><div align="center">ZONE </div></td><td width="500" align="left"><?=$objResult["ZONE_NAME"];?></td></tr>

<?
}
?>

</table>
<?
oci_close($objConnect);

?>
</center>
</body>
</html>