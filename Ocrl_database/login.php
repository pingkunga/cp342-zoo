
<?
$username="zoo";
$password = "oracle";
$dbname = "orcl";
$conn = oci_connect($username,$password,$dbname);

$userlogin = $_POST["login"];
$password = $_POST['pass'];

$stmt = oci_parse($conn,"SELECT EMP_ID FROM ZOO_EMPLOYEES WHERE EMP_ID = '$userlogin' and FIRST_NAME ='$password'");
oci_execute($stmt);
$nrows = oci_fetch_all($stmt, $results);
if (($nrows > 0) and ($userlogin == 'a001')) {
	//เช็คว่าค่าที่รับมามากกว่า0ป่าวถ้ามากกว่าให้ทำบรรทัดข้างล่าง
	
echo "ยินดีต้อนรับ <font color='blue'><b>". $_SESSION["name"]." </b></font>.... เข้าสู่ระบบ";
echo "<META HTTP-EQUIV=\"refresh\"  CONTENT=\"1;URL=index2.php\" >";
}

		else if (($nrows > 0) and ($userlogin == 'a004')){
	echo "ยินดีต้อนรับ <font color='blue'><b>". $_SESSION["name"]." </b></font>.... เข้าสู่ระบบ";

echo "<META HTTP-EQUIV=\"refresh\"  CONTENT=\"1;URL=index3.php\" >";
}
else {    //  ถ้าน้อยกว่าก็ให้ทำบรรทัดข้างล่างครับ
echo "ไม่พบชื่อผู้ใช้งาน $username";
echo "<a href=\"login2.php\">กลับหน้าหลัก</a><br />"; //เป็นการไปดึงเอาอีกหน้าที่เขียนเอาไว้มาแสดงครับ
}

?>



