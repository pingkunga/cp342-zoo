
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
	//����Ҥ�ҷ���Ѻ���ҡ����0���Ƕ���ҡ�������Ӻ�÷Ѵ��ҧ��ҧ
	
echo "�Թ�յ�͹�Ѻ <font color='blue'><b>". $_SESSION["name"]." </b></font>.... �������к�";
echo "<META HTTP-EQUIV=\"refresh\"  CONTENT=\"1;URL=index2.php\" >";
}

		else if (($nrows > 0) and ($userlogin == 'a004')){
	echo "�Թ�յ�͹�Ѻ <font color='blue'><b>". $_SESSION["name"]." </b></font>.... �������к�";

echo "<META HTTP-EQUIV=\"refresh\"  CONTENT=\"1;URL=index3.php\" >";
}
else {    //  ��ҹ��¡��ҡ����Ӻ�÷Ѵ��ҧ��ҧ��Ѻ
echo "��辺���ͼ����ҹ $username";
echo "<a href=\"login2.php\">��Ѻ˹����ѡ</a><br />"; //�繡��仴֧����ա˹�ҷ����¹���������ʴ���Ѻ
}

?>



