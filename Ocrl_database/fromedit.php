<html>
<head>
<title>updateemployees</title>
</head>
<center><body>
<?
$objConnect = oci_connect("zoo","oracle","orcl");
$strSQL = "SELECT ANIMAL_ID,ANIMAL_NAME,ANIMAL_DOB,ID_FATHER,ID_MOTHER,ANI_TYPE_NAME,ANI_GENDER,ZONE_NAME,ANI_PIC
FROM ANIMAL AM JOIN ANIMAL_TYPE ATY ON(AM.ANI_TYPE_ID=ATY.ANI_TYPE_ID) JOIN ANIMAL_ZONE AZ ON(AM.ZONE_ID = AZ.ZONE_ID)";
$objParse = oci_parse ($objConnect, $strSQL);
oci_execute ($objParse,OCI_DEFAULT);
?>
<table width="1050" border="1">
<tr>
<th width="50"> <div align="center">Picture</div></th>
<th width="100"> <div align="center">Animal_ID </div></th>
<th width="100"> <div align="center">Animal_name</div></th>
<th width="100"> <div align="center">Animal_DOB</div></th>
<th width="100"> <div align="center">Type </div></th>
<th width="100"> <div align="center">Gender</div></th>
<th width="100"> <div align="center">Zone</div></th>
<th width="50"> <div align="center">Edit </div></th>
<th width="50"> <div align="center">Delete </div></th>

</tr>
<?
while($objResult = oci_fetch_array($objParse,OCI_BOTH))
{
?>
<tr>
<td align="right"><img src="<?=$objResult["ANI_PIC"];?>" width="50"  height="50"/></td>
<td><div align="center"><?=$objResult["ANIMAL_ID"];?></div></td>
<td><?=$objResult["ANIMAL_NAME"];?></td>
<td><?=$objResult["ANIMAL_DOB"];?></td>
<td align="right"><?=$objResult["ANI_TYPE_NAME"];?></td>
<td align="right"><?=$objResult["ANI_GENDER"];?></td>
<td align="right"><?=$objResult["ZONE_NAME"];?></td>



<td align="center"><a href="animal_update.php?AniID=<?=$objResult["ANIMAL_ID"];?>">Edit</a></td>
<td align="center"><a href="JavaScript:if(confirm('Confirm Delete?')==true){window.location='deleteemp.php?AniID=<?=$objResult["ANIMAL_ID"];?>';}">Delete</a></td>



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