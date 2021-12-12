<?php
// menyimpan hasil inputan kedalam variabel
$id             = $_POST['id'];
$title          = $_POST['title'];
$url            = $_POST['url'];
$urlToImage     = $_POST['urlToImage'];
$category       = $_POST['category'];

include '../koneksi.php';

// upload cover
$file_name      = $_FILES['cover']['name'];
$file_tmp       = $_FILES['cover']['tmp_name'];
move_uploaded_file($file_tmp,"cover/".$file_name);

// sintaks sql untuk insert data
$sql            = "insert into tbl_materi SET id='$id',title= '$title',category='$category',
    url = '$url',urlToImage='$urlToImage'";
// perintah untuk mengeksekusi query di atas
$insert         = mysqli_query($konek, $sql);
/*
if($insert){
    echo "insert data berhasil";
}  else {
    echo "insert data gagal";
}
*/
header("location:../index.php");
?>
