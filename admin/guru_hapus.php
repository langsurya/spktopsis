<?php 
include '../inc/koneksi.php';

$id = isset($_GET['id_guru']) ? $_GET['id_guru']:'';
$query = mysqli_query($konek,"DELETE FROM tbl_guru WHERE id_guru='$id'") or die(mysql_error());
if ($query) {
?>
	<script>
		alert('Data guru berhasil dihapus');
		document.location='guru.php';
	</script>
<?php
}
?>