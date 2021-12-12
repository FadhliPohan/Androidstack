<?php
require("koneksi.php");
$perintah = "SELECT *FROM tbl_materi ORDER BY id ASC";
$eksekusi = mysqli_query($konek, $perintah);
$cek = mysqli_affected_rows($konek);

if($cek > 0){
    $response["kode"] = 1;
    $response["pesan"] = "Data Tersedia";
    $response["data"]= array();

    while($ambil = mysqli_fetch_object($eksekusi)){
        $F["id"] = $ambil->id;
        $F["title"] = $ambil->title;
        $F["publishedAt"] = $ambil->publishedAt;
        $F["url"] = $ambil->url;
        $F["urlToImage"] = $ambil->urlToImage;

        array_push($response["data"], $F );
    }
}
else{
    $response["kode"] = 0;
    $response["pesan"] = "Data Tidak Tersedia";
}

echo json_encode($response);
mysqli_close($konek);
