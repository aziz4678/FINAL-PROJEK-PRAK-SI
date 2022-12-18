<?php
session_start();
require 'dbcon.php';
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>Edit Data Alternatif</title>
</head>
<body>
  
    <div class="container mt-5">

        <?php include('pesan.php'); ?>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Edit Alternatif 
                            <a href="tabel_alternatif.php" class="btn btn-danger float-end">BACK</a>
                        </h4>
                    </div>
                    <div class="card-body">

                        <?php
                        if(isset($_GET['idalternaif']))
                        {
                            $alternatif_id = mysqli_real_escape_string($con, $_GET['idalternatif']);
                            $query = "SELECT * FROM alternatif WHERE idalternatif='$alternatif' ";
                            $query_run = mysqli_query($con, $query);

                            if(mysqli_num_rows($query_run) > 0)
                            {
                                $alternatif = mysqli_fetch_array($query_run);
                                ?>
                                <form action="code.php" method="POST">
                                    <input type="hidden" name="idalternatif" value="<?= $alternatif['idalternatif']; ?>">

                                    <div class="mb-3">
                                        <label>Nama Alternatif</label>
                                        <input type="text" name="nmalternatif" value="<?=$alternatif['nmalternatif'];?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <button type="submit" name="updatealternatif" class="btn btn-primary">
                                            Update Alternatif
                                        </button>
                                    </div>

                                </form>
                                <?php
                            }
                            else
                            {
                                echo "<h4>No Such Id Found</h4>";
                            }
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>