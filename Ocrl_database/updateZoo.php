<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> Update </title>
  <meta name="Generator" content="updateAnimal">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
 </head>

 <body>
	<?php
		include("connectOrcl.php");
		$query = oci_parse($conn,'SELECT * FROM ANIMAL');
		oci_execute($query);
	 ?>
	 <table width="600" border="1">
		<tr>
			<th width="91"> <div align="center">ANIMAL_ID </div></th>
			<th width="98"> <div align="center">ANIMAL_NAME </div></th>
			<th width="198"> <div align="center">ANIMAL_TYPE </div></th>
			<th width="97"> <div align="center">ZONE </div></th>
		</tr>
		<?php
			while($row = oci_fetch_array($query,OCI_BOTH))
			{
		?>
		<tr>
		<td><div align="center"><?=$row["ANIMAL_ID"];?></div></td>
		<td><?=$row["ANIMAL_NAME"];?></td>
		<td><?=$row["ANI_TYPE_ID"];?></td>
		<td><div align="center"><?=$row["ZONE_ID"];?></div></td>
		<td align="center"><a href="animal_update.php?aniID=<?=$row["ANIMAL_ID"];?>">Edit</a></td>
		</tr>
		<?
			}
		?>
	 </table>
	 <?
		oci_close($conn);
	?>
 </body>
</html>