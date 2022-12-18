<?php
session_start();
require 'dbcon.php';

if(isset($_POST['hapuskriteria']))
{
    $kriteria_id = mysqli_real_escape_string($con, $_POST['hapuskriteria']);

    $query = "DELETE FROM kriteria WHERE idkriteria='$kriteria_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Kriteria Deleted Successfully";
        header("Location: tabel_kriteria.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Kriteria Not Deleted";
        header("Location: tabel_kriteria.php");
        exit(0);
    }
}

if(isset($_POST['updatekriteria']))
{
    $kriteria_id = mysqli_real_escape_string($con, $_POST['idkriteria']);

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


if(isset($_POST['tambahkriteria']))
{
    $nama = mysqli_real_escape_string($con, $_POST['nmkriteria']);

    $query = "INSERT INTO kriteria (nmkriteria) VALUES ('$nama')";

    $query_run = mysqli_query($con, $query);
    if($query_run)
    {
        $_SESSION['message'] = "kriteria Created Successfully";
        header("Location: kriteriaadd.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "kriteria Not Created";
        header("Location: kriteriaadd.php");
        exit(0);
    }
}

?>