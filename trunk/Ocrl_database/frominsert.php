<html>
<head>
<title>INSERT  DATA</title>
</head>
<body><center>
<form action="phpOracleAddSave.php" name="frmAdd" method="post">
<table width="300" border="1">
<tr>
<tr><th width="150"> <div align="left">Animal_ID </div></th><td><div align="left"><input type="text" name="txtid" size="30" ></div></td></tr>
<tr><th width="150"> <div align="left">Animal_name </div></th><td><input type="text" name="txtName" size="30" ></td></tr>
<tr><th width="150"> <div align="left">Animal_DOB</div></th><td><input type="text" name="txtDOB" size="30" ></td>
</tr>
<tr><th width="150"> <div align="left">Id_Father </div></th><td><div align="center"><input type="text" name="txtfather" size="30"></div></td></tr>
<tr><th width="150"> <div align="left">Id_Mother </div></th><td align="right"><input type="text" name="txtMom" size="30" ></td></tr>
<tr><th width="150"> <div align="left">Type </div></th><td align="left" size="">

<select name="type" > 
<option >select    type</option> 
         <? 
		 $objConnect = oci_connect("zoo","oracle","orcl");
	$strSQL = "SELECT ANI_TYPE_NAME,ANI_TYPE_ID FROM ANIMAL_TYPE";
	$objParse = oci_parse ($objConnect, $strSQL);
	oci_execute ($objParse);
				
            while($objResult = oci_fetch_array($objParse,OCI_BOTH)) 
            { 
         ?> 
			
            <option  value="<?=$objResult["ANI_TYPE_ID"];?>" ><?=$objResult["ANI_TYPE_NAME"]?></option> 
         <? 
            } 
         ?> 
         </select></td></tr>
<tr><th width="150"> <div align="left">Gender</div></th><td align="left"><select name="sex" > 
<option >select sex</option> 
  
            <option  value="M" >male</option> 
			<option  value="F" >female</option>
         
         </select></td></tr></td></tr>
<tr><th width="150"> <div align="left">Zone</div></th><td align="left"><select name="zone" > 
<option >select  zone</option> 
         <? 
		 $objConnect = oci_connect("zoo","oracle","orcl");
	$strSQL = "SELECT ZONE_NAME,ZONE_ID FROM ANIMAL_ZONE";
	$objParse = oci_parse ($objConnect, $strSQL);
	oci_execute ($objParse);
				
            while($objResult = oci_fetch_array($objParse,OCI_BOTH)) 
            { 
         ?> 
			
            <option  value="<?=$objResult["ZONE_ID"];?>" ><?=$objResult["ZONE_NAME"]?></option> 
         <? 
            } 
         ?> 
         </select></td></tr>
<tr><th width="150"> <div align="left">Species</div></th><td align="left"><select name="speci" > 
<option >select   Species</option> 
         <? 
		 $objConnect = oci_connect("zoo","oracle","orcl");
	$strSQL = "SELECT ANI_SPECIES_NAME,ANI_SPECIES_ID FROM ANI_SPECIES";
	$objParse = oci_parse ($objConnect, $strSQL);
	oci_execute ($objParse);
				
            while($objResult = oci_fetch_array($objParse,OCI_BOTH)) 
            { 
         ?> 
			
            <option  value="<?=$objResult["ANI_SPECIES_ID"];?>" ><?=$objResult["ANI_SPECIES_NAME"]?></option> 
         <? 
            } 
         ?> 
         </select></td></tr>
<tr><th width="150"> <div align="left">Picture</div></th><td align="right"><input type="text" name="txtPic" size="30" ></td>

  <tr ><td width="150" ><td align="right"><input type="submit" name="submit" value="submit" size="5"></td></td></tr>
</table> </form></center>
</body>
</html>