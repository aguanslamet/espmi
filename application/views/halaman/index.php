<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>
    <!-- start: Meta -->
    <title>E-SPMI FASTIKOM</title>

    <!-- Web Fonts  -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light" rel="stylesheet" type="text/css">

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="<?= base_url('assets/template'); ?>/blogvendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/template'); ?>/blogvendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/template'); ?>/blogvendor/animate/animate.min.css">

    <link type="text/css" rel="stylesheet" href="<?= base_url('assets/template/content') ?>/css/theme.css" />


    <!-- Theme CSS -->
    <link rel="stylesheet" href="<?= base_url('assets/template'); ?>/css/theme.css">
    <link rel="stylesheet" href="<?= base_url('assets/template'); ?>/css/theme-elements.css">
    <link rel="stylesheet" href="<?= base_url('assets/template'); ?>/css/theme-blog.css">

    <!-- Skin CSS -->
    <link rel="stylesheet" href="<?= base_url('assets/template'); ?>/css/skins/default.css">

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="<?= base_url('assets/template'); ?>/css/custom.css">


    <!-- Slider Bootstrap -->
    <link rel="stylesheet" href="<?= base_url('assets/template'); ?>/blogvendor/slider-bootstrap/slider-bootstrap.css">

    <!-- Global site tag (gtag.js) - Google Analytics -->

</head>

<body>
    <header id="header" class="header-no-border-bottom" data-plugin-options="{'stickyEnabled': true, 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyStartAt': 140, 'stickySetTop': '-140px', 'stickyChangeLogo': false}" style="min-height: 135.625px;">
        <div class="header-body" style="top: 0px;">
            <div class="header-container container">
                <div class="header-row">
                    <div class="header-column">
                        <div class="header-logo">
                            <img src="<?= base_url('assets/img/logo/logo.png') ?>">
                        </div>
                    </div>
                    <div class="header-column">

                    </div>

                </div>
            </div>
            <div class="header-container header-nav header-nav-center header-nav-bar header-nav-bar-primary">

                <button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main">
                    <i class="fa fa-bars"></i>
                </button>
                <div class="header-nav-main header-nav-main-light header-nav-main-effect-1 header-nav-main-sub-effect-1 collapse" style="padding-top:3px;">
                    <nav>
                        <ul class="nav nav-pills" id="mainNav">
                            <li class="">
                                <a href="<?= base_url('') ?>">
                                    <i class="fa fa-home" style="font-size:25px;"></i>
                                </a>
                            </li>

                            <?php
                            $query1 = "SELECT * FROM standar";
                            $menu = $this->db->query($query1)->result_array();
                            ?>
                            <?php foreach ($menu as $m) : ?>

                                <li class="dropdown dropdown-mega">
                                    <a href="#" class="dropdown-toggle"><?= $m['nama_standar'] ?><i class="fa fa-caret-down"></i></a>
                                    <ul class="dropdown-menu">
                                        <li>

                                            <div class="dropdown-mega-content container">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <h3><b><?= $m['nama_standar'] ?></b></h3>
                                                        <p><?= $m['deskripsi'] ?>
                                                    </div>
                                                    <?php
                                                    $role = $m['kode_standar'];
                                                    $query2 = "SELECT sub_standar.*,standar.* FROM sub_standar JOIN standar ON sub_standar.kode_standar=standar.kode_standar WHERE sub_standar.kode_standar=$role";
                                                    $menu1 = $this->db->query($query2)->result_array();
                                                    ?>
                                                    <?php foreach ($menu1 as $m1) : ?>

                                                        <div class="col-md-3">
                                                            <span class="dropdown-mega-sub-title">
                                                                <h4><?= $m1['nama_sub_standar'] ?></h4>
                                                            </span>
                                                            <ul class="dropdown-mega-sub-nav">
                                                                <?php
                                                                $role1 = $m1['kode_sub_standar'];
                                                                $query3 = " SELECT sub_standar.kode_sub_standar,sub_sub_standar.* FROM sub_standar JOIN sub_sub_standar ON sub_standar.kode_sub_standar=sub_sub_standar.kode_sub_standar WHERE sub_standar.kode_sub_standar=$role1";
                                                                $menu2 = $this->db->query($query3)->result_array();
                                                                ?>
                                                                <?php foreach ($menu2 as $m2) : ?>

                                                                    <li><a href="<?= base_url($m2['url']) ?>"><i class="fa fa-chevron-right" aria-hidden="true"></i> <?= $m2['nama_sub_sub_standar'] ?></a></li>

                                                                <?php endforeach; ?>
                                                            </ul>
                                                        </div>
                                                    <?php endforeach; ?>
                                                </div>
                                            </div>

                                        </li>
                                    </ul>

                                </li>
                            <?php endforeach; ?>
                            <li class="">

                                <a href="">
                                    Hubungi Kami
                                </a>


                            </li>
                        </ul>
                    </nav>
                </div>

            </div>
        </div>
    </header>