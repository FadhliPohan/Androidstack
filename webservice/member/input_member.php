<?php
include 'header.php';
?>
<div class="container">
    <h3>Form Input Pengguna</h3>
    <form action="simpan-member.php" method="POST">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Nama Lengkap</label>
            <div class="col-sm-10">
                <input type="text" name="full_name" placeholder="Masukan Nama Lengkap" class="form-control">
            </div>
        </div>
        
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="email" name="username" placeholder="Masukan Email" class="form-control">
            </div>
        </div>

       

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="password" name="password_hash" placeholder="Masukan Password" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">NIM</label>
            <div class="col-sm-10">
                <input type="text" name="nim" placeholder="Masukan Nim" class="form-control">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Alamat</label>
            <div class="col-sm-10">
                <textarea name="alamat" placeholder="Masukan Alamat" class="form-control"></textarea>
            </div>
        </div>


        <div class="form-group row">
            <label class="col-sm-2 col-form-label"></label>
            <div class="col-sm-10">
                <button type="submit" class="btn btn-danger">Simpan Data</button>
                <a href="../member.php" class="btn btn-primary">Batal</a>
            </div>
        </div>
    </form>
</div>
<?php
include 'footer.php';
?>