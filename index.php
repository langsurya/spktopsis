<?php include_once 'head.php'; ?>
 <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
    <link rel="icon" href="assets/images/logo.jpg" type="image/x-icon">

 </head>

  <body>

    <div class="container">

    <?php
    if (!empty($_GET['error'])) {
      if ($_GET['error']==4) {
        echo '<script>window.alert("Username dan Password tidak terdaftar");</script>';
        echo '
        <div class="alert alert-danger alert-dismissible" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <strong>Warning!</strong> Username dan Password tidak terdaftar! Coba Lagi.
        </div>';
      }
    }
    ?>

      <form action="check_in.php" method="POST" class="form-signin">
        <h2 class="form-signin-heading"><strong>SMK N 2</strong><br>Kota Tangerang</h2>
        <label class="sr-only">Email address</label>
        <input type="text" class="form-control" name="username" placeholder="Username" required autofocus>
        <label class="sr-only">Password</label>
        <input type="password" name="password" class="form-control" placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit"><span class="glyphicon glyphicon-log-in"></span> Sign in</button>
        <p class="bawah"><a href="index.php">Silahkan login terlebih dahulu</a></p>
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>