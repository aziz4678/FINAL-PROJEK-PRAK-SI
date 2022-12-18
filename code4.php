<?php
session_start();
require 'dbcon.php';

if(isset($_POST['hapusbobot']))
{
    $bobot_id = mysqli_real_escape_string($con, $_POST['hapusbobot']);

    $query = "DELETE FROM bobot WHERE idbobot='$bobot_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Bobot Deleted Successfully";
        header("Location: tabel_bobot.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Bobot Not Deleted";
        header("Location: tabel_bobot.php");
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


if(isset($_POST['tambahbobot']))
{
    $nama = mysqli_real_escape_string($con, $_POST['idkriteria']);
    $keterangan = mysqli_real_escape_string($con, $_POST['value']);
    $tipe = mysqli_real_escape_string($con, $_POST['tipe']);

    $query = "INSERT INTO bobot (idkriteria,value,tipe) VALUES ('$nama','$keterangan','$tipe')";

    $query_run = mysqli_query($con, $query);
    if($query_run)
    {
        $_SESSION['message'] = "Bobot Created Successfully";
        header("Location: bobotadd.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Bobot Not Created";
        header("Location: bobotadd.php");
        exit(0);
    }
}

?>