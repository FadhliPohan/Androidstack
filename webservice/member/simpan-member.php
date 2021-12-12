<?php
// menyimpan hasil inputan kedalam variabel
$full_name        = $_POST['full_name'];
$options          = array("cost"=>4);
$password_hash    = password_hash($_POST['password_hash'],PASSWORD_BCRYPT,$options);
$username         = $_POST['username'];
$nim              = $_POST['nim'];
$alamat           = $_POST['alamat'];


include '../koneksi.php';
// sintaks sql untuk insert data
$sql              = "insert into member set full_name='$full_name',password_hash='$password_hash',username='$username',nim='$nim',alamat='$alamat'";
// perintah untuk mengeksekusi query di atas
$insert           = mysqli_query($konek, $sql);
/*
if($insert){
    echo "insert data berhasil";
}  else {
    echo "insert data gagal";
}
*/


header("location:../member.php");
?>
