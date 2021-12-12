<?php
include 'header.php';
$id = $_GET['id'];
$materi = mysqli_query($konek, "select * from tbl_materi where id='$id'");
$row  = mysqli_fetch_array($materi);
//print_r($row);
?>
<div class="container">
    <h3>Edit Input Materi</h3>
    <form action="update-materi.php" method="POST" enctype="multipart/form-data">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">id</label>
            <div class="col-sm-10">
                <input readonly="" type="text" value="<?php echo $row['id']?>" name="id" placeholder="Masukan id" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Judul Materi</label>
            <div class="col-sm-10">
                <input type="text" value="<?php echo $row['title']?>" name="title" placeholder="Masukan Judul Materi" class="form-control">
            </div>
        </div>

        
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">URL</label>
            <div class="col-sm-10">
                <textarea name="url" class="form-control"><?php echo $row['url']?></textarea>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">URL TO IMAGE</label>
            <div class="col-sm-10">
                <textarea name="urlToImage" class="form-control"><?php echo $row['urlToImage']?></textarea>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Category</label>
            <div class="col-sm-10">
                <select name="category" class="form-control">
                <?php
                    $category = mysqli_query($konek, "select * from kategori");
                    while ($p = mysqli_fetch_array($category)) {
                        echo "<option value='$p[nama_kategori]' ";
                        if($row['category']==$p['nama_kategori']){
                            echo "selected";
                        }
                        echo">$p[nama_kategori]</option>";
                    }
                    ?>
                </select>
            </div>
        </div>




 

        <div class="form-group row">
            <label class="col-sm-2 col-form-label"></label>
            <div class="col-sm-10">
                <button type="submit" class="btn btn-danger">Simpan Data</button>
                <a href="index.php" class="btn btn-primary">Batal</a>
            </div>
        </div>
    </form>
</div>
<?php
include 'footer.php';
?>