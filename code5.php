<?php
session_start();
require 'dbcon.php';

if(isset($_POST['hapusmatriks']))
{
    $matriks_id = mysqli_real_escape_string($con, $_POST['hapusmatriks']);

    $query = "DELETE FROM matrikskeputusan WHERE idmatriks='$matriks_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Matriks Deleted Successfully";
        header("Location: tabel_matriks.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Matriks Not Deleted";
        header("Location: tabel_matriks.php");
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


if(isset($_POST['tambahmatriks']))
{
    $nama = mysqli_real_escape_string($con, $_POST['idmatriks']);
    $keterangan = mysqli_real_escape_string($con, $_POST['idalternatif']);
    $tipe = mysqli_real_escape_string($con, $_POST['idbobot']);
    $t = mysqli_real_escape_string($con, $_POST['idskala']);

    $query = "INSERT INTO matrikskeputusan (idmatriks,idalternatif,idbobot,idskala) VALUES ('$nama','$keterangan','$tipe','$t')";

    $query_run = mysqli_query($con, $query);
    if($query_run)
    {
        $_SESSION['message'] = "Matriks Created Successfully";
        header("Location: matriksadd.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Matriks Not Created";
        header("Location: matriksadd.php");
        exit(0);
    }
}

?>