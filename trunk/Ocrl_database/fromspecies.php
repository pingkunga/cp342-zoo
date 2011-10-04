<html>
<head>
<title>INSERT  DATA</title>
</head>
<body><center>
<form action="insertspecies.php" name="frmAdd" method="post">
<table width="300" border="1">
<tr>
<tr><th width="150"> <div align="left">Species ID : </div></th><td><div align="left"><input type="text" name="txtid" size="30" ></div></td></tr>
<tr><th width="150"> <div align="left">Species Name : </div></th><td><input type="text" name="txtName" size="30" ></td></tr>
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
		 <tr><th width="150"> <div align="left">URL PICTURE</div></th><td align="left"> <input type="text" name="urlpic" size="30" ></div></td></tr>
<tr><th width="150"> <div align="left">Description :</div></th><td align="right"><textarea rows="10" cols="30" name="des">
พิมพ์ลายละเอียดค่ะ.... 
</textarea></td>




  <tr ><td width="170" ><td align="right"><input type="submit" name="submit" value="submit" size="5"></td></td></tr>
</table>
</form></center>
</body>
</html>