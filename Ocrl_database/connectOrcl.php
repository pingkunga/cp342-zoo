<?php
	$username = "zoo";
	$pass = "oracle";
	$dbname = "orcl";
	$conn = oci_connect($username,$pass,$dbname);

/*	$query = oci_parse($conn,'SELECT * FROM ANIMAL');
	oci_execute($query);
	while($row = oci_fetch_array($query,OCI_ASSOC))
	{
		echo $row['ANIMAL_ID'].;
		echo $row['ANIMAL_NAME']."<br>";
	}
	oci_close($conn);
	*/
?>