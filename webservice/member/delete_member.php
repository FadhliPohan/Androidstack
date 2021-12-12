<?php
include 'header.php';
$id_member = $_GET['id'];
$member = mysqli_query($konek, "delete from member where user_id='$id_member'");
// $row  = mysqli_fetch_array($member);



// balik he halaman list tbl_materi
header("location:../member.php");
?>

