<?php
include "head.php";
?>
<body class='contrast-red '>

<?php include_once 'navbar.php'; ?>

<div id='wrapper'>
  <div id='main-nav-bg'></div>
  <nav class='' id='main-nav'>
    <div class='navigation'>
    <?php
    include "sidebar.php";
    ?>
    </div>
  </nav>
<section id='content'>
<div class='container-fluid'>
<div class='row-fluid' id='content-wrapper'>
<div class='span12'>
  
  <?php include_once 'header.php'; ?>

  <div class='row-fluid'>
    <div class='span12 box'>
      <div class='box-content'>
        <labeltxt><p style='text-align:right'>Selamat datang <b><?php echo $_SESSION['nama'];?></b> di halaman Admin.<br></p></labeltxt>
      <h3>Latar Belakang</h3>
      <p style='text-align:justify; text-indent:20px'>Pemilihan Pendidik dan Tenaga Kependidikan (PTK) Pendidikan Dasar (Dikdas) Berprestasi tahun 2014 merupakan salah satu bentuk perhatian pemerintah 
                yang diberikan kepada guru, kepala sekolah, dan pengawas sekolah atas prestasi dan dedikasi yang luar biasa di bidang pendidikan. Kegiatan ini 
                diselenggarakan sejak tahun 2011 hingga sekarang dirasakan bermanfaat, karena selain menghargai prestasi yang luar biasa pendidik dan tenaga kependidikan 
                juga untuk meningkatkan profesionalisme dalam melaksanakan tugasnya mewujudkan pendidikan yang bermutu.<sup>[1]</sup></p>
      <p style='text-align:justify; text-indent:20px'>Guru adalah pendidik profesional dengan tugas utama mendidik, mengajar, membimbing, mengarahkan, melatih, menilai, dan mengevaluasi peserta didik pada pendidikan 
                    anak usia dini jalur pendidikan formal, pendidikan dasar, dan pendidikan menengah.<sup>[1]</sup> Untuk melaksanakan tugasnya secara profesional, seorang guru tidak hanya 
                    memiliki kemampuan teknis edukatif, tetapi juga harus memiliki kepribadian yang dapat diandalkan sehingga menjadi sosok panutan bagi siswa, keluarga maupun masyarakat.</p>
      <p><b>Guru berprestasi</b> adalah guru yang memiliki kinerja dan kompetensi pedagogik, kepribadian, sosial, dan profesional yang melampaui standar nasional.</p>
                    <p style='text-align:justify; text-indent:20px'>Pemerintah memberikan perhatian yang sungguh-sungguh untuk memberdayakan guru, terutama bagi mereka yang berprestasi. Undang-Undang No. 14 Tahun 2005 
                        tentang Guru dan Dosen, Pasal 36 ayat (1) mengamanatkan bahwa <i>"Guru yang berprestasi, berdedikasi luar biasa, dan/atau bertugas di daerah khusus berhak 
                        memperoleh penghargaan".</i><sup>[1]</sup></p>
      <p style='text-align:justify; text-indent:20px'>Penghargaan dapat diberikan oleh pemerintah, pemerintah daerah, masyarakat, organisasi profesi, dan/atau satuan pendidikan. Penghargaan dapat diberikan pada 
                        tingkat sekolah kecamatan, tingkat kabupaten/kota, tingkat provinsi, dan nasional. Penyelenggaraan pemilihan guru berprestasi jenjang pendidikan SMA/MA dilaksanakan secara bertingkat, 
                        mulai dari tingkat sekolah, tingkat kabupaten/kota, tingkat provinsi sampai pada tingkat nasional.</p>
        <div class='clearfix'></div>

        <hr class='hr-normal' />
        <br>
        <b>Catatan kaki:</b>
        <p style='text-align:justify; font-size:12px'>1. Kementerian Pendidikan dan Kebudayaan, 2013.<i> "PEDOMAN PEMILIHAN GURU SMA BERPRESTASI TINGKAT NASIONAL"</i>. Jakarta: Kementerian Pendidikan dan Kebudayaan.</p>
      </div>
    </div>
  </div>

</div>
</div>
</div>
</section>
</div>
<?php
include "footer.php";
?>