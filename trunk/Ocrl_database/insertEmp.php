<html>
	<head>
		<title>insertEmployee</title>
	</head>
	<center><body>
		<form action="saveInsertEmp.php?empID=<?=$_GET["empID"];?>" name="frmEdit" method="post">
		<?
			include("connectOrcl.php");
			$SQLJobs = oci_parse ($conn, "SELECT * FROM ZOO_JOBS");
			oci_execute ($SQLJobs,OCI_DEFAULT);
		?> 
		<div style="margin : auto; width:500px; height:1000px;">
		<h1 style="padding-left:100px;">... ADD EMPLOYEE ...</h1>
		<table align="center" style = "margin-bottom : 20px">
		<tr>
			<td><b> ID </td><td><div align="center"><input type="text" name="txtEmpID" size="20"><font color="#ff0000">*</font></div></td></tr>
			<td><b> FIRST NAME </td><td><div align="center"><input type="text" name="txtFirstName" size="20"><font color="#ff0000">*</font></div></td></tr>
			<td><b> LAST NAME </td><td><div align="center"><input type="text" name="txtLastName" size="20"><font color="#ff0000">*</font></div></td></tr>
			<td><b> DOB </td><td><div align="center"><input type="text" name="txtDOB" size="20">&nbsp;&nbsp;</div></td></tr>
			<td><b> PHONE NUMBER </td><td><div align="center"><input type="text" name="txtPhoneNum" size="20">&nbsp;&nbsp;</div></td></tr>
			<td><b> JOB </td><td><div align="center">
				<select id="txtJob" name="txtJob" style="width:137px">
					<option >select job</option>
					<?php
						while($row = oci_fetch_array($SQLJobs,OCI_BOTH))
						{
					?>
					<option value="<?=$row["JOB_ID"];?>" <?php echo ($row["JOB_ID"] == $objResult["JOB_ID"])?'selected="selected"':''?> ><?=$row["JOB_NAME"];?></option>
					<?php
						}
					?>
				</select><font color="#ff0000">*</font>
			</div></td></tr>
			<td><b> HIRE_DATE </td><td><div align="center"><input type="text" name="txtHireDate" size="20">&nbsp;&nbsp;</div></td></tr>
			<td><b> SALARY </td><td><div align="center"><input type="text" name="txtSalary" size="20"><font color="#ff0000">*</font></div></td></tr>
			<td><b> MANEGER </td><td><div align="center"><input type="text" name="txtManeger" size="20">&nbsp;&nbsp;</div></td></tr>
		</tr>
  </table>
  <div align="center"><input type="submit" name="submit" value="submit"></div>
  <?
		oci_close($conn);
  ?>
  </div></form>
</body></center>
</html>