<?php
include 'footer.php';
?>

<?php
include 'header.php';
?>


<div class="container">
            
    <h3>Form Input Tutorial</h3>
    <form action="simpan-tutorial.php" method="POST">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Judul Tutorial</label>
            <div class="col-sm-10">
                <input type="text" name="title" placeholder="Masukan Judul Tutorial" class="form-control">
            </div>
        </div>


        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Url</label>
            <div class="col-sm-10">
                <textarea name="url" class="form-control"></textarea>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">UrlToImage</label>
            <div class="col-sm-10">
                <textarea name="urlToImage" class="form-control"></textarea>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Category</label>
            <div class="col-sm-10">
                <select name="category" class="form-control">
                    <?php
                    $kategori = mysqli_query($konek, "select * from kategori");
                    while ($k = mysqli_fetch_array($kategori)) {
                        echo "<option value='$k[nama_kategori]'>$k[nama_kategori]</option>";
                    }
                    ?>
                </select>
            </div>
        </div>



        <div class="form-group row">
            <label class="col-sm-2 col-form-label"></label>
            <div class="col-sm-10">
                <button type="submit" class="btn btn-danger">Simpan Data</button>
                <a href="../tutorial.php" class="btn btn-primary">Batal</a>
            </div>
        </div>
    </form>
</div>
