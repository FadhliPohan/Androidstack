<?php
include 'header.php';
?>
<div class="container">
    <div class="row">
        <div class="col-8">
            <h3>Data Admin</h3>
        </div>
        <div class="col-4">
            <form method="POST" class="form-inline" action="<?php echo $_SERVER['PHP_SELF'] ?>">
                <div class="form-group mx-sm-3 mb-2">
                    <label for="inputPassword2" class="sr-only">Password</label>
                    <input type="text" class="form-control" name="keyword" placeholder="Masukan Keyword">
                </div>
                <button name="pencarian" type="submit" class="btn btn-primary mb-2">Cari Data</button>
                <p></p>
            </form>
        </div>
    </div>
    <div>

    </div>
    <div class="row">
        <div class="col-12">
            <p><a href="user/input_user.php" class="btn btn-danger btn-sm">Input Data User</a> </p>
            <table class="table table-bordered">
                <tr>
                    <th width="10px;">NO</th>
                    <th>NAMA LENGKAP</th>
                    <th>EMAIL</th>
                    <th width="130">Aksi</th>
                </tr>
                <?php
                $batas = 6;
                $halaman = isset($_GET['hal']) ? $_GET['hal'] : 0;
                if (isset($_POST['pencarian'])) {
                    // query pencarian data
                    $keyword = $_POST['keyword'];
                    $sql = "SELECT * from user where nama_lengkap like '%$keyword%' order by nama_lengkap ASC limit $halaman,$batas";
                } else {
                    // query menapilkan data biasa
                    $sql = "SELECT * from user order by nama_lengkap ASC limit $halaman,$batas";
                }
                $admin = mysqli_query($konek, $sql);
                $no=1;
                while ($row = mysqli_fetch_array($admin)) {
                    echo "<tr>
                <td>$no</td>
                <td>$row[nama_lengkap]</td>
                <td>$row[email]</td>
                <td><a href='user/edit_user.php?id=$row[id_user]' class='btn btn-success btn-sm'>Edit</a>
                <a href='user/delete_user.php?id=$row[id_user]' class='btn btn-info btn-sm'>Delete</a>
                </td>
                </tr>";
                    $no++;
                }
                ?>
            </table>



        </div>
    </div>


</div>
<?php
include 'footer.php';
?>