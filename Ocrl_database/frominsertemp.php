<html>
<head>
<title>INSERT  DATA</title>
</head>
<body><center>
<form action="phpOracleAddSave2.php" name="frmAdd" method="post">
<table width="300" border="1">
<tr>
<tr><th width="150"> <div align="left">EMPLOYEES_ID </div></th><td><div align="left"><input type="text" name="txtid" size="30" ></div></td></tr>
<tr><th width="150"> <div align="left">FIRST_NAME</div></th><td><input type="text" name="firstname" size="30" ></td></tr>
<tr><th width="150"> <div align="left">LAST_NAME</div></th><td><input type="text" name="lastname" size="30" ></td>
</tr>
<tr><th width="150"> <div align="left">EMP_DOB</div></th><td><div align="center"><input type="text" name="empdob" size="30"></div></td></tr>
<tr><th width="150"> <div align="left">PHONE_NUMBER</div></th><td align="right"><input type="text" name="phone" size="30" ></td></tr>
<tr><th width="150"> <div align="left">JOB_ID</div></th><td align="left" size="">

<select name="job" > 
<option >select JOB</option> 
         <? 
		 $objConnect = oci_connect("zoo","oracle","orcl");
	$strSQL = "SELECT JOB_ID,JOB_NAME FROM ZOO_JOBS";
	$objParse = oci_parse ($objConnect, $strSQL);
	oci_execute ($objParse);
				
            while($objResult = oci_fetch_array($objParse,OCI_BOTH)) 
            { 
         ?> 
			
            <option  value="<?=$objResult["JOB_ID"];?>" ><?=$objResult["JOB_NAME"]?></option> 
         <? 
            } 
         ?> 
         </select></td></tr>
<tr><th width="150"> <div align="left">HIRE_DATE</div></th><td align="left"><input type="text" name="hire" size="30" ></td></tr>
<tr><th width="150"> <div align="left">SALARY</div></th><td align="left"><input type="text" name="salary" size="30" ></td></tr>

  <tr><th width="150"> <div align="left">MANAGER_ID</div></th><td><div align="center"><input type="text" name="managerid" size="30"></div></td></tr>

            
			

  <tr ><td width="150" ><td align="right"><input type="submit" name="submit" value="submit" size="5"></td></td></tr>
</table> </form></center>
</body>
</html>