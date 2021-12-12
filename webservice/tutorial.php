<?php
include 'header.php';
?>
<div class="container">
    <div class="row">
        <div class="col-8">
            <h3>Data Tutorial Android</h3>
        </div>
        <div class="col-4">
            <form method="POST" class="form-inline" action="<?php echo $_SERVER['PHP_SELF']?>">
                <div class="form-group mx-sm-3 mb-2">
                    <label for="inputPassword2" class="sr-only">Password</label>
                    <input type="text" class="form-control" name="keyword" placeholder="Masukan Keyword">
                </div>
                <button name="pencarian" type="submit" class="btn btn-primary mb-2">Cari Data</button>
                <p></p> </form>
        </div>
    </div>
    
    <div class="row">
        <div class="col-12">
<p><a href="tutorial/input_tutorial.php" class="btn btn-danger btn-sm">Input Data Tutorial</a></p>
            <table class="table table-bordered">
                <tr><th>ID</th><th>JUDUL TUTORIAL</th><th>URL</th><th>KATEGORI</th><th width="130">Aksi</th></tr>
                <?php
                $batas = 2000;
                $halaman = isset($_GET['hal']) ? $_GET['hal'] : 0;
                if(isset($_POST['pencarian'])){
                    // query pencarian data
                    $keyword = $_POST['keyword'];
                    $sql = "SELECT b.id,b.title,b.category,b.url
                    FROM tbl_tutorial as b
                    WHERE b.title like '%$keyword%' order by b.id ASC limit $halaman,$batas";
                }else{
                    // query menapilkan data biasa
                    $sql = "SELECT b.id,b.title,b.category,b.url
                    FROM tbl_tutorial as b 
                     order by b.id ASC limit $halaman,$batas";
                }
                $tutorial = mysqli_query($konek, $sql);
                while ($row = mysqli_fetch_array($tutorial)) {
                    echo "<tr>
                <td>$row[id]</td>
                <td>$row[title]</td>
                <td>$row[url]</td>
                <td>$row[category]</td>
                <td><a href='tutorial/edit_tutorial.php?id=$row[id]' class='btn btn-success btn-sm'>Edit</a>
                    <a href='tutorial/delete_tutorial.php?id=$row[id]' class='btn btn-info btn-sm'>Delete</a>
                </td>
                </tr>";
                }
                ?>
            </table>
            
        </div>
    </div>


</div>
<?php
include 'footer.php';
?>