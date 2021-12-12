<?php
include 'header.php';
?>
<div class="container">
    <div class="row">
        <div class="col-8">
            <h3>Data Pengguna</h3>
        </div>
        <div class="col-4">
            <form method="POST" class="form-inline" action="<?php echo $_SERVER['PHP_SELF'] ?>">
                <div class="form-group mx-sm-3 mb-2">
                    <label for="inputPassword2" class="sr-only">Password</label>
                    <input type="text" class="form-control" name="keyword" placeholder="Masukan Keyword">
                </div>
                <button name="pencarian" type="submit" class="btn btn-primary mb-2">Cari Data</button>
                <p></p></form>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <p><a href="member/input_member.php" class="btn btn-danger btn-sm">Input Data Pengguna</a></p>
            <table class="table table-bordered">
                <tr>
                    <th width="10px;">NO</th>
                    <th>NAMA LENGKAP</th>
                    <th>EMAIL</th>
                    <th>NIM</th>
                    <th width="130">Aksi</th>
                </tr>
                <?php
                $batas = 6;
                $halaman = isset($_GET['hal']) ? $_GET['hal'] : 0;
                if (isset($_POST['pencarian'])) {
                    // query pencarian data
                    $keyword = $_POST['keyword'];
                    $sql = "SELECT * from member where full_name like '%$keyword%' order by full_name ASC limit $halaman,$batas";
                } else {
                    // query menapilkan data biasa
                    $sql = "SELECT * from member order by full_name ASC limit $halaman,$batas";
                }
                $member = mysqli_query($konek, $sql);
                $no=1;
                while ($row = mysqli_fetch_array($member)) {
                    echo "<tr>
                <td>$no</td>
                <td>$row[full_name]</td>
                <td>$row[username]</td>
                <td>$row[nim]</td>
                <td><a href='member/edit_member.php?id=$row[user_id]' class='btn btn-success btn-sm'>Edit</a>
                <a href='member/delete_member.php?id=$row[user_id]' class='btn btn-info btn-sm'>Delete</a>
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