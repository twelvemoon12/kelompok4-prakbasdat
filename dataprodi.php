<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Laman Akreditasi Universitas Negeri Yogyakarta</title>
  </head>
  <body>
<nav class="navbar bg-white navbar-light" position="right">
<a class="navbar-brand" href="index.php"><img src="img/UNY.jpg" alt="Logo" style="width:64px; height:64px">
	Laman Akreditasi <small>Universitas Negeri Yogyakarta</small></a>
</nav>
<div class="card text-center text-dark">
	<img class="card-img" src="img/rektorat.jpg">
	<div class="card-img-overlay">
    <h1 class="display-4">Selamat Datang.</h1>      
    <p>Laman Akreditasi UNY memuat semua hal yang Anda perlukan terkait data 
	akreditasi institusi, prodi, maupun data dosen dan tenaga kependidikan.</p>
	<p>Selamat berselancar! :)</p>
  </div>
</div>
<div class="jumbotron jumbotron-fluid">
  <div class="container-fluid">
    <h1 class="display-4 text-center">Data Prodi</h1>      
    <p class="text-center">Data prodi dapat Anda lihat di bawah ini.</p>
	<div id="accordion" style="width: 88%; margin: auto;">

  <div class="card">
	<div class="card-header">
		Data Prodi
    </div>
	
      <div class="card-body">
       <table class="table table-striped table-bordered">
	<tr style="font-size: 15pt;">
	<td width="40%">Nama Prodi</td>
		<td width="5%">Akreditasi</td>
		<td width="10%">No. Sertifikat</td>
		<td width="15%">Tgl. Sertifikat</td>
		<td width="15%">Berlaku dari</td>
		<td width="15%">Berlaku sampai</td>
	</tr>
  <?php
  include 'koneksi.php';
	$kueri = "SELECT unit.name, unit_accred_level.accred_level, unit_accred.accred_no, unit_accred.accred_comm_date, unit_accred.accred_start_date, unit_accred.accred_end_date FROM unit, unit_accred, unit_accred_level WHERE unit.unit_id = unit_accred.unit_id AND unit.unit_id = unit_accred_level.unit_id AND unit.unit_id > 1";
	$result = $conn->query($kueri);
	
	if ($result->num_rows > 0){
		$halaman = 15;
  		$page = isset($_GET["halaman"]) ? (int)$_GET["halaman"] : 1;
  		$mulai = ($page>1) ? ($page * $halaman) - $halaman : 0;
  		$total = mysqli_num_rows($result);
  		$pages = ceil($total/$halaman);            
  		$query = $conn->query("SELECT unit.name, unit_accred_level.accred_level, unit_accred.accred_no, unit_accred.accred_comm_date, unit_accred.accred_start_date, unit_accred.accred_end_date FROM unit, unit_accred, unit_accred_level WHERE unit.unit_id = unit_accred.unit_id AND unit.unit_id = unit_accred_level.unit_id AND unit.unit_id > 1 LIMIT $mulai, $halaman");
		while($row = $query->fetch_assoc()){
		echo "<tr><td>".$row['name']."</td>";
		echo "<td>".$row['accred_level']."</td>";
		echo "<td>".$row['accred_no']."</td>";
		echo "<td>".$row['accred_comm_date']."</td>";
		echo "<td>".$row['accred_start_date']."</td>";
		echo "<td><b>".$row['accred_end_date']."</b></td></tr>";
	}}
	else {
		echo "<tr><td>---</td>";
		echo "<td>---</td>";
		echo "<td>---</td>";
		echo "<td>---</td>";
		echo "<td>---</td>";
		echo "<td>---</td></tr>";
	}
	$conn->close();
  ?>
  </table>
  <?php for ($i=1; $i<=$pages ; $i++){ ?>
  <a href="?halaman=<?php echo $i; ?>"><?php echo $i; ?></a>
 
  <?php } ?>
      </div>
    </div>
  </div>
      </div>
    </div>
  </div>
</div>
  </div>
</div>
<footer class="section footer-classic" style="background: #EEEEEE;">
        <div class="test" style="padding: 5pt;">
          <div class="row">
            <div class="col-md-3 col-xl-3">
              <h6>TENTANG KAMI</h6>
              <p> Pendidikan Teknik Informatika Universitas Negeri Yogyakarta.</p>
			  <p> Bagian dari Fakultas Teknik Universitas Negeri Yogyakarta.</p>
            </div>
            <div class="col-md-6 col-xl-6">
            </div>
            <div class="col-md-3 col-xl-3">
              <h6>HUBUNGI KAMI</h6>
			  <p> Alamat: Kompleks Fakultas Teknik, Kampus Karangmalang, 
			  Caturtunggal, Depok, Sleman, D.I. Yogyakarta 55281</p>
			  <p> Telepon: +62 274 554686</p>
			  <p> e-mail: pti@uny.ac.id</p>
				</div>
			</div>
        </div>
		</footer>
          </div>
        </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>