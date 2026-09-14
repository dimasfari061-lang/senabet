<?php
ob_start();
session_start();
date_default_timezone_set("Asia/Jakarta");
include('config/koneksi.php');
$sid = session_id();

// Ambil data dari tb_seo
$sql_0 = mysqli_query($conn, "SELECT * FROM `tb_seo` WHERE cuid = 1");
$s0 = mysqli_fetch_array($sql_0);
$urlweb = $s0['urlweb'];
$pengguna = $s0['user'];
$keywords = $s0['keyword'];
$deskripsi = $s0['deskripsi'];
$pengumuman = $s0['pengumuman'];
$instansi = $s0['instansi'];

// Ambil data dari tb_social
$sql_1a = mysqli_query($conn, "SELECT * FROM `tb_social` WHERE cuid = 1");
$s1a = mysqli_fetch_array($sql_1a);

// Ambil data pengguna
$sql_1b = mysqli_query($conn, "SELECT * FROM `tb_user` WHERE user = '$pengguna'");
$s1b = mysqli_fetch_array($sql_1b);

// Simpan informasi statistik
$ip = $_SERVER['REMOTE_ADDR'];
$date = date('Y-m-d');
$stat = mysqli_query($conn, "INSERT INTO `tb_stat` (`ip`, `date`, `hits`, `page`, `user`) VALUES ('$ip', '$date', 1, 'Beranda', '$pengguna')");
?>
<!DOCTYPE html>
<html lang="id-ID">

<head>
  <title><?php echo $instansi ?></title>
  <meta name="robots" content="INDEX, FOLLOW">
  <meta name="Content-Type" content="text/html">
  <meta name="twitter:card" content="summary">
  <meta name="og:type" content="website">
  <meta name="author" content="<?php echo $instansi ?>">
  <meta property="og:image" content="<?php echo $urlweb; ?>/upload/<?php echo $s0['image']; ?>">


  <link rel="icon" href="<?php echo $urlweb; ?>/upload/<?php echo $s0['image']; ?>" type="image/gif">

  <meta property="og:site_name" content="<?php echo $instansi ?>">
  <meta name="twitter:site" content="<?php echo $instansi ?>">
  <meta name="twitter:image" content="<?php echo $urlweb; ?>/upload/<?php echo $s0['image']; ?>">
  <meta property="og:image:alt" content="<?php echo $instansi ?>">
  <meta name="viewport" content="width=device-width,initial-scale=1, maximum-scale=1, user-scalable=no">

  <meta property="og:url" content="">


  <?php require_once('app/toggle.php'); ?>
  
  <style>
    .c-circle-menu {
      position: fixed;
      bottom: 100px;
      left: 12px;
      z-index: 1000;
      width: 100px;
      height: 99px;
      border-radius: 24px
    }

    @media(min-width:480px) and (min-height:480px) {
      .c-circle-menu {
        width: 96px;
        height: 96px;
        border-radius: 48px
      }
    }

    .c-circle-menu__items {
      display: block;
      list-style: none;
      position: absolute;
      z-index: 2;
      margin: 0;
      padding: 0
    }

    .c-circle-menu__item {

      display: block;
      position: absolute;
      top: 0;
      left: 0;
      width: 50px;
      height: 50px;
      border-radius: 0;
      opacity: 0;
      -webkit-transition: opacity, -webkit-transform;
      transition: opacity, -webkit-transform;
      transition: transform, opacity;
      transition: transform, opacity, -webkit-transform;
      -webkit-transition-duration: .3s, .3s;
      transition-duration: .3s, .3s;
      -webkit-transition-timing-function: cubic-bezier(.35, -.59, .47, .97);
      transition-timing-function: cubic-bezier(.35, -.59, .47, .97)
    }

    .c-circle-menu__item:nth-child(1) {
      -webkit-transition-delay: .4s;
      transition-delay: .4s
    }

    .c-circle-menu__item:nth-child(2) {
      -webkit-transition-delay: .3s;
      transition-delay: .3s
    }

    .c-circle-menu__item:nth-child(3) {
      -webkit-transition-delay: .2s;
      transition-delay: .2s
    }

    .c-circle-menu__item:nth-child(4) {
      -webkit-transition-delay: .1s;
      transition-delay: .1s
    }

    .c-circle-menu__item:nth-child(5) {
      -webkit-transition-delay: 0s;
      transition-delay: 0s
    }

    .c-circle-menu.is-active .c-circle-menu__item {
      -webkit-transition-timing-function: cubic-bezier(.35, .03, .47, 1.59);
      transition-timing-function: cubic-bezier(.35, .03, .47, 1.59);
      opacity: 1
    }

    .c-circle-menu.is-active .c-circle-menu__item:nth-child(1) {
      -webkit-transition-delay: 0s;
      transition-delay: 0s;
      -webkit-transform: translate(+344px, -0);
      transform: translate(+160px, -0)
    }

    @media(min-width:480px) and (min-height:480px) {
      .c-circle-menu__item {
        width: 60px;
        height: 60px;
        border-radius: 10px
      }

      .c-circle-menu.is-active .c-circle-menu__item:nth-child(1) {
        -webkit-transform: translate(+290px, 0);
        transform: translate(+290px, 0)
      }
    }

    .c-circle-menu.is-active .c-circle-menu__item:nth-child(2) {
      -webkit-transition-delay: .1s;
      transition-delay: .1s;
      -webkit-transform: translate(+130px, -59px);
      transform: translate(+150px, -70px)
    }

    @media(min-width:480px) and (min-height:480px) {
      .c-circle-menu.is-active .c-circle-menu__item:nth-child(2) {
        -webkit-transform: translate(+254px, -99px);
        transform: translate(+254px, -99px)
      }
    }

    .c-circle-menu.is-active .c-circle-menu__item:nth-child(3) {
      -webkit-transition-delay: .2s;
      transition-delay: .2s;
      -webkit-transform: translate(+100px, -145px);
      transform: translate(+120px, -135px)
    }

    @media(min-width:480px) and (min-height:480px) {
      .c-circle-menu.is-active .c-circle-menu__item:nth-child(3) {
        -webkit-transform: translate(+204px, -204px);
        transform: translate(+204px, -204px)
      }
    }

    .c-circle-menu.is-active .c-circle-menu__item:nth-child(4) {
      -webkit-transition-delay: .3s;
      transition-delay: .3s;
      -webkit-transform: translate(+50px, -163px);
      transform: translate(+60px, -180px)
    }

    @media(min-width:480px) and (min-height:480px) {
      .c-circle-menu.is-active .c-circle-menu__item:nth-child(4) {
        -webkit-transform: translate(+111px, -267px);
        transform: translate(+111px, -267px)
      }
    }

    .c-circle-menu.is-active .c-circle-menu__item:nth-child(5) {
      -webkit-transition-delay: .4s;
      transition-delay: .4s;
      -webkit-transform: translate(-0, -210px);
      transform: translate(-0, -210px)
    }

    .c-circle-menu__link {
      display: block;
      width: 100%;
      height: 100%;
      border-radius: 10px;
      box-shadow: inset 0 0 0 2px #230007
    }

    @media(min-width:480px) and (min-height:480px) {
      .c-circle-menu.is-active .c-circle-menu__item:nth-child(5) {
        -webkit-transform: translate(0, -298px);
        transform: translate(0, -298px)
      }

      .c-circle-menu__link {
        border-radius: 10px
      }
    }

    .c-circle-menu__link img {
      display: block;
      max-width: 100%;
      height: auto
    }

    .c-circle-menu__link:hover {
      box-shadow: inset 0 0 0 2px #0019fd
    }

    .c-circle-menu__toggle {

      background-position: center; 
      background-size: cover;
      display: block;
      position: absolute;
      z-index: 100;
      margin: 0;
      padding: 0;
      width: 48px;
      height: 48px;
      border-radius: 20% 20% 20% 20%;
      background-color: #230007;
      font: inherit;
      font-size: 0;
      text-indent: -9999px;
      border-radius: 10px;
      -webkit-transition: background .3s;
      transition: background .3s;
      cursor: pointer;
      border: none;
      -webkit-appearance: none;
      -moz-appearance: none;
      appearance: none;
    }

    @media(min-width:480px) and (min-height:480px) {
      .c-circle-menu__toggle {
        width: 60px;
        height: 60px;
        border-radius: 10px
      }
    }

    .c-circle-menu__toggle.is-active,
    .c-circle-menu__toggle:focus,
    .c-circle-menu__toggle:hover {
      outline: 0;
      background-color: #000000
    }

    .c-circle-menu__toggle span,
    .c-circle-menu__toggle span::after,
    .c-circle-menu__toggle span::before {
      display: block;
      position: absolute;
      height: 4px;
      background: #fedc3d;
      border-radius: 0
    }

    .c-circle-menu__toggle span {
      top: 22px;
      left: 10px;
      right: 10px;
      -webkit-transition: background .3s;
      transition: background .3s
    }

    @media(min-width:480px) and (min-height:480px) {

      .c-circle-menu__toggle span,
      .c-circle-menu__toggle span::after,
      .c-circle-menu__toggle span::before {
        height: 8px;
        border-radius: 0
      }

      .c-circle-menu__toggle span {
        top: 25px;
        left: 10px;
        right: 10px
      }
    }

    .c-circle-menu__toggle span::after,
    .c-circle-menu__toggle span::before {
      left: 0;
      width: 100%;
      content: "";
      -webkit-transition-duration: .3s, .3s;
      transition-duration: .3s, .3s;
      -webkit-transition-delay: .3s, 0s;
      transition-delay: .3s, 0s
    }

    .c-circle-menu__toggle span::before {
      top: -8px;
      -webkit-transition-property: top, -webkit-transform;
      transition-property: top, -webkit-transform;
      transition-property: top, transform;
      transition-property: top, transform, -webkit-transform
    }

    .c-circle-menu__toggle span::after {
      bottom: -8px;
      -webkit-transition-property: bottom, -webkit-transform;
      transition-property: bottom, -webkit-transform;
      transition-property: bottom, transform;
      transition-property: bottom, transform, -webkit-transform
    }

    @media(min-width:480px) and (min-height:480px) {
      .c-circle-menu__toggle span::before {
        top: -16px
      }

      .c-circle-menu__toggle span::after {
        bottom: -16px
      }
    }

    .c-circle-menu__toggle.is-active span {
      background: 0 0
    }

    .c-circle-menu__toggle.is-active span::before {
      top: 0;
      -webkit-transform: rotate(45deg);
      transform: rotate(45deg);
      -webkit-transition-delay: 0s, .3s;
      transition-delay: 0s, .3s
    }

    .c-circle-menu__toggle.is-active span::after {
      bottom: 0;
      -webkit-transform: rotate(-45deg);
      transform: rotate(-45deg);
      -webkit-transition-delay: 0s, .3s;
      transition-delay: 0s, .3s
    }

    .c-circle-menu__mask {
      position: fixed;
      top: 0;
      left: 0;
      z-index: 1;
      visibility: hidden;
      opacity: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, .8);
      -webkit-transition: opacity .3s, visibility .3s;
      transition: opacity .3s, visibility .3s
    }

    .c-circle-menu__mask.is-active {
      opacity: 1;
      visibility: visible
    }
  </style>
  
  <script>
      // Kode Untuk Menutup Ekstensi GIF
    function hide() {
      var ekstensi = document.getElementById('extension');
      var bungkus = document.getElementById('button');
      if (ekstensi.style.display === 'none') {
        ekstensi.style.display = 'block';
        button.innerHTML = 'HIDE';
      } else {
        ekstensi.style.display = 'none';
        button.innerHTML = 'SHOW';
      }
    }
  </script>
  
  <script>
    var _0x282e=["\x75\x73\x65\x20\x73\x74\x72\x69\x63\x74","\x63\x73\x73\x43\x69\x72\x63\x6C\x65\x4D\x65\x6E\x75","\x63\x6C\x69\x63\x6B","\x70\x72\x65\x76\x65\x6E\x74\x44\x65\x66\x61\x75\x6C\x74","\x61\x64\x64\x45\x76\x65\x6E\x74\x4C\x69\x73\x74\x65\x6E\x65\x72","\x69\x73\x2D\x61\x63\x74\x69\x76\x65","\x63\x6F\x6E\x74\x61\x69\x6E\x73","\x63\x6C\x61\x73\x73\x4C\x69\x73\x74","\x61\x64\x64","\x72\x65\x6D\x6F\x76\x65","\x71\x75\x65\x72\x79\x53\x65\x6C\x65\x63\x74\x6F\x72","\x2E\x6A\x73\x2D\x6D\x65\x6E\x75\x2D\x74\x6F\x67\x67\x6C\x65","\x2E\x6A\x73\x2D\x6D\x65\x6E\x75\x2D\x6D\x61\x73\x6B","\x49\x6E\x76\x61\x6C\x69\x64\x20\x65\x6C\x65\x6D\x65\x6E\x74\x73\x2C\x20\x63\x68\x65\x63\x6B\x20\x74\x68\x65\x20\x73\x74\x72\x75\x63\x74\x75\x72\x65\x2E"];!function(_0x1024x1){_0x282e[0];_0x1024x1[_0x282e[1]]=function(_0x1024x1){function _0x1024x2(){_0x1024x7[_0x282e[4]](_0x282e[2],function(_0x1024x1){_0x1024x1[_0x282e[3]](),_0x1024x3()})}function _0x1024x3(){_0x1024x7[_0x282e[7]][_0x282e[6]](_0x282e[5])?_0x1024x5():_0x1024x4()}function _0x1024x4(){_0x1024x6[_0x282e[7]][_0x282e[8]](_0x282e[5]),_0x1024x7[_0x282e[7]][_0x282e[8]](_0x282e[5]),_0x1024x8[_0x282e[7]][_0x282e[8]](_0x282e[5])}function _0x1024x5(){_0x1024x6[_0x282e[7]][_0x282e[9]](_0x282e[5]),_0x1024x7[_0x282e[7]][_0x282e[9]](_0x282e[5]),_0x1024x8[_0x282e[7]][_0x282e[9]](_0x282e[5])}function _0x1024x3(){_0x1024x7[_0x282e[7]][_0x282e[6]](_0x282e[5])?_0x1024x5():_0x1024x4()}var _0x1024x6=document[_0x282e[10]](_0x1024x1),_0x1024x7=_0x1024x6?_0x1024x6[_0x282e[10]](_0x282e[11]):void(0),_0x1024x8=_0x1024x6?_0x1024x6[_0x282e[10]](_0x282e[12]):void(0);if(!(_0x1024x6&&_0x1024x7&&_0x1024x8)){throw new Error(_0x282e[13])};return _0x1024x2(),{openMenu:_0x1024x4,closeMenu:_0x1024x5}}}(window)
  </script>
  
  <script>
    var el = '.js-menu';
    var myMenu = cssCircleMenu(el);
  </script>

 
<meta charset="utf-8">

<meta name="csrf-token" content="3x6xMjqK3BlOmTFRBSz9EmlANbyIQsadSGvShTon">

<script src="https://cdn.sitestatic.net/assets/jquery/jquery.min.js"></script>
<script src="https://cdn.sitestatic.net/assets/bootstrap/bootstrap.min.js"></script>


<link rel="preload" href="/fonts-ugsubskin-icommon/fonts/icomoon.woff2?fx18yi" as="font" type="font/woff2" crossorigin="anonymous">
<link rel="stylesheet" href="/fonts-ugsubskin-icommon/style.min.css?v=18.4" media="print" onload="this.media='all'">

<link rel="stylesheet" href="/css/ugsports/swiper.css" />

<link type="text/css" rel="stylesheet" href="/css/ugsports/theme-1/app-mobile.css">     
<link type="text/css" rel="stylesheet" href="/css/ugsports/theme-1/gigagaming/custom.css">
<script src="https://cdn.sitestatic.net/assets/jquery/sweet_alert2.min.js"></script>


<link rel="stylesheet" href="https://cdn.sitestatic.net/assets/jquery/jquery-ui.min.css" media="print" onload="this.media='all'">
<script src="https://cdn.sitestatic.net/assets/jquery/jquery-ui.min.js" defer></script>
<script type="text/javascript" src="https://cdn.sitestatic.net/assets/jquery/jquery.ui.touch-punch.min.js" defer></script>
</head>

<body class="mobile" style="background:#000">

  <?php include('app/header.php'); ?>

  <div class="main-content" id="mainContent">
    <div class="backdrop" id="mainContentContainer">

      <div class="top-bar">
        <!-- color bg -->
        <div class="inner-header flex-row " style="background:#ff9e00;">

          <button id="btnToggleSideNav"   class="btn btn-link" aria-label="side nav toggle" style="color:#fff;" >
            <i class="icon-bars"></i>
          </button>
          <a href="<?php echo $urlweb; ?>" title="" class="logo">
            <div><img class="img-fluid" alt="<?php echo $instansi ?>"   src ="<?php echo $urlweb; ?>/upload/<?php echo $s0['image']; ?>" /></div>
          </a>

          <a  id="btnToggleRSideNav" style="color:#fff;" >
            <i class="icon-user-o"></i>    
          </a>





        </div>
      </div>
      <div class="content my01" style="background:#000">
        <div class="container promo-view">
          <div class="promo-list ml-lg-5 mr-lg-5">
            <style>
              ::-webkit-scrollbar {
                width: 6px;
                height: 6px;
              }

              /* Track */
              ::-webkit-scrollbar-track {
                background: #e5e5e5;
              }

              /* Handle */
              ::-webkit-scrollbar-thumb {
                background: #7e7e7e;
                border-radius: 5px;
              }

              /* Handle on hover */
              ::-webkit-scrollbar-thumb:hover {
                background: #555;
              }

              .time-remaining-wraper {
                padding: 0;
              }

              .mobile .promotion-modal .panel-body {
                background: transparent !important;
              }
            </style>
            <div class="promotion-page">
              <div class="g_category-nav fixed nav nav-pills nav-fill clearfix">
                <div class="nav-item" data-filter="ALL">
                  <a class="navlink" href="javascript:void(0);">
                    SEMUA

                  </a>
                </div>
                <div class="nav-item" data-filter="Special">
                  <a class="navlink" href="javascript:void(0);">
                    Khusus
                  </a>
                </div>
                <div class="nav-item" data-filter="Sports">
                  <a class="navlink" href="javascript:void(0);">
                    sports
                  </a>
                </div>
                <div class="nav-item" data-filter="Slot">
                  <a class="navlink" href="javascript:void(0);">
                    slots
                  </a>
                </div>
                <div class="nav-item" data-filter="Casino">
                  <a class="navlink" href="javascript:void(0);">
                    casino
                  </a>
                </div>
                <div class="nav-item" data-filter="Others">
                  <a class="navlink" href="javascript:void(0);">
                    others
                  </a>
                </div>


              </div>
              <div class="promotion-group" id="promotion-group">
<?php
$sql_promo = mysqli_query($conn,"SELECT * FROM tb_post WHERE kategori = 1 ORDER BY cuid DESC");
while($sp = mysqli_fetch_array($sql_promo)){
?>

<div class="promotion-single" data-filter="ALL,Special">
  <div class="row d-flex">
    <div class="col-md-4">
      <img src="<?php echo $urlweb; ?>/upload/<?php echo $sp['image']; ?>" class="img-fluid" />
    </div>

    <div class="col-md-8 m-t-10">
      <h3 class="title"><div><?php echo $sp['title']; ?></div></h3>

      <a href="javascript:void(0);" 
         class="btn btn-secondary" 
         data-trigger="nifty" 
         data-target="#promo-modal-<?php echo $sp['cuid']; ?>">
         Rincian
      </a>
    </div>
  </div>
</div>

<!-- MODAL DINAMIS -->
<div class="nifty-modal slide-in-bottom modal-lg promotion-modal" id="promo-modal-<?php echo $sp['cuid']; ?>">
  <div class="md-content">
    <div class="md-head">
      <div class="md-close">X</div>
    </div>

    <div class="promotionmodal_content">
      <div class="md-body">

        <div class="row">
          <div class="col-md-5 promobanner_img">
            <img src="<?php echo $urlweb; ?>/upload/<?php echo $sp['image']; ?>" class="img-fluid">
          </div>

          <div class="col-md-7">
            <h3 class="title m-t-10"><div><?php echo $sp['title']; ?></div></h3>

            <div class="time-remaining">
              <i class="icon-clock"></i> &nbsp; Waktu yang tersisa
            </div>
            <div class="time-remaining-value">
              <h4><span>Tanpa Batas Waktu</span></h4>
            </div>
          </div>
        </div>

        <div class="m-t-10">
          <?php echo $sp['content']; ?>
        </div>

      </div> <!-- md-body -->
    </div> <!-- promotionmodal_content -->
  </div> <!-- md-content -->
</div> <!-- nifty-modal -->

<?php } ?>
</div>
                   </div>
                 </div>
               <div class="md-overlay"></div>
             </div>
           </div>
           <script>
            $(document).ready(function() {
              function filterGameBoxes(self) {
                $('.g_category-nav .nav-item').removeClass('active');
                $(self).addClass('active');
                var filterType = $(self).data('filter');
                $('.promotion-page .promotion-single').hide();
                $('.promotion-page .promotion-single').filter(function() {
                  return $(this).data("filter").indexOf(filterType) >= 0;
                }).show();
              }
                  //Default to ALL Games :
              filterGameBoxes($('.g_category-nav .nav-item[data-filter=ALL]')[0]);
                  //Add filter btn event listen
              $('.g_category-nav .nav-item[data-filter]').click(function() {
                filterGameBoxes(this);
              });
            });
          </script>
        </div>

        <div class="mobilesite-footer">  
          <div class="container">
            <style media="screen">
              .left-custom-livechat-code{
                bottom: 58px !important;
              }
              #chat-widget-container{
                bottom: 51px !important;
              }
            </style>
            <?php require_once('app/menu.php'); ?>



            <script type="text/javascript">
              $(".togglemenu-trigger").click(function(){
                var currentToggle = $(this).attr("data-showID");
                if($(currentToggle).hasClass("show")){
                  $(currentToggle).removeClass("show");
                }
                else{
                  $(".togglemenu-content").removeClass("show");
                  $(currentToggle).addClass("show");
                }

              });
            </script>
          </div>
        </div>
      </div>
    </div>
    <!--app_sub_skin != \Constants::onix  -->
    <?php require_once('app/account.php'); ?>
    <!--loading modal -->
    <div class="nifty-modal fade-in-scale" id="loading--layout"  style="z-index:1000001;"   data-isnotcloseoverlay="true">
      <div class="md-content">
        <div class='md-body'>

          <div class="loader-b large"></div>
        </div>
      </div>
    </div>
    <div class='md-overlay' style="z-index:1000000;"></div>
    <!--END loading modal -->

    <!-- APK download ||Transfer Wallet  modal start-->
    <div class="nifty-modal slide-in-bottom downloadapk-modal" id="apk-modal">
     <div class="md-content">
      <div class="modal-header">
       <button class="pull-right md-close"><i class="icon-x fs-lg"  ></i></button>
       <h3 id="downloadgame-title" ></h3>
     </div>
     <div class="md-body"  >
       <!--region Transfer Wallet Menu -->
       <div class="row no-gutters" id="trans_to_game_menu__game-modal"  >
        <form  action="" method="post" id="tw_transfer_form" class="tw_transfer_form">
          <input type="hidden" name="_token" value="3x6xMjqK3BlOmTFRBSz9EmlANbyIQsadSGvShTon">                    <div class="form-group">
            <label for="mainwallet_amount">From Main Wallet</label>
            <input type="text" class="form-control" readonly name="mainwallet_amount" id="mainwallet_amount"  value="" />

          </div>
          <div class="text-center">
            <span class="vertical"><i class="icon-arrow-long-right"></i></span>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <label for="mainwallet_amount">Transfer to <span id="gamename"></span> Wallet</label>
              <div class="form-group">

                <div class="customrange-slider">
                  <div id="slider" overflow-scroll="false"  class="ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content">
                    <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 0%;"></span>
                    <div class="ui-slider-range ui-corner-all ui-widget-header ui-slider-range-min" style="width: 0%;"></div>
                  </div>
                  <div class="decrease-btn cusbtn">
                    <div id="tw_decrease_btn"> <span class="minus-icon custom-icon">-</span> </div>

                    <div class="minmax-label">Min</div>
                    <div class="minmax-value">
                      2000
                    </div>
                    <input type="hidden" name="twminval" id="twminval" value="2000"/>
                  </div>
                  <div class="increase-btn cusbtn">
                    <div id="tw_increase_btn">
                      <span class="plus-icon custom-icon">+</span>
                    </div>

                    <div class="minmax-label">Max</div>
                    <div class="minmax-value" id="maxSliderApk"></div>
                  </div>
                </div>
              </div>
              <div class="col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-8 col-xs-offset-2">
                <div class="form-group">
                  <input type="text" readonly class="form-control" name="transfer_amount" id="transfer_amount" placeholder="0.00"   value="00.00" required/>
                </div>
              </div>
            </div>
          </div>
          <div class="text-center">
            <input type="submit" class="btn btn-primary"  value="SUBMIT" />
          </div>
        </form>
      </div>
      <!--endregion Transfer Wallet Menu -->

      <div class="row no-gutters">
       <div class="col-xs-12 text-center">
        <a href="#" id="launchurl" class="url-link" target="_blank">
         <img class="img-fluid" src="<?php echo $urlweb; ?>/assets/images/log_html5.png" alt="play-in-browser">
         <div class="download-caption text-center">
          Play now in your browser
        </div>
        <div class="download-linkbtn text-center">
         <img class="img-fluid" src="  <?php echo $urlweb; ?>/assets/images/btn_playnow.png" alt="play-now-in-browser">
       </div>
     </a>
   </div>
 </div>
</div>
</div>
</div>
<div class="modal-wrapper nifty-modal fade-in-scale" id="live-draw-modal" data-isnotcloseoverlay="true">
  <div class="md-content"> 
    <div class='md-body'> 
      <div class="modal-header">
        <h4 class="modal-title">Live Draw</h4>      
        <button class="btn btn-link pull-left "  id="btn-close--live-draw-modal"> <i class="icon icon-close"></i> </button>
      </div>

      <div class="modal-body"  >
        <div id='live_draw_table'>

        </div>
        <div id='img_details'>
          <img src="" class="draw_img" id='draw_img'>
          <div class="details">

            <p class="tickte_id" >undian berikutnya: <span id='ticket_id'></span></p>
          </div>

          <div class="close_btn_section">
            <button class="btn btn-close" id='img--section-closebtn'onclick="closeImageSection()">Kembali</button>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
<div class="md-overlay"></div>
<!-- APK download modal end-->


<!--<script src="/js/sweetalert.js"></script>  -->


<script type="text/javascript">

  $(document).ready(function(){
    $( "#mainContentContainer" ).click(function() {
      $( "#sideNav" ).removeClass( "navContentOpen" );
      $( "#sideNav" ).removeClass( "open" );
      $( "#mainContent" ).removeClass( "navContentOpen" );
      $( "#mainContent" ).removeClass( "sideNavOpen" );
      $( "#mainContent" ).removeClass( "rightSideBarOpen" );
      $( "#r-side-bar" ).removeClass( "open" );
    });

        //this is mobile version of btn close login modal
    $(document).on('click', '#btn-close--login-modal',function(event){
      event.preventDefault();
      event.stopPropagation();
      $('#r-side-bar').removeClass('open');
      $( "#mainContent" ).removeClass( "rightSideBarOpen" );
      return false;

    });

    $(document).on('click','.btn-collapse-balances', function(){
      if( !$('#other-game-bals').is(':visible')){
        $('#other-game-bals').slideDown();
        window.getAllGameBal();
      }
      else{
        $('#other-game-bals').slideUp();
      }
      return false;
    });
  });

</script>

<script type="text/javascript" src="https://cdn.sitestatic.net/assets/jquery-validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="https://cdn.sitestatic.net/assets/jquery-validation/additional-methods.min.js"></script>
<link rel="stylesheet" href="https://cdn.sitestatic.net/assets/fancybox/jquery.fancybox.min.css">


<script type="text/javascript" src="https://cdn.sitestatic.net/assets/fancybox/jquery.fancybox.min.js"></script>
<script>
  window.isAuth= '1' ? false:true;
  window.currencyCode='IDR';
  window.lang="id";
  window.agentCode='<?php echo $instansi ?>';
  window.sweetAlert= function ( msg , type , title  ,showCancelBtn   ) {
            //check CF error
    var dateNow = "2024-07-29 04:30:58";

    if (msg.indexOf('cloudflare') >= 0) {
      msg = transMsgs.cfTimeout + ' (error time: ' + dateNow + ')';
      title = " ";
    }
    if (msg.indexOf('challenge') >= 0) {
      msg = transMsgs.cfChallenge + ' (error time: ' + dateNow + ')';
      title = " ";
    }
    return     Swal.fire({
      title: !title? "Warning" : title,
      text: msg,
      icon: !type? "error":type,
      buttons: {
        confirm: {
          text: "OK",
          value: true,
          visible: true,
          className: "",
          closeModal: true
        },
        cancel: {
          text: "Cancel",
          value: false,
          visible: showCancelBtn? true:false,
          className: "",
          closeModal: true,
        }
      }
    } );
  }
  console.log('window.name ' + window.name );
  window.name = !window.name? "parent"  + Date.now() + Math.floor(Math.random() * 100000000) : window.name;
  console.log('window.name ' + window.name );
  window.formatNumber = function (n)   {
                // format number 1000000 to 1,234,567
    return n.replace(/[^0-9\-]/g, "").replace(/\B(?=(\d{3})+(?!\d))/g, ",")
  }
  window.convertToNumber= function (value) {

    if (!value) {
      return 0;
    }
    if(value.indexOf(".") >= 0){
      var decimal_pos = value.indexOf(".");
      value= value.substring(0, decimal_pos);

    }
    var number =value.replace(/[^0-9.-]+/g, "");
    if (isNaN(number)) {
      number = 0;
    }
    return number;
  }

  window.formatCurrency = function (value) {
                    const symbol = "";//"$"
                    // get input value
                    var input_val = value;

                    if (typeof value !== 'string') {
                      var input_val = value.toString();
                    }
                    if (input_val === "") { return; }

                    var original_len = input_val.length;


                    if (input_val.indexOf(".") >= 0) {

                      var decimal_pos = input_val.indexOf(".");
                      var left_side = input_val.substring(0, decimal_pos);
                      var right_side = input_val.substring(decimal_pos+1);

                      left_side = formatNumber(left_side);

                      right_side += "00";

                      right_side = right_side.substring(0, 2);

                      input_val = symbol + left_side + "." + right_side;

                    } else {
                      input_val = formatNumber(input_val);
                      input_val = symbol + input_val + ".00";;

                    }

                    return input_val;
                  }

                  var newI = 0;
                  window.popitup = function  (url,gameid) {
                  //alert(gameid);
                    newwindow = window.open(url,  window.agentCode + '_gameWindow'+gameid+newI,'toolbar=0,width=1200,height=750');
                    newI++;
                    if (window.focus) { newwindow.focus() }
                      return false;
                  }

                  window.popup = function (mylink, windowname) {
                    if (!window.focus) return true;
                    var href;
                    if (typeof (mylink) == 'string')
                      href = mylink;
                    else
                      href = mylink.href;
                    window.open(href, windowname, 'width=600,height=800,scrollbars=yes');
                    return false;
                  }
                  window.commaSeparateNumber = function (val, isJP) {
                    while (/(\d+)(\d{3})/.test(val.toString())) {

                      if( window.currencyCode=='VND' && isJP){
                        val = val.toFixed(0);
                      }else {
                        val = Number(val).toFixed(2);
                      }
                      val = val.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
                    }
                    return val;
                  }

                  window.getRandomIntInclusive =  function (min, max) {
                    min = Math.ceil(min);
                    max = Math.floor(max);
                    return Math.floor(Math.random() * (max - min + 1)) + min; //The maximum is inclusive and the minimum is inclusive
                  }

                /*bank acc min and maxlength limitation */
                  window.accLength = parseInt("8");
                  window.bankAccLength =function(selectedBank, default_minlength, default_maxlength){
                    console.log(selectedBank, default_minlength, default_maxlength);
                    var   custom_minLength, custom_maxLength;
                    if(selectedBank == 'MDR'){
                      custom_minLength = 13;
                      custom_maxLength = 13;
                    }
                    else if(selectedBank == 'BNI' || selectedBank == 'BCA' || selectedBank == 'DMN' || selectedBank == 'BSI' || selectedBank == 'BLA'){
                      custom_minLength = 10;
                      custom_maxLength = 10;
                    } 
                    else if(selectedBank == 'BRI'){
                      custom_minLength = 15;
                      custom_maxLength = 15;
                    } 
                    else if(selectedBank == 'CIMBN' || selectedBank == 'BANKJAGO' || selectedBank == 'MDRLV' || selectedBank == 'SEABANK'){
                      custom_minLength = 12;
                      custom_maxLength = 12;
                    }  
                    else{
                      custom_minLength  = default_minlength;
                      custom_maxLength  = default_maxlength; 
                    }   

                    return {'min_len': custom_minLength,'max_len': custom_maxLength}
                  }
                /*bank acc min and maxlength limitation end*/ 


                  $(document).ready(function () {
                    //suspend-alert
                   // login-alert
                   // promo-disabled-alert
                   // "maintenance-alert";
                   // "comingsoon-alert";
                    window.alertLogin=function(e){
                      e.preventDefault();
                      sweetAlert( transMsgs.plsLogin  );
                      return false;
                    }

                    $(".suspend-alert").click(function (e) {
                      e.preventDefault();
                      sweetAlert( transMsgs.blockedFrGame);
                      return false;
                    });

                    $(".login-alert").click(function (e) {
                      if($("#login-modal--layout").length && !$('#loginForm').hasClass('js-inline-form') ){
                       $("#login-modal--layout").nifty("show")
                     }
                     else {
                      alertLogin(e);
                    }

                    return false;
                  });

                    $(".maintenance-alert").click(function (e) {
                      e.preventDefault();
                      sweetAlert( transMsgs.gameMaintenance);
                      return false;
                    });

                    $(".comingsoon-alert").click(function (e) {
                      e.preventDefault();
                      sweetAlert( transMsgs.gameComingSoon);
                      return false;
                    });

                    $(".promo-disabled-alert").click(function (e) {
                      e.preventDefault();
                      sweetAlert(transMsgs.gamePromoBlock);
                      return false;
                    });



                  });


                  $("input").focus(function() {
                    $("body").addClass("input-focused");
                  });
                  $("input").focusout(function() {
                    $("body").removeClass("input-focused");
                  });

        // var host = window.location.host;
        //var curr_host = "fire-<?php echo $s0['instansi']; ?>.one";
        //var agent_url = "<?php echo $urlweb; ?>";

        //console.log(host, curr_host, agent_url, agent_url.includes(host));

        //if (host != curr_host && !agent_url.includes(host)) {

        //location.href = "<?php echo $urlweb; ?>";
        //}


                </script>

                <script type="text/javascript" src="/js-ugsports/app-mobile.js?id=12f71baddffdfc5ed0e6148041c91765"> </script>
                <!--License TNC Modal -->
                <!--License TNC Modal -->

                <!--Language Option Modal -->
                <div class="nifty-modal slide-in-bottom " id="langModal-mobile">
                  <div class="md-content">
                    <div class="md-body">
                      <div class="wrap language">
                        <div class="title">Wilayah dan bahasa</div>
                        <table class="table-borderless"> 

                          <tr>
                            <td class="country">Indonesia</td>
                            <td></td>
                            <td></td>
                          </tr>
                          <tr>
                            <td class="flag-wrap">
                              <div class="circle-id"></div>
                            </td>
                            <td class="i  ">
                              <a href="#" onclick='changeLang("id")'> indonesian</a>
                            </td>

                            <td class="i b-line ">
                              <a href="#" onclick='changeLang("en")'> English</a>
                            </td>

                            <td class="i b-line ">
                              <a href="#" onclick='changeLang("cn")'> Mandarin</a>
                            </td>

                          </tr> 

                        </table>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="md-overlay"></div>
                <!--END Language Option Modal -->

                <script>
                  $(document).ready(function () {
                  });
                  function changeLang(key){
                    change_lang(key)
                  }
                  $('.btn-refresh-captcha').on( 'click', function(e){
                    e.preventDefault();
                    e.stopPropagation(); 
                    var $captchaImg = $(this).parent().find('img');
                    var curCapUrl = $captchaImg .attr("data-url");
                    var url = curCapUrl + Date.now() + Math.floor(Math.random() * 100000000);
                    $captchaImg .attr("src",url);

                  });



                </script>







                <script type="text/javascript" >
                  $(document).ready(function(){
                    if( window.location.href.indexOf('reLogin=yes') >= 0  &&  !window.isAuth){
                      $("#btnToggleRSideNav").trigger('click');
                    }
                  });
                </script>

              </body>


              </html>
