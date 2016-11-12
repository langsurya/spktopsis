<?php	
	function jml_barang($kode_barang){
	$hasil_hitung=mysqli_fetch_array(mysqli_query($konek,"select sum(jumlah) as jumlah from pembelian where kode_barang='$kode_barang' and jumlah>0"));
	return $hasil_hitung[jumlah];
	}
	
	function barang_keluar($kode_barang){
	$hasil_hitung=mysqli_fetch_array(mysqli_query($konek,"select sum(jumlah) as jumlah from penyewaan where kode_barang='$kode_barang' and jumlah>0"));
	return $hasil_hitung[jumlah];
	}
	
	function sisa_barang($kode_barang){
	$hasil_sisa = jml_barang($kode_barang) - barang_keluar($kode_barang);
	return $hasil_sisa;
	}
?>	