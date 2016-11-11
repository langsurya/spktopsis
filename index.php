<!DOCTYPE html>
<html lang="">
<head>
	<meta charset="utf-8">
	<title>Pemilihan Guru Berprestasi | Smkn 2 Kota Tangerang</title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="robots" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" >
	<link rel="stylesheet" href="assets/stylesheets/style.css" media="all" />
	<link href="assets/stylesheets/bootstrap/bootstrap-responsive.css" media="all" rel="stylesheet" type="text/css" />
	<link rel="shortcut icon" href="./assets/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="./assets/images/favicon.ico" type="image/x-icon">
	<!--[if IE]><link rel="stylesheet" href="css/ie.css" media="all" /><![endif]-->
</head>
<body class="login">
	<section>
		<h1><strong>SMK N 2</strong> <br>Kota Tangerang</h1>

		<?php
		if (!empty($_GET['error'])) {
			if ($_GET['error']==4) {
				echo '<script>window.alert("Username dan Password tidak terdaftar");</script>';
				echo '<font color=yellow><b>Username dan Password tidak terdaftar! Coba Lagi.</b></font>';
			}
		}
		?>

		<form method="post" action="check_in.php">
			<input type="text" placeholder="Usename" name="username" required/>
			<input type="password" placeholder="Password" name="password" required/>
			<button class="blue" type="submit" name="submit">Login</button>
		</form>
		<p><a href="index.php">Silahkan Anda login terlebih dahulu.</a></p>
	</section>
</body>
</html>
