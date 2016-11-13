<?php include_once '../admin/head.php'; ?>
<body class="contrast-red">

<?php include_once 'navbar.php'; ?>

<div id="wrapper">
	<div id="main-nav-bg"></div>
	<nav class="" id="main-nav">
		<div class="navigation">
			<?php include_once "../admin/sidebar.php"; ?>
		</div>
	</nav>

	<section id="content">
		<div class="container-fluid">
			<div class="row-fluid" id="content-wrapper">
				<div class="span12">
					
				<?php include_once "header.php"; ?>


<?php 
if (!empty($_POST['btnSimpan'])) {
	# hapus semua data klasifikasi pada guru tertentu
	mysqli_query($konek,"DELETE FROM tbl_klasifikasi WHERE id_guru='".$_POST['guru']."'");
	$q=mysqli_query($konek,"SELECT * FROM tbl_kriteria");
	if (mysqli_num_rows($q) > 0) {
		while ($h=mysqli_fetch_array($q)) {
			# insert data klasifikasi
			if (!empty($_POST['himpunan_'.$h['id_kriteria']])) {
				mysqli_query($konek,"INSERT INTO tbl_klasifikasi(id_guru,id_himpunan) VALUES('".$_POST['guru']."','".$_POST['himpunan_'.$h['id_kriteria']]."')");
			}
		}
	}
	echo "<script>alert('Data berhasil tersimpan');location.href='klasifikasi.php';</script>";
}

$q=mysqli_query($konek,"SELECT * FROM tbl_guru ORDER BY id_guru");
if (mysqli_num_rows($q)>0) {
	while ($h=mysqli_fetch_array($q)) {
		$daftarKriteria='';
		$n=0;
		# menampilkan data kriteria untuk tiap guru
		$qq=mysqli_query($konek,"SELECT * FROM tbl_kriteria");
		if (mysqli_num_rows($qq)>0) {
			while ($hh=mysqli_fetch_array($qq)) {
				# menampilkan data himpunan untuk dimasukan ke dalam combobox kriteria
				$listKriteria='<option value=""></option>';
				$qqq=mysqli_query($konek,"SELECT * FROM tbl_himpunan WHERE id_kriteria='".$hh['id_kriteria']."'");
				if (mysqli_num_rows($qqq)>0) {
					while ($hhh=mysqli_fetch_array($qqq)) {
						if (mysqli_num_rows(mysqli_query($konek,"SELECT * FROM tbl_klasifikasi WHERE id_guru='".$h['id_guru']."' AND id_himpunan='".$hhh['id_himpunan']."'"))>0) {
							# merupakan himpunan yang terpilih/ tersimpan
							$s=' selected';
						}else{
							$s='';
						}
						$listKriteria.='<option value="'.$hhh['id_himpunan'].'"'.$s.'>'.$hhh['nama'].'</option>';
					}
				}
				$n++;
				$input='<select name="himpunan_'.$hh['id_kriteria'].'">'.$listKriteria.'</select>';

				$daftarKriteria.='
				<tr>
					<td width="120">'.$hh['nama_kriteria'].'</td>
					<td>'.$input.'</td>
				</tr>
				';
			}
		}

		$no++;

		$daftar.='
		<tr>
			<td align="center" valign="top"><center>'.$no.'</center></td>
			<td align="center" valign="top"><center>'.$h['nuptk'].'</center></td>
			<td align="center" valign="top"><center>'.$h['nama_guru'].'</center></td>
			<td align="center" valign="top"><center>'.$h['jabatan'].'</center></td>
			<td align="center" valign="top"><center><span id="cmd_'.$h['id_guru'].'"><strong>Edit Klasifikasi</strong></span></center></td>
		</tr>

		<tr>
		<td valign="top" colspan="5">
		<form action="" name="" method="post" id="kla_'.$h['id_guru'].'" style="display:none">
		<input name="guru" type="hidden" value="'.$h['id_guru'].'" />
			<table class="table" style="margin-bottom:0;">
				<!--<tr>
				<td colspan="2"><strong>'.$no.'. '.strtoupper($h['nama_guru']).'</strong></td>
			  </tr>-->
			'.$daftarKriteria.'
			<tr>
				<td width="140"></td>
				<td><input name="btnSimpan" class="btn btn-danger" type="submit" value="Simpan"></td>
			</tr>
			</table>
		</form>
		</td>
		</tr>
		';

		$js.="
		$('#cmd_".$h['id_guru']."').css( 'cursor', 'pointer' );
		$('#cmd_".$h['id_guru']."').click(function() {
			$('#kla_".$h['id_guru']."').toggle('slow', function() {				
			});
		});
		";
	}
}

?>



				<div class="row-fluid">
					<div class="span12 box">
						<div class="box-content">
							<div class="row-fluid">
								<div class="span12 box bordered-box orange-border" style="margin-bottom: 0;">
									<h3>Klasifikais</h3>
									<div class="box-content box-no-padding">
										<div class="responsive-table">
											<table class="table" style="margin-bottom: 0;">
												<thead>
													<tr>
														<th><center>No.</center></th>
														<th><center>NUPTK</center></th>
														<th><center>NAMA</center></th>
														<th><center>JABATAN</center></th>
														<th><center>AKSI</center></th>
													</tr>
												</thead>
												<tbody>
													<?php echo $daftar; ?>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
							<hr class="hr-normal"/>
						</div>
					</div>
				</div>

				</div>
			</div>
		</div>
	</section>

</div>

<!-- toggle edit klasifikasi -->
<script type="text/javascript" src="../assets/js/jquery-1.3.1.min.js"></script>
<script language="JavaScript" type="text/javascript">
	<?php echo $js; ?>
</script>

<?php include_once 'footer.php'; ?>
