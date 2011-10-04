<html>
	<head>
		<title>updateAmimal</title>

	</head>
<center><body>
	<?php
		include("connectOrcl.php");
		$query = oci_parse($conn,'SELECT * FROM ANIMAL JOIN ANIMAL_TYPE USING(ANI_TYPE_ID) JOIN ANIMAL_ZONE USING(ZONE_ID) order by animal_id');
//ANI_SPECIES
		oci_execute($query);
	 ?>
	<table width="1050" border="1">
	<tr>
		<th width="50"> <div align="center">Picture</div></th>
		<th width="100"> <div align="center">Animal_ID </div></th>
		<th width="100"> <div align="center">Animal_name </div></th>
		<th width="100"> <div align="center">Animal_DOB</div></th>
		<th width="100"> <div align="center">Type </div></th>
		<th width="100"> <div align="center">Gender</div></th>
		<th width="100"> <div align="center">Zone</div></th>
		<th width="50"> <div align="center">Edit </div></th>
		<th width="50"> <div align="center">Delete </div></th>

	</tr>
	<?php
		while($objResult = oci_fetch_array($query,OCI_BOTH))
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



	<td align="center"><a href="animal_update.php?aniID=<?=$objResult["ANIMAL_ID"];?>">Edit</a></td>
	<td align="center"><a href="JavaScript:if(confirm('Confirm Delete?')==true){window.location='deleteemp.php?AniID=<?=$objResult["ANIMAL_ID"];?>';}">Delete</a></td>



</tr>
<?
}
?>
</table>
<?
oci_close($conn);
?>
</body></center>
</html>