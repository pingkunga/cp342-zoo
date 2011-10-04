<?php  
session_start();

if(isset($_SESSION["name"])){
	
	
	//echo "<center><h1>welcome<br></h1><h1>".$_SESSION["name"]."</h1></center>";
}
//else{
//$result = "error";

//}
?>

<center>
<form action = 'edit912.php' method = 'get'>
Search ID:
<input type ='text' name ='id'>
<input type ='submit' value ='Go>>'>
</form></center>


 <?php
$Conn=mysql_connect("localhost","root","root") or die("Could not connect");

print("");	

mysql_db_query("dbTest912","SET NAMES TIS620")or die(mysql_error());
$result = mysql_query("SELECT`member`.`member_id` , `member`.`password` , `member`.`name` , `member`.`sex` , `member`.`birth_date`  FROM member "
							."ORDER BY `member`.`member_id` ASC") or die ("Invalid query");
?>
<body>
<center>
<table width="600" border="0" >
  <tr bgcolor="#FFCC99">  
    <td width="100"><div align="center"><font color="#FF0066" ><strong>username</strong></font></div></td> 
    <td width="400"><div align="center"><font color="#FF0066" ><strong>name</strong></font></div></td> 
	<td width="50"><div align="center"><font color="#FF0066" ><strong>gender</strong></font></div></td> 
    <td width="150"><div align="center"><font color="#FF0066"><strong>birthday</strong></font></div></td> 


  </tr>
 </table><center>

</body>

<table width="600" border="0" bordercolor="#FFCC99">
<tr >
<?
while($row = mysql_fetch_array($result)) {
?>
<td width="100" bgcolor="#FFCC99" ><a href="edit912.php?id=<?=$row[member_id];?>"><?=$row[member_id];?></a></td>
<td width="400"><?=$row[name];?></td>
<td width="50"><?=$row[sex];?></td>
<td width="150"><?=$row[birth_date];?></td>

</tr>
<?} ?></table>
<?mysql_free_result($result);

mysql_close($Conn);
?> 
 