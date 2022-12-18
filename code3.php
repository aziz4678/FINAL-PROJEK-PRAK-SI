<?php
session_start();
require 'dbcon.php';

if(isset($_POST['hapusskala']))
{
    $skala_id = mysqli_real_escape_string($con, $_POST['hapusskala']);

    $query = "DELETE FROM skala WHERE idskala='$skala_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "skala Deleted Successfully";
        header("Location: tabel_skala.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "skala Not Deleted";
        header("Location: tabel_skala.php");
        exit(0);
    }
}

if(isset($_POST['updateskala']))
{
    $skala_id = mysqli_real_escape_string($con, $_POST['idskala']);

    $nama = mysqli_real_escape_string($con, $_POST['nmakriteria']);

    $query = "UPDATE kriteria SET name='$nama' WHERE idkriteria='$kriteria_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Kriteria Updated Successfully";
        header("Location: tabel_kriteria.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Kriteria Not Updated";
        header("Location: tabel_kriteria.php");
        exit(0);
    }

}


if(isset($_POST['tambahskala']))
{
    $nama = mysqli_real_escape_string($con, $_POST['value']);
    $keterangan = mysqli_real_escape_string($con, $_POST['keterangan']);

    $query = "INSERT INTO skala (value,keterangan) VALUES ('$nama','$keterangan')";

    $query_run = mysqli_query($con, $query);
    if($query_run)
    {
        $_SESSION['message'] = "Skala Created Successfully";
        header("Location: skalaadd.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Skala Not Created";
        header("Location: skalaadd.php");
        exit(0);
    }
}

?>