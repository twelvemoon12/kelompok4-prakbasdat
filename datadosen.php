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
    <h1 class="display-4 text-center">Data Dosen</h1>      
    <p class="text-center">Data dosen dapat Anda lihat di bawah ini.</p>
	<div id="accordion" style="width: 88%; margin: auto;">

	<div class="card">
	<div class="card-header">
		Data Dosen
    </div>
	
      <div class="card-body">
       <table class="table table-striped table-bordered">
	<tr style="font-size: 15pt;">
		<td width="12.5%">NIP</td>
		<td width="22.5%">Nama</td>
		<td width="15%">Unit</td>
		<td width="15%">Golongan</td>
		<td width="10%">Pendidikan</td>
		<td width="10%">Jabatan</td>
		<td width="10%">Status</td>
	</tr>
  <?php
  include 'koneksi.php';
	$kueri = "SELECT employee.nip, employee.name AS emp_name, unit.name AS unit_name, golongan.gol_desc, position.position_desc, education.ed_desc, status.status_desc from employee, golongan, unit, position, education, status, emp_golongan, emp_unit, emp_position, emp_education , emp_status WHERE employee.nip = emp_unit.nip AND emp_unit.unit_id = unit.unit_id AND employee.nip = emp_golongan.nip AND emp_golongan.gol_id = golongan.gol_id AND employee.nip = emp_position.nip AND emp_position.position_id = position.position_id AND employee.nip = emp_education.nip AND emp_education.ed_level = education.ed_level AND employee.nip = emp_status.nip AND emp_status.status_id = status.status_id GROUP BY employee.nip";
	$result = $conn->query($kueri);
	
	if ($result->num_rows > 0){
		$halaman = 5;
  		$page = isset($_GET["halaman"]) ? (int)$_GET["halaman"] : 1;
  		$mulai = ($page>1) ? ($page * $halaman) - $halaman : 0;
  		$total = mysqli_num_rows($result);
  		$pages = ceil($total/$halaman);            
  		$query = $conn->query("SELECT employee.nip, employee.name AS emp_name, unit.name AS unit_name, golongan.gol_desc, position.position_desc, education.ed_desc, status.status_desc from employee, golongan, unit, position, education, status, emp_golongan, emp_unit, emp_position, emp_education , emp_status WHERE employee.nip = emp_unit.nip AND emp_unit.unit_id = unit.unit_id AND employee.nip = emp_golongan.nip AND emp_golongan.gol_id = golongan.gol_id AND employee.nip = emp_position.nip AND emp_position.position_id = position.position_id AND employee.nip = emp_education.nip AND emp_education.ed_level = education.ed_level AND employee.nip = emp_status.nip AND emp_status.status_id = status.status_id GROUP BY employee.nip LIMIT $mulai, $halaman");
		while($row = $query->fetch_assoc()){
		echo "<tr><td>".$row['nip']."</td>";
		echo "<td>".$row['emp_name']."</td>";
		echo "<td>".$row['unit_name']."</td>";
		echo "<td>".$row['gol_desc']."</td>";
		echo "<td>".$row['ed_desc']."</td>";
		echo "<td>".$row['position_desc']."</td>";
		echo "<td><b>".$row['status_desc']."</b></td></tr>";
	}}
	else {
		echo "<tr><td>---</td>";
		echo "<td>---</td>";
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