<?
session_start();
echo "<font color='blue'><b>". $_SESSION["name"]." </b></font> ออกจากระบบแล้ว";
session_destroy();
?><META HTTP-EQUIV="refresh" CONTENT="3;URL=login2.php">