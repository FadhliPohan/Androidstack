<?php
include 'header.php';
$id_user = $_GET['id'];
$user = mysqli_query($konek, "delete from user where id_user='$id_user'");
// $row  = mysqli_fetch_array($user);



// balik he halaman list tbl_materi
header("location:../user.php");
?>

