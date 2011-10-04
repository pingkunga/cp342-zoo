<html>
	<head>
		<title>Employees</title>

	</head>
<center><body>
	<?php
		include("connectOrcl.php");
		$query = oci_parse($conn,'SELECT * FROM ZOO_EMPLOYEES NATURAL JOIN ZOO_JOBS ORDER BY EMP_ID');
		//$SQLself = oci_parse($conn,'SELECT B.FIRST_NAME MANEGER FROM ZOO_EMPLOYEES A  JOIN ZOO_EMPLOYEES B ON A.MANEGER_ID = B.MANEGER_ID') ORDER BY EMP_ID;
		oci_execute($query);
		//oci_execute($SQLsel);
	?>
	<table width="1050" border="1">
	<tr>
		<th width="50"> <div align="center">ID</div></th>
		<th width="100"> <div align="center">NAME </div></th>
		<th width="100"> <div align="center">PHON_NUMBER </div></th>
		<th width="100"> <div align="center">JOB</div></th>
		<th width="100"> <div align="center">SALARY</div></th>
		<th width="100"> <div align="center">MANEGER</div></th>
		<!--<th width="100"> <div align="center">Zone</div></th> -->
		<th width="50"> <div align="center">Edit </div></th>
		<th width="50"> <div align="center">Delete </div></th>

	</tr>
	<?php
		while($objResult = oci_fetch_array($query,OCI_BOTH))
		{
	?>
	<tr>
	<td><div align="center"><?=$objResult["EMP_ID"];?></div></td>
	<td><?=$objResult["FIRST_NAME"]."&nbsp".$objResult["LAST_NAME"];?></td>
	<td><?=$objResult["PHONE_NUMBER"];?></td>
	<td align="right"><?=$objResult["JOB_NAME"];?></td>
	<td align="right"><?=$objResult["SALARY"];?></td>
	<td align="right"><?=$objResult["MANEGER_ID"];?></td>



	<td align="center"><a href="updateEmp?empID=<?=$objResult["EMP_ID"];?>">Edit</a></td>
	<td align="center"><a href="JavaScript:if(confirm('Confirm Delete?')==true){window.location='deleteemp2.php?empID=<?=$objResult["EMP_ID"];?>';}">Delete</a></td>



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