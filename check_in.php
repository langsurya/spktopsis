<?php 
session_start();
include "inc/koneksi.php";
function antiinjection($data){
  $filter_sql = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
  return $filter_sql;
}

$username = $_POST['username'];
$password = md5($_POST['password']); //proses enkripsi & pencocokan

//anti sqlinjection
// $username = antiinjection($username);
// $password = antiinjection($password);

$login = mysqli_query($konek,"SELECT * FROM tbl_user WHERE username='$username' and password='$password'");
$data = mysqli_fetch_array($login);

if(mysqli_num_rows($login)==1){
	$_SESSION['username']=$data['username'];
	$_SESSION['password']=$data['password'];
	$_SESSION['nama']=$data['nama'];

	header('location:admin/index.php');
} else {
	header('location:index.php?error=4');
}

?>
/*session_start();
include "inc/koneksi.php";

$username = $_POST['username'];
$password = md5($_POST['password']);

$query = "SELECT * FROM tbl_user WHERE username='$username' and password='$password'";
$result = mysqli_query($konek,$query);
$data = mysqli_fetch_array($result);
echo $_SESSION['nama'];
if (mysqli_num_rows($result)>0) {

	$_SESSION['username']	=	$data['username'];
	$_SESSION['password']	=	$data['password'];
	$_SESSION['nama']			=	$data['nama'];

	header('location:admin/t.php');
}else{
	header('location:index.php?error=4');
}*/
?>