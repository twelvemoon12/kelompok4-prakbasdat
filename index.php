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
  <style>
  .button-container {
  text-align: center;
}
.button {
  position: relative;
  background: currentColor;
  border: 1px solid currentColor;
  font-size: 1.1rem;
  color: #0400d8;
  margin: 3rem 0;
  padding: 0.75rem 3rem;
  cursor: pointer;
  -webkit-transition: background-color 0.28s ease, color 0.28s ease, box-shadow 0.28s ease;
  transition: background-color 0.28s ease, color 0.28s ease, box-shadow 0.28s ease;
  overflow: hidden;
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
}
.button span {
  color: #fff;
  position: relative;
  z-index: 1;
}
.button::before {
  content: '';
  position: absolute;
  background: #071017;
  border: 50vh solid #1d4567;
  width: 30vh;
  height: 30vh;
  border-radius: 50%;
  display: block;
  top: 50%;
  left: 50%;
  z-index: 0;
  opacity: 1;
  -webkit-transform: translate(-50%, -50%) scale(0);
          transform: translate(-50%, -50%) scale(0);
}
.button:hover {
  color: #D81900;
  box-shadow: 0 6px 10px 0 rgba(0, 0, 0, 0.14), 0 1px 18px 0 rgba(0, 0, 0, 0.12), 0 3px 5px -1px rgba(0, 0, 0, 0.2);
}
.button:active::before, .button:focus::before {
  -webkit-transition: opacity 0.28s ease 0.364s, -webkit-transform 1.12s ease;
  transition: opacity 0.28s ease 0.364s, -webkit-transform 1.12s ease;
  transition: transform 1.12s ease, opacity 0.28s ease 0.364s;
  transition: transform 1.12s ease, opacity 0.28s ease 0.364s, -webkit-transform 1.12s ease;
  -webkit-transform: translate(-50%, -50%) scale(1);
          transform: translate(-50%, -50%) scale(1);
  opacity: 0;
}
.button:focus {
  outline: none;
}
  </style>
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
    <h1 class="display-4 text-center">Data-data</h1>      
    <p class="text-center">Data dosen maupun prodi dapat Anda lihat di bawah ini.</p>
	<div id="accordion" style="width: 88%; margin: auto;">
    <div class="button-container">
    <a href='datadosen.php'><button type="submit" class="button"><span>Data Dosen</span></button></a>
    <a href='dataprodi.php'><button type="submit" class="button"><span>Data Prodi</span></button></a>
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