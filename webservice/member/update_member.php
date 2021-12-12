<?php
// menyimpan hasil inputan kedalam variabel
$full_name        = $_POST['full_name'];
$options          = array("cost"=>4);
$password_hash    = password_hash($_POST['password_hash'],PASSWORD_BCRYPT,$options);
$username         = $_POST['username'];
$nim              = $_POST['nim'];
$alamat           = $_POST['alamat'];
$user_id          = $_POST['user_id'];



include '../koneksi.php';
// sintaks sql untuk insert data

if(empty($password_hash)){
    $sql          = "update member set full_name='$full_name',username='$username',nim='$nim',alamat='$alamat' where user_id='$user_id'";
}else{
    $sql          = "update member set full_name='$full_name',username='$username',password_hash='$password_hash',nim='$nim',alamat='$alamat' where user_id='$user_id'";
}


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
