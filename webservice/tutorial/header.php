<?php
session_start();
if(empty($_SESSION['status_login'])){
    header("location:login.php");
}

include '../koneksi.php';
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width,initial-scale=1, shrink-to-fit=no" name="viewport">
    <meta content="description" name="description">
    <meta name="google" content="notranslate" />
    <meta content="Deplop by fadli" name="author">

    <!-- Disable tap highlight on IE -->
    <meta name="msapplication-tap-highlight" content="no">


    <link rel="apple-touch-icon" sizes="180x180" href="../../material/assets/apple-icon-180x180.png">
    <link href="../../material/assets/favicon.ico" rel="icon">

    <link href="../../material/main.550dcf66.css" rel="stylesheet">
  


    <title>Android Stack</title>


   
</head>

<body>


    <nav class="navbar navbar-default active">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#navbar-collapse" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../index.php" title="">
                    <img src="../assets/images/mashup-icon.svg" class="navbar-logo-img" alt="">
                    Android Stack
                </a>
            </div>

            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-left">

                    <li><a href="../index.php" title="">Data Materi</a></li>
                    <li><a href="../tutorial.php" title="">Data Tutorial</a></li>
                    <li><a href="../user.php" title="">Data User</a></li>
                    <li><a href="../member.php" title="">Data Member</a></li>


                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="nav-item">
                        <a href="" class="nav-link"><?php echo $_SESSION['nama_user']?></a>
                    </li>
                    <li class="nav-item">

                        <p>
                        <a href="../logout.php" class="btn btn-default navbar-btn" title="">Logout</a>
                        </p>
                    </li>
                </ul>
            </div>
    </nav>