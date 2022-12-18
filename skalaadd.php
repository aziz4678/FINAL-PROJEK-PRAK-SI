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

    <title>Tambah Data skala</title>
</head>
<body>
  
    <div class="container mt-5">

        <?php include('pesan.php'); ?>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Tambah Data skala 
                            <a href="tabel_skala.php" class="btn btn-danger float-end">BACK</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <form action="code3.php" method="POST">

                            <div class="mb-3">
                                <label>Id skala</label>
                                <input type="text" name="idskala" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label>Value</label>
                                <input type="text" name="value" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label>Keterangan</label>
                                <input type="text" name="keterangan" class="form-control">
                            </div>
                            <div class="mb-3">
                                <button type="submit" name="tambahskala" class="btn btn-primary">Simpan skala</button>
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