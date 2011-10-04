<html>
<head>
<title>updateAmimal</title>
</head><center>
<body>
<form action="saveUpdateZoo.php?aniID=<?=$_GET["aniID"];?>" name="frmEdit" method="post">
<?
	include("connectOrcl.php");
	$query = oci_parse ($conn, "SELECT * FROM ANIMAL JOIN ANIMAL_TYPE USING (ANI_TYPE_ID) WHERE ANIMAL_ID = '".$_GET["aniID"]."' ");
	$SQLType = oci_parse ($conn, "SELECT * FROM ANIMAL_TYPE");
	$SQLZone = oci_parse($conn,"SELECT * FROM ANIMAL_ZONE");
	$SQLSpecies = oci_parse($conn,"SELECT * FROM ANI_SPECIES");

	//execute SQL
	oci_execute ($query,OCI_DEFAULT);
	oci_execute ($SQLType,OCI_DEFAULT);
	oci_execute ($SQLZone,OCI_DEFAULT);
	oci_execute ($SQLSpecies,OCI_DEFAULT);
	
	$objResult = oci_fetch_array($query);

	
	if(!$objResult)
	{
		echo "Not found aniID=".$_GET["aniID"];
	}
	else
	{
?>
<table width="400" border="1">
		<tr>
			<tr><th width="200"> <div align="center">ANIMAL_ID </div></th><td><div align="center"><input type="text" name="txtAnimalID" size="20" value="<?=$objResult["ANIMAL_ID"];?>"></div></td></tr>

			<tr><th width="200"> <div align="center">ANIMAL_NAME </div></th><td><div align="center"><input type="text" name="txtName" size="20" value="<?=$objResult["ANIMAL_NAME"];?>"></div></td></tr>

			<tr><th width="200"> <div align="center">ANIMAL_DOB </div></th><td><div align="center"><input type="text" name="txtDate" size="20" value="<?=$objResult["ANIMAL_DOB"];?>"></div></td></tr>

			<tr><th width="200"> <div align="center">ID_FATHER </div></th><td><div align="center"><input type="text" name="txtFather" size="20" value="<?=$objResult["ID_FATHER"];?>"></div></td></tr>

			<tr><th width="200"> <div align="center">ID_MOTHER </div></th><td><div align="center"><input type="text" name="txtMather" size="20" value="<?=$objResult["ID_MOTHER"];?>"></div></td></tr>
<!-- -->
			<tr><th width="200" > <div align="center">Type </div></th><td><div align="center">
			<select id="txtType" name="txtType" style="width:137px">
			<?php
				while($row = oci_fetch_array($SQLType,OCI_BOTH))
				{
			?>
				<option value="<?=$row["ANI_TYPE_ID"];?>" <?php echo ($row["ANI_TYPE_ID"] == $objResult["ANI_TYPE_ID"])?'selected="selected"':''?> ><?=$row["ANI_TYPE_NAME"];?></option>
			<?php
				}
			?>
			</select>
			</div></td></tr>
<!-- -->
			<tr><th width="200"> <div align="center">ANI_GENDER </div></th><td><div align="center"><input type="text" name="txtGender" size="20" value="<?=$objResult["ANI_GENDER"];?>"></div></td></tr>

			<tr><th width="200"> <div align="center">ZONE </div></th><td><div align="center">
			
<!-- -->	<select id="txtZone" name="txtZone" style="width:137px">
			<?php
				while($row = oci_fetch_array($SQLZone,OCI_BOTH))
				{
			?>
				<option value="<?=$row["ZONE_ID"];?>" <?php echo ($row["ZONE_ID"] == $objResult["ZONE_ID"])?'selected="selected"':''?> ><?=$row["ZONE_NAME"];?></option>
			<?php
				}
			?>
<!-- -->	</select>
			</div></td></tr>
			
			<tr><th width="200"> <div align="center">Species </div></th><td><div align="center">
			<select id="txtSpecies" name="txtSpecies" style="width:137px">
			<?php
				while($row = oci_fetch_array($SQLSpecies,OCI_BOTH))
				{
			?>
				<option value="<?=$row["ANI_SPECIES_ID"];?>" <?php echo ($row["ANI_SPECIES_ID"] == $objResult["ANI_SPECIES_ID"])?'selected="selected"':''?> ><?=$row["ANI_SPECIES_NAME"];?></option>
			<?php
				}
			?>
<!-- -->	</select>
			</div></td></tr>

			<tr><th width="200"> <div align="center">Animal pic </div></th><td><div align="center"><input type="text" name="txtpic" size="20" value="<?=$objResult["ANI_PIC"];?>"></div></td></tr>
			
			
			
			

		</tr>
  </table>
  <input type="submit" name="submit" value="submit">
  <?
  }
  oci_close($conn);
  ?>
  </form>
</body></center>
</html>