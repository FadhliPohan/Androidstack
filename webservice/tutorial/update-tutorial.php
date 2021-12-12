<?php
// menyimpan hasil inputan kedalam variabel
$id             = $_POST['id'];
$title          = $_POST['title'];
$url            = $_POST['url'];
$urlToImage     = $_POST['urlToImage'];
$category       = $_POST['category'];

include '../koneksi.php';


$file_tmp  = $_FILES['cover']['tmp_name'];
if(!empty($file_tmp)){
	// upload cover
	$file_name = $_FILES['cover']['name'];
	move_uploaded_file($file_tmp,"cover/".$file_name);
	$sql = "update tbl_tutorial SET title='$title',url='$url',
    urlToImage='$urlToImage',category='$category'
    where id='$id',cover='$file_name'";
}
else{
	$sql = "update tbl_tutorial SET title='$title',url='$url',
    urlToImage='$urlToImage',category='$category'
    where id='$id'";
}

// perintah untuk mengeksekusi query di atas
$update = mysqli_query($konek, $sql);
/*
if($insert){
    echo "insert data berhasil";
}  else {
    echo "insert data gagal";
}
*/
header("location:../tutorial.php");
?>
