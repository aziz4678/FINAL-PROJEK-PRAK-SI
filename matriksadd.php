<?php
session_start();
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>Tambah Data Matriks</title>
</head>
<body>
  
    <div class="container mt-5">

        <?php include('pesan.php'); ?>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Tambah Data Matriks 
                            <a href="tabel_matriks.php" class="btn btn-danger float-end">BACK</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <form action="code5.php" method="POST">

                            <div class="mb-3">
                                <label>Id Matriks</label>
                                <input type="text" name="idmatriks" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label>Id Alternatif</label>
                                <input type="text" name="idalternatif" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label>Id Bobot</label>
                                <input type="text" name="idbobot" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label>Id Skala</label>
                                <input type="text" name="idskala" class="form-control">
                            </div>
                            <div class="mb-3">
                                <button type="submit" name="tambahmatriks" class="btn btn-primary">Simpan Matriks</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>