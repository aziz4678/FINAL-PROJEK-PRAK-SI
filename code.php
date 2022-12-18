<?php
session_start();
require 'dbcon.php';

if(isset($_POST['hapusalternatif']))
{
    $alternatif_id = mysqli_real_escape_string($con, $_POST['hapusalternatif']);

    $query = "DELETE FROM alternatif WHERE idalternatif='$alternatif_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Alternatif Deleted Successfully";
        header("Location: tabel_alternatif.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Alternatif Not Deleted";
        header("Location: tabel_alternatif.php");
        exit(0);
    }
}

if(isset($_POST['updatealternatif']))
{
    $alternatif_id = mysqli_real_escape_string($con, $_POST['idalternatif']);

    $nama = mysqli_real_escape_string($con, $_POST['nmalternatif']);

    $query = "UPDATE alternatif SET name='$nama' WHERE idalternatif='$alternatif_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Student Updated Successfully";
        header("Location: tabel_alternatif.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Student Not Updated";
        header("Location: tabel_alternatif.php");
        exit(0);
    }

}


if(isset($_POST['tambahalternatif']))
{
    $nama = mysqli_real_escape_string($con, $_POST['nmalternatif']);

    $query = "INSERT INTO alternatif (nmalternatif) VALUES ('$nama')";

    $query_run = mysqli_query($con, $query);
    if($query_run)
    {
        $_SESSION['message'] = "Student Created Successfully";
        header("Location: alternatifadd.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Student Not Created";
        header("Location: alternatifadd.php");
        exit(0);
    }
}

?>