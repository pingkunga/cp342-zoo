<html>
<head>
<title>Edit page</title>
</head>
<body><center>
<form action="editsaveemp.php?EMPID=<?=$_GET["EMPID"];?>" name="frmEdit" method="post">
<?
$objConnect = oci_connect("zoo","oracle","orcl");
$strSQL = "SELECT EMP_ID,FIRST_NAME,ZM.JOB_ID,LAST_NAME,JOB_NAME,JOB_TITLE,PHONE_NUMBER,SALARY
FROM ZOO_EMPLOYEES ZM JOIN ZOO_JOBS ZJ  ON(ZM.JOB_ID = ZJ.JOB_ID) ORDER BY EMP_ID
WHERE EMP_ID = '".$_GET["EMPID"]."' ";
$objParse = oci_parse($objConnect, $strSQL);
oci_execute ($objParse,OCI_DEFAULT);
$objResult = oci_fetch_array($objParse);


if(!$objResult)
{
echo "Not found employees Id=".$_GET["EMPID"];
}
else
//echo $temp;
{
 
?>

<table width="300" border="1">
<tr>
<tr><th width="150"> <div align="center">EMPLOYEES_ID</div></th><td><div align="left"><?echo $objResult["EMP_ID"];?></div></td></tr>
<tr><th width="150"> <div align="center">FIRST_NANE </div></th><td><input type="text" name="firstname" size="20" value="<?=$objResult["FIRST_NAME"];?>"></td></tr>
<tr><th width="150"> <div align="center">LAST_NAME</div></th><td><input type="text" name="lastname" size="20" value="<?=$objResult["LAST_NAME"];?>"></td>
</tr>
<tr><th width="150"> <div align="center">BIRTHDAY</div></th><td><div align="center"><input type="text" name="birthday" size="20" value="<?=$objResult["EMP_DOB"];?>"></div></td></tr>
<tr><th width="150"> <div align="center">PHOME_NUMBER </div></th><td align="right"><input type="text" name="phone" size="20" value="<?=$objResult["PHONE_NUMBER"];?>"></td></tr>
<tr><th width="150"> <div align="center">JOB</div></th><td align = "right">

<select name="job" align = "left"> 

    
<option value="<?=$objResult["JOB_ID"];?>"><?=$objResult["JOB_NAME"]?></option> 

         <? 
			$strSQL1 = "SELECT JOB_ID,JOB_NAME FROM ZOO_JOBS";
			$objParse1 = oci_parse ($objConnect, $strSQL1);
			oci_execute ($objParse1,OCI_DEFAULT);	
            while($objResult1 = oci_fetch_array($objParse1,OCI_BOTH)) 
            { 
         ?> 
			
            <option value="<?=$objResult1["JOB_ID"];?>"><?=$objResult1["JOB_NAME"]?></option> 
         <? 
            } 

         ?> 
         </select></td></tr>
<tr><th width="150"> <div align="center">HIRE_DATE</div></th><td align="right"><input type="text" name="hire" size="20" value="<?=$objResult["HIRE_DATE"];?>"></td></tr>
<tr><th width="150"> <div align="center">SALARY</div></th><td align="right"><input type="text" name="salary" size="20" value="<?=$objResult["SALARY"];?>">
<tr><th width="150"> <div align="center">MANAGER_ID</div></th><td align="right"><input type="text" name="salary" size="20" value="<?=$objResult["MANAGER_ID"];?>">





     



</table>
<input type="submit" name="submit" value="submit">
<?
}
oci_close($objConnect);
?>
</form>
</center>
</body>
</html>
