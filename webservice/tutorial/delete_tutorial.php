<?php
include 'header.php';
$id = $_GET['id'];
$materi = mysqli_query($konek, "delete from tbl_tutorial where id='$id'");
// $row  = mysqli_fetch_array($materi);
//print_r($row);


// balik he halaman list tbl_materi
header("location:../tutorial.php");
?>

