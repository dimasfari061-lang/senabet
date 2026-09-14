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

<style id="index-purple-premium">
/* =========================================================
   INDEX UI - PURPLE / MAGENTA PREMIUM
   UI ONLY: existing PHP / links / JS / IDs are untouched.
   ========================================================= */

@media (max-width: 767px) {
    :root{
        --ix-bg:#10031f;
        --ix-panel:#1a0630;
        --ix-panel2:#250743;
        --ix-purple:#6200a3;
        --ix-purple2:#8f00c9;
        --ix-magenta:#d0009a;
        --ix-gold:#ffd45a;
        --ix-text:#fff;
    }

    html, body.mobile {
        background: var(--ix-bg) !important;
        color: var(--ix-text) !important;
    }

    body.mobile {
        overflow-x:hidden !important;
    }

    /* ---------- LOGIN / DAFTAR ---------- */
    body.mobile .btns-log {
        display:flex !important;
        width:100% !important;
        background:#26083f !important;
        box-shadow:0 4px 12px rgba(0,0,0,.25);
    }

    body.mobile .btns-log > .col-xs-6 {
        flex:1 1 50% !important;
        width:50% !important;
    }

    body.mobile .btn-login-custom,
    body.mobile .btn-daftar-custom {
        height:48px !important;
        min-height:48px !important;
        border:0 !important;
        border-radius:0 !important;
        display:flex !important;
        align-items:center !important;
        justify-content:center !important;
        font-size:14px !important;
        font-weight:900 !important;
        letter-spacing:.5px !important;
        text-decoration:none !important;
        box-shadow:none !important;
    }

    body.mobile .btn-login-custom {
        background:linear-gradient(180deg,#4b4b58,#343441) !important;
        color:#fff !important;
    }

    body.mobile .btn-daftar-custom {
        background:linear-gradient(180deg,#ed159f,#b60078) !important;
        color:#fff !important;
    }

    body.mobile .btn-login-custom:active,
    body.mobile .btn-daftar-custom:active {
        transform:scale(.99);
    }

    /* ---------- CATEGORY / SHORTCUT ---------- */
    body.mobile .scroll-wrapper {
        width:100% !important;
        margin:0 !important;
        padding:0 !important;
        background:linear-gradient(180deg,#5e008f 0%,#3b0066 100%) !important;
        border-top:1px solid rgba(255,255,255,.08);
        border-bottom:1px solid rgba(255,255,255,.10);
    }

    body.mobile .scroll-wrapper .scroller {
        width:100% !important;
        overflow-x:auto !important;
        overflow-y:hidden !important;
        -webkit-overflow-scrolling:touch;
        scrollbar-width:none !important;
    }

    body.mobile .scroll-wrapper .scroller::-webkit-scrollbar {
        display:none !important;
    }

    body.mobile .scroll-wrapper .slider-content {
        display:flex !important;
        flex-wrap:nowrap !important;
        width:max-content !important;
        min-width:100% !important;
        margin:0 !important;
        padding:7px 5px 8px !important;
        align-items:stretch !important;
    }

    body.mobile .scroll-wrapper .slider-content > .col {
        float:none !important;
        flex:0 0 76px !important;
        width:76px !important;
        max-width:76px !important;
        padding:0 3px !important;
        position:relative !important;
    }

    body.mobile .scroll-wrapper .btn-box {
        position:relative !important;
        display:flex !important;
        flex-direction:column !important;
        align-items:center !important;
        justify-content:flex-end !important;
        min-height:73px !important;
        padding:7px 2px 4px !important;
        border-radius:10px !important;
        background:transparent !important;
        color:#f8e9ff !important;
        text-decoration:none !important;
        font-size:10px !important;
        font-weight:700 !important;
        text-transform:uppercase !important;
        white-space:nowrap !important;
    }

    body.mobile .scroll-wrapper .btn-box > i {
        display:flex !important;
        align-items:center !important;
        justify-content:center !important;
        width:39px !important;
        height:39px !important;
        margin:0 auto 5px !important;
        font-size:29px !important;
        color:var(--ix-gold) !important;
        filter:drop-shadow(0 2px 3px rgba(0,0,0,.45));
    }

    body.mobile .scroll-wrapper .btn-box > div {
        color:#f7e8ff !important;
        line-height:14px !important;
        text-shadow:0 1px 2px rgba(0,0,0,.6);
    }

    body.mobile .scroll-wrapper .btn-box .hot,
    body.mobile .scroll-wrapper .hot {
        position:absolute !important;
        top:-2px !important;
        right:-1px !important;
        z-index:3 !important;
        padding:2px 5px !important;
        border-radius:5px 5px 5px 0 !important;
        background:#ff18a8 !important;
        color:#fff !important;
        font-size:9px !important;
        font-weight:900 !important;
        line-height:13px !important;
        box-shadow:0 2px 6px rgba(0,0,0,.35);
    }

    /* ---------- JACKPOT ---------- */
    body.mobile .jackpot {
        position:relative !important;
        width:100% !important;
        margin:8px 0 11px !important;
        padding:0 5px !important;
        background:transparent !important;
        overflow:hidden !important;
    }

    body.mobile .jackpot-bg {
        width:100% !important;
        height:auto !important;
        display:block !important;
    }

    body.mobile .jackpot-text {
        top:50% !important;
        width:68% !important;
        height:34px !important;
    }

    body.mobile #jackpot_amount {
        font-size:clamp(15px,4.7vw,21px) !important;
        font-weight:950 !important;
        color:#ffd33d !important;
        white-space:nowrap !important;
        text-shadow:0 2px 0 #321000,0 0 7px rgba(255,196,40,.5) !important;
    }

    /* ---------- HOT PROVIDER ---------- */
    body.mobile .g-slider-wrapper.recommend {
        width:100% !important;
        margin:0 !important;
        padding:0 0 8px !important;
        background:var(--ix-bg) !important;
    }

    body.mobile .g-slider-wrapper.recommend .title-wrapper {
        margin:3px 0 8px !important;
        text-align:center !important;
    }

    body.mobile .g-slider-wrapper.recommend .hot-games-heading {
        display:inline-block !important;
        color:var(--ix-gold) !important;
        font-size:15px !important;
        font-weight:900 !important;
        letter-spacing:1px !important;
        text-transform:uppercase !important;
        text-shadow:0 2px 4px #000 !important;
    }

    body.mobile .g-slider-wrapper.recommend .content-wrapper.hot-games {
        width:100% !important;
        min-height:92px !important;
        padding:0 3px !important;
        background:transparent !important;
        overflow:hidden !important;
    }

    body.mobile .g-slider-wrapper.recommend .content-wrapper.hot-games > ul {
        display:flex !important;
        align-items:center !important;
        gap:8px !important;
        min-height:82px !important;
        left:0 !important;
        top:0 !important;
        padding:3px 5px !important;
        margin:0 !important;
        list-style:none !important;
    }

    body.mobile .g-slider-wrapper.recommend .content-wrapper.hot-games > ul > li {
        flex:0 0 62px !important;
        width:62px !important;
        margin:0 !important;
        padding:0 !important;
    }

    body.mobile .g-slider-wrapper.recommend .game-box.round {
        width:62px !important;
        height:62px !important;
        padding:2px !important;
        border-radius:50% !important;
        background:radial-gradient(circle,#3d0d60,#170528) !important;
        border:2px solid rgba(255,206,65,.65) !important;
        box-shadow:0 3px 10px rgba(0,0,0,.45) !important;
        overflow:hidden !important;
    }

    body.mobile .g-slider-wrapper.recommend .game-box.round img {
        width:100% !important;
        height:100% !important;
        border-radius:50% !important;
        object-fit:cover !important;
    }

    /* ---------- SECTION / HOT GAMES ---------- */
    body.mobile .app-wrapper.container {
        width:100% !important;
        max-width:none !important;
        padding-left:7px !important;
        padding-right:7px !important;
    }

    body.mobile .app-wrapper .g-slider-wrapper:not(.recommend) {
        margin-top:8px !important;
        border-radius:12px 12px 0 0 !important;
        background:linear-gradient(180deg,#8c00ba,#47006f) !important;
        overflow:hidden !important;
    }

    body.mobile .app-wrapper .g-slider-wrapper:not(.recommend) .title-wrapper {
        padding:9px 0 5px !important;
        margin:0 !important;
        background:transparent !important;
    }

    body.mobile .app-wrapper .g-slider-wrapper:not(.recommend) .hot-games-heading {
        color:#ffe15c !important;
        font-size:15px !important;
        font-weight:900 !important;
        letter-spacing:1px !important;
        text-transform:uppercase !important;
        text-shadow:0 2px 4px #260035 !important;
    }

    body.mobile .app-wrapper .g-slider-wrapper:not(.recommend) .content-wrapper {
        background:transparent !important;
    }

    body.mobile .app-wrapper .g-slider-wrapper:not(.recommend) .game-box {
        border-radius:9px !important;
        overflow:hidden !important;
        background:#240936 !important;
        box-shadow:0 2px 7px rgba(0,0,0,.35) !important;
    }

    /* ---------- GENERAL MOBILE PANELS ---------- */
    body.mobile .content-box,
    body.mobile .u-section-box--bg {
        background:#170524 !important;
        border-color:rgba(255,255,255,.07) !important;
    }

    /* ---------- BOTTOM NAV ---------- */
    body.mobile .menu-bottom {
        z-index:99999 !important;
    }

    body.mobile .menu-bottom .navbar,
    body.mobile .menu-bottom .navbar-inverse,
    body.mobile .menu-bottom .footer-content {
        background:linear-gradient(90deg,#25003f 0%,#65009a 50%,#b8008b 100%) !important;
        border:0 !important;
        box-shadow:0 -4px 16px rgba(0,0,0,.45) !important;
    }

    body.mobile .menu-bottom a,
    body.mobile .menu-bottom .footericon-single {
        color:#fff !important;
        text-decoration:none !important;
    }

    body.mobile .menu-bottom .active,
    body.mobile .menu-bottom .active a {
        color:#ffd45a !important;
    }
}

/* desktop: do not force the mobile redesign */
</style>


<style id="index-purple-fix-v2">
@media (max-width: 767px) {

    /* ===== RAPIN & KECILKAN ===== */
    body.mobile .app-wrapper.container{
        padding-left:4px !important;
        padding-right:4px !important;
    }

    /* ===== CATEGORY: PURPLE, BUKAN ORANGE/KUNING ===== */
    body.mobile .scroll-wrapper,
    body.mobile .scroll-wrapper .scroller,
    body.mobile .scroll-wrapper .slider-content,
    body.mobile .scroll-wrapper .slider-content .col{
        background:#3b0063 !important;
        background-image:none !important;
    }

    body.mobile .scroll-wrapper{
        height:72px !important;
        min-height:72px !important;
        overflow:hidden !important;
        border-top:1px solid rgba(255,255,255,.08) !important;
        border-bottom:1px solid rgba(255,255,255,.10) !important;
    }

    body.mobile .scroll-wrapper .scroller{
        height:72px !important;
        overflow-x:auto !important;
        overflow-y:hidden !important;
    }

    body.mobile .scroll-wrapper .slider-content{
        min-height:72px !important;
        height:72px !important;
        padding:3px 3px 4px !important;
        gap:0 !important;
    }

    body.mobile .scroll-wrapper .slider-content > .col{
        flex:0 0 67px !important;
        width:67px !important;
        max-width:67px !important;
        height:68px !important;
        padding:0 2px !important;
    }

    body.mobile .scroll-wrapper .btn-box{
        min-height:66px !important;
        height:66px !important;
        padding:4px 1px 2px !important;
        border-radius:7px !important;
        font-size:9px !important;
        background:transparent !important;
        color:#f5e8ff !important;
    }

    body.mobile .scroll-wrapper .btn-box > i{
        width:31px !important;
        height:31px !important;
        margin:0 auto 3px !important;
        font-size:23px !important;
        color:#e9c85b !important;
        filter:drop-shadow(0 1px 2px rgba(0,0,0,.5)) !important;
    }

    body.mobile .scroll-wrapper .btn-box > div{
        font-size:9px !important;
        line-height:11px !important;
        color:#f8edff !important;
    }

    body.mobile .scroll-wrapper .btn-box .hot,
    body.mobile .scroll-wrapper .hot{
        top:0 !important;
        right:0 !important;
        padding:1px 4px !important;
        font-size:8px !important;
        line-height:11px !important;
        background:#e9009a !important;
        color:#fff !important;
    }

    /* ===== LOGIN / DAFTAR LEBIH TIPIS ===== */
    body.mobile .btns-log,
    body.mobile .btns-log > .col-xs-6{
        height:42px !important;
    }

    body.mobile .btn-login-custom,
    body.mobile .btn-daftar-custom{
        height:42px !important;
        min-height:42px !important;
        font-size:11px !important;
        letter-spacing:.35px !important;
    }

    /* ===== JACKPOT LEBIH RINGKAS ===== */
    body.mobile .jackpot{
        margin:5px 0 7px !important;
        padding:0 3px !important;
    }

    body.mobile .jackpot-text{
        height:27px !important;
        width:67% !important;
    }

    body.mobile #jackpot_amount{
        font-size:16px !important;
    }

    /* ===== HOT PROVIDER LEBIH KECIL & RAPI ===== */
    body.mobile .g-slider-wrapper.recommend{
        padding-bottom:4px !important;
    }

    body.mobile .g-slider-wrapper.recommend .title-wrapper{
        margin:1px 0 4px !important;
    }

    body.mobile .g-slider-wrapper.recommend .hot-games-heading{
        font-size:13px !important;
        letter-spacing:.8px !important;
    }

    body.mobile .g-slider-wrapper.recommend .content-wrapper.hot-games{
        min-height:68px !important;
        height:68px !important;
    }

    body.mobile .g-slider-wrapper.recommend .content-wrapper.hot-games > ul{
        min-height:63px !important;
        height:63px !important;
        gap:6px !important;
        padding:2px 4px !important;
    }

    body.mobile .g-slider-wrapper.recommend .content-wrapper.hot-games > ul > li{
        flex:0 0 52px !important;
        width:52px !important;
    }

    body.mobile .g-slider-wrapper.recommend .game-box.round{
        width:52px !important;
        height:52px !important;
        border-width:1.5px !important;
    }

    /* ===== HOT GAMES: JANGAN GEDE ===== */
    body.mobile .app-wrapper .g-slider-wrapper:not(.recommend){
        margin-top:4px !important;
        border-radius:9px 9px 0 0 !important;
    }

    body.mobile .app-wrapper .g-slider-wrapper:not(.recommend) .title-wrapper{
        padding:6px 0 3px !important;
    }

    body.mobile .app-wrapper .g-slider-wrapper:not(.recommend) .hot-games-heading{
        font-size:13px !important;
    }

    /* ===== ANNOUNCEMENT ===== */
    body.mobile .ann-wrapper{
        background:#26053f !important;
        color:#fff !important;
        padding-top:3px !important;
        padding-bottom:3px !important;
        min-height:29px !important;
    }

    body.mobile .ann-wrapper i{
        color:#f4d15b !important;
    }

    /* ===== HAPUS KESAN ORANGE/GOLD DI BACKGROUND ===== */
    body.mobile .scroll-wrapper *,
    body.mobile .btns-log *{
        box-shadow:none;
    }
}
</style>


<style id="index-purple-icons-v4">
@media (max-width:767px) {

/* ===== LOGIN / DAFTAR ===== */
body.mobile .btn-login-custom,
body.mobile .btn-daftar-custom {
    display:flex !important;
    align-items:center !important;
    justify-content:center !important;
    gap:7px !important;
    height:43px !important;
    min-height:43px !important;
    border-radius:9px !important;
    font-size:11px !important;
    font-weight:900 !important;
    letter-spacing:.7px !important;
    border:1px solid rgba(255,255,255,.18) !important;
    box-shadow:0 3px 10px rgba(0,0,0,.38), inset 0 1px rgba(255,255,255,.16) !important;
}
body.mobile .btn-login-custom {
    background:linear-gradient(145deg,#342044,#12091e) !important;
    color:#fff !important;
}
body.mobile .btn-daftar-custom {
    background:linear-gradient(145deg,#ef18ae,#87006f) !important;
    color:#fff !important;
    border-color:#ff43c5 !important;
}
body.mobile .btn-login-custom::before,
body.mobile .btn-daftar-custom::before {
    content:"" !important;
    display:block !important;
    width:20px !important;
    height:20px !important;
    flex:0 0 20px !important;
    background-repeat:no-repeat !important;
    background-position:center !important;
    background-size:contain !important;
}
body.mobile .btn-login-custom::before { background-image:url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMiAzMiI+PHBhdGggZD0iTTQgNWgxNGEzIDMgMCAwIDEgMyAzdjE2YTMgMyAwIDAgMS0zIDNINCIgZmlsbD0ibm9uZSIgc3Ryb2tlPSIjZmZmIiBzdHJva2Utd2lkdGg9IjIuNCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PHBhdGggZD0iTTE3IDE2SDVtMCAwbDUtNW0tNSA1bDUgNSIgZmlsbD0ibm9uZSIgc3Ryb2tlPSIjZmZkNzVhIiBzdHJva2Utd2lkdGg9IjIuNCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+PC9zdmc+") !important; }
body.mobile .btn-daftar-custom::before { background-image:url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMiAzMiI+PGNpcmNsZSBjeD0iMTMiIGN5PSIxMCIgcj0iNSIgZmlsbD0ibm9uZSIgc3Ryb2tlPSIjZmZmIiBzdHJva2Utd2lkdGg9IjIuMyIvPjxwYXRoIGQ9Ik00IDI3YzAtNiAzLjUtOSA5LTlzOSAzIDkgOSIgZmlsbD0ibm9uZSIgc3Ryb2tlPSIjZmZmIiBzdHJva2Utd2lkdGg9IjIuMyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PHBhdGggZD0iTTI0IDEwdjltLTQuNS00LjVoOSIgc3Ryb2tlPSIjZmZkNzVhIiBzdHJva2Utd2lkdGg9IjIuMyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PC9zdmc+") !important; }

/* ===== CATEGORY: CUSTOM ICONS ===== */
body.mobile .scroll-wrapper .btn-box > i {
    display:block !important;
    width:34px !important;
    height:34px !important;
    margin:0 auto 4px !important;
    padding:0 !important;
    font-size:0 !important;
    line-height:0 !important;
    background-repeat:no-repeat !important;
    background-position:center !important;
    background-size:contain !important;
    filter:drop-shadow(0 2px 3px rgba(0,0,0,.45)) !important;
    border:0 !important;
    border-radius:0 !important;
    box-shadow:none !important;
}
body.mobile .scroll-wrapper .btn-box i.icon-slot { background-image:url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI+PHJlY3QgeD0iMTAiIHk9IjgiIHdpZHRoPSI0NCIgaGVpZ2h0PSI0OCIgcng9IjgiIGZpbGw9Im5vbmUiIHN0cm9rZT0iI2ZmZDc1YSIgc3Ryb2tlLXdpZHRoPSI0Ii8+PHJlY3QgeD0iMTYiIHk9IjE2IiB3aWR0aD0iMzIiIGhlaWdodD0iMjIiIHJ4PSI0IiBmaWxsPSIjNWIxMjZmIiBzdHJva2U9IiNmZmQ3NWEiIHN0cm9rZS13aWR0aD0iMyIvPjxwYXRoIGQ9Ik0yMiAyN2g3bTYgMGg3TTIzIDQ1aDE4IiBzdHJva2U9IiNmZmQ3NWEiIHN0cm9rZS13aWR0aD0iNCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PGNpcmNsZSBjeD0iMjciIGN5PSIyNyIgcj0iMyIgZmlsbD0iI2ZmMzFiZCIvPjxjaXJjbGUgY3g9IjM3IiBjeT0iMjciIHI9IjMiIGZpbGw9IiNmZmYiLz48Y2lyY2xlIGN4PSI0NCIgY3k9IjI3IiByPSIzIiBmaWxsPSIjZmYzMWJkIi8+PC9zdmc+") !important; }
body.mobile .scroll-wrapper .btn-box i.icon-soccer { background-image:url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI+PGNpcmNsZSBjeD0iMzIiIGN5PSIzMiIgcj0iMjQiIGZpbGw9IiMzNTEwNTIiIHN0cm9rZT0iI2ZmZDc1YSIgc3Ryb2tlLXdpZHRoPSIzIi8+PHBhdGggZD0iTTMyIDE4bDcgNS0zIDhoLThsLTMtOHpNMTggMjlsOSAyIDMgOC03IDYtOC02em0yOCAwbC05IDItMyA4IDcgNiA4LTZ6TTI3IDM5aDEwbDQgOC05IDUtOS01eiIgZmlsbD0ibm9uZSIgc3Ryb2tlPSIjZmZmIiBzdHJva2Utd2lkdGg9IjMiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz48L3N2Zz4=") !important; }
body.mobile .scroll-wrapper .btn-box i.icon-casino { background-image:url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI+PHJlY3QgeD0iMTIiIHk9IjE3IiB3aWR0aD0iMjkiIGhlaWdodD0iMzgiIHJ4PSI1IiB0cmFuc2Zvcm09InJvdGF0ZSgtMTIgMTIgMTcpIiBmaWxsPSIjMzUxMDUyIiBzdHJva2U9IiNmZmQ3NWEiIHN0cm9rZS13aWR0aD0iMyIvPjxyZWN0IHg9IjIzIiB5PSI5IiB3aWR0aD0iMjkiIGhlaWdodD0iMzgiIHJ4PSI1IiB0cmFuc2Zvcm09InJvdGF0ZSgxMCAyMyA5KSIgZmlsbD0iIzVjMGI3MyIgc3Ryb2tlPSIjZmZmIiBzdHJva2Utd2lkdGg9IjMiLz48dGV4dCB4PSIzMiIgeT0iMzUiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtc2l6ZT0iMTciIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC13ZWlnaHQ9IjcwMCIgZmlsbD0iI2ZmZDc1YSI+QTwvdGV4dD48cGF0aCBkPSJNMzkgMjZjNC02IDkgMCA5IDMtMiA0LTkgOC05IDhzLTctNC05LThjMC0zIDUtOSA5LTN6IiBmaWxsPSIjZmYyOWJkIi8+PC9zdmc+") !important; }
body.mobile .scroll-wrapper .btn-box i.icon-p2p { background-image:url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI+PHBhdGggZD0iTTEwIDIyaDM0IiBzdHJva2U9IiNmZmQ3NWEiIHN0cm9rZS13aWR0aD0iNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PHBhdGggZD0iTTM2IDEzbDEyIDktMTIgOSIgZmlsbD0ibm9uZSIgc3Ryb2tlPSIjZmYzMWJkIiBzdHJva2Utd2lkdGg9IjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPjxwYXRoIGQ9Ik01NCA0MkgyMCIgc3Ryb2tlPSIjZmZmIiBzdHJva2Utd2lkdGg9IjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPjxwYXRoIGQ9Ik0yOCAzM0wxNiA0MmwxMiA5IiBmaWxsPSJub25lIiBzdHJva2U9IiNmZmQ3NWEiIHN0cm9rZS13aWR0aD0iNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+PC9zdmc+") !important; }
body.mobile .scroll-wrapper .btn-box i.icon-fish { background-image:url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI+PHBhdGggZD0iTTQ5IDMyYy03LTEzLTIyLTE3LTM1LTEwbC04LTcgMiAxNC0yIDE0IDgtN2MxMyA3IDI4IDMgMzUtNHoiIGZpbGw9IiM1YjEyNmYiIHN0cm9rZT0iI2ZmZDc1YSIgc3Ryb2tlLXdpZHRoPSIzIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+PGNpcmNsZSBjeD0iNDEiIGN5PSIyOCIgcj0iMyIgZmlsbD0iI2ZmZiIvPjxwYXRoIGQ9Ik0yNyAyNmM0IDQgNCA4IDAgMTIiIGZpbGw9Im5vbmUiIHN0cm9rZT0iI2ZmMzFiZCIgc3Ryb2tlLXdpZHRoPSIzIi8+PC9zdmc+") !important; }

/* If the fish class has a different suffix, target the 5th item directly. */
body.mobile .scroll-wrapper .slider-content > .col:nth-child(5) .btn-box > i {
    background-image:url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI+PHBhdGggZD0iTTQ5IDMyYy03LTEzLTIyLTE3LTM1LTEwbC04LTcgMiAxNC0yIDE0IDgtN2MxMyA3IDI4IDMgMzUtNHoiIGZpbGw9IiM1YjEyNmYiIHN0cm9rZT0iI2ZmZDc1YSIgc3Ryb2tlLXdpZHRoPSIzIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+PGNpcmNsZSBjeD0iNDEiIGN5PSIyOCIgcj0iMyIgZmlsbD0iI2ZmZiIvPjxwYXRoIGQ9Ik0yNyAyNmM0IDQgNCA4IDAgMTIiIGZpbGw9Im5vbmUiIHN0cm9rZT0iI2ZmMzFiZCIgc3Ryb2tlLXdpZHRoPSIzIi8+PC9zdmc+") !important;
}

body.mobile .scroll-wrapper .btn-box > div {
    color:#fff !important;
    font-size:8.5px !important;
    font-weight:800 !important;
    letter-spacing:.15px !important;
}

/* Remove HOT / NEW labels only from the shortcut menu. */
body.mobile .scroll-wrapper span.hot,
body.mobile .scroll-wrapper span.new,
body.mobile .scroll-wrapper .hot,
body.mobile .scroll-wrapper .new {
    display:none !important;
}

/* ===== PROVIDER: NEON CIRCLES ===== */
body.mobile .g-slider-wrapper.recommend .hot-games-heading {
    color:#fff !important;
    font-size:13px !important;
    letter-spacing:1.1px !important;
}
body.mobile .g-slider-wrapper.recommend .game-box.round {
    width:52px !important;
    height:52px !important;
    border-radius:50% !important;
    border:1px solid #e12bff !important;
    background:radial-gradient(circle,#2e183d 0,#08030d 72%) !important;
    box-shadow:0 0 0 1px rgba(255,215,90,.22),0 3px 9px rgba(0,0,0,.5) !important;
}
body.mobile .g-slider-wrapper.recommend .game-box.round img {
    width:100% !important;
    height:100% !important;
    border-radius:50% !important;
    object-fit:contain !important;
}

/* ===== HOT GAMES CARDS ===== */
body.mobile .app-wrapper .g-slider-wrapper:not(.recommend) .game-box {
    border:1px solid rgba(237,42,255,.7) !important;
    border-radius:9px !important;
    overflow:hidden !important;
    box-shadow:0 3px 10px rgba(0,0,0,.48) !important;
}

/* keep overall compact */
body.mobile .scroll-wrapper { height:72px !important; min-height:72px !important; }
body.mobile .scroll-wrapper .slider-content > .col { flex:0 0 67px !important; width:67px !important; max-width:67px !important; }
body.mobile .scroll-wrapper .btn-box { min-height:66px !important; height:66px !important; padding:3px 1px 2px !important; }
}
</style>


<style id="index-purple-icons-v5">
@media (max-width:767px) {
    /* P2P */
    body.mobile .scroll-wrapper .slider-content > .col:nth-child(4) .btn-box > i {
        background-image:url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI+PHJlY3QgeD0iOSIgeT0iMTUiIHdpZHRoPSI0NiIgaGVpZ2h0PSIzNCIgcng9IjgiIGZpbGw9IiMzNTEwNTIiIHN0cm9rZT0iI2ZmZDc1YSIgc3Ryb2tlLXdpZHRoPSIzIi8+PHBhdGggZD0iTTE4IDI3aDI4TTE4IDM3aDE2IiBzdHJva2U9IiNmZmYiIHN0cm9rZS13aWR0aD0iMyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PGNpcmNsZSBjeD0iNDQiIGN5PSIzNyIgcj0iNiIgZmlsbD0iI2U1MWZiNSIgc3Ryb2tlPSIjZmZkNzVhIiBzdHJva2Utd2lkdGg9IjIiLz48cGF0aCBkPSJNNDIgMzdoNE00NCAzNXY0IiBzdHJva2U9IiNmZmYiIHN0cm9rZS13aWR0aD0iMiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PC9zdmc+") !important;
        background-repeat:no-repeat !important;
        background-position:center !important;
        background-size:contain !important;
        font-size:0 !important;
    }

    /* LOTRE */
    body.mobile .scroll-wrapper .slider-content > .col:nth-child(6) .btn-box > i {
        background-image:url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI+PHBhdGggZD0iTTEyIDI0aDQwdjI3SDEyeiIgZmlsbD0iIzM1MTA1MiIgc3Ryb2tlPSIjZmZkNzVhIiBzdHJva2Utd2lkdGg9IjMiLz48cGF0aCBkPSJNMTIgMjRsNS0xMGgzMGw1IDEwIiBmaWxsPSIjNmMwYzc4IiBzdHJva2U9IiNmZmQ3NWEiIHN0cm9rZS13aWR0aD0iMyIvPjxjaXJjbGUgY3g9IjI0IiBjeT0iMzciIHI9IjYiIGZpbGw9IiNmZmYiLz48Y2lyY2xlIGN4PSI0MCIgY3k9IjM3IiByPSI2IiBmaWxsPSIjZmYzMWJkIi8+PHBhdGggZD0iTTI1IDQ4aDE0IiBzdHJva2U9IiNmZmQ3NWEiIHN0cm9rZS13aWR0aD0iMyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PC9zdmc+") !important;
        background-repeat:no-repeat !important;
        background-position:center !important;
        background-size:contain !important;
        font-size:0 !important;
    }

    /* E-GAMES */
    body.mobile .scroll-wrapper .slider-content > .col:nth-child(7) .btn-box > i {
        background-image:url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI+PHBhdGggZD0iTTE2IDI0YzUtNyAyNy03IDMyIDBsNyAyMGMyIDctNyAxMC0xMSA0bC01LTdIMjVsLTUgN2MtNCA2LTEzIDMtMTEtNHoiIGZpbGw9IiMzNTEwNTIiIHN0cm9rZT0iI2ZmZDc1YSIgc3Ryb2tlLXdpZHRoPSIzIi8+PHBhdGggZD0iTTI0IDI5djEwTTE5IDM0aDEwIiBzdHJva2U9IiNmZmYiIHN0cm9rZS13aWR0aD0iMyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PGNpcmNsZSBjeD0iNDMiIGN5PSIzMSIgcj0iMi41IiBmaWxsPSIjZmYzMWJkIi8+PGNpcmNsZSBjeD0iNDkiIGN5PSIzNyIgcj0iMi41IiBmaWxsPSIjZmZkNzVhIi8+PC9zdmc+") !important;
        background-repeat:no-repeat !important;
        background-position:center !important;
        background-size:contain !important;
        font-size:0 !important;
    }

    /* SABUNG AYAM */
    body.mobile .scroll-wrapper .slider-content > .col:nth-child(8) .btn-box > i {
        background-image:url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2NCA2NCI+PHBhdGggZD0iTTE4IDQ4YzQtMTAgNS0yMiAxMy0yNyA2LTQgMTItMyAxNiAyLTUgMS04IDQtOSA4IDgtMiAxMiAxIDEzIDctNiAwLTExIDItMTQgN3oiIGZpbGw9IiM1YjEyNmYiIHN0cm9rZT0iI2ZmZDc1YSIgc3Ryb2tlLXdpZHRoPSIzIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+PHBhdGggZD0iTTMxIDIxbC0zLThtOCA4bDUtN00yNSAxOWwtNy0zIiBzdHJva2U9IiNmZjMxYmQiIHN0cm9rZS13aWR0aD0iMyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PGNpcmNsZSBjeD0iNDIiIGN5PSIyNyIgcj0iMi41IiBmaWxsPSIjZmZmIi8+PHBhdGggZD0iTTEzIDUxaDM5IiBzdHJva2U9IiNmZmQ3NWEiIHN0cm9rZS13aWR0aD0iMyIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PC9zdmc+") !important;
        background-repeat:no-repeat !important;
        background-position:center !important;
        background-size:contain !important;
        font-size:0 !important;
    }

    /* semua shortcut tetap konsisten */
    body.mobile .scroll-wrapper .slider-content > .col:nth-child(n+4) .btn-box > i {
        width:34px !important;
        height:34px !important;
        margin:0 auto 4px !important;
        border:0 !important;
        box-shadow:none !important;
        filter:drop-shadow(0 2px 3px rgba(0,0,0,.45)) !important;
    }

    /* Hilangkan badge HOT/NEW tanpa menghilangkan menu */
    body.mobile .scroll-wrapper .btn-box > span.hot,
    body.mobile .scroll-wrapper .btn-box > span.new {
        display:none !important;
    }
}
</style>

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
      <!-- color bg -->
      <div class="content my01" style="background:#000">

        <div class="apk-down-bar" id="apk-down-bar" style="display:none;">
          <table>
            <tr>
              <td rowspan="2" style="width:18%; " class="clearfix">
                <button class="btn btn-link" id="btn-close--apk" style="color:#fedc3d;">X</button>
                <span class="fs-lg android-wrap"><i class="icon-android"></i></span>
              </td>
              <td style="width:100%; ">
                <div style="color:#fedc3d;"><?php echo $instansi ?> Lite Download</div>

              </td>
              <td rowspan="2" style="color:#000000;">
                <a class="btn btn-link">
                </a>
              </td>
            </tr>
            <tr>
              <td>
                <div><small style="color:#fedc3d;">Fast, Light & Secure</small></div>
              </td>
            </tr>
          </table>
        </div>
        <?php
        if (isset($_SESSION['user'])) {
          $user = mysqli_query($conn, "SELECT * FROM `tb_user` WHERE user = '" . $_SESSION['user'] . "'") or die(mysqli_error());
          $u = mysqli_fetch_array($user);
          $users = $u['user'];
          $userid = $u['user'];
          $id_user = $u['cuid'];
          $userID = $u['cuid'];
          $token_id = isset($u['token_id']) ? $u['token_id'] : false;
          $level = isset($u['level']) ? $u['level'] : false;
          $sql_banks = mysqli_query($conn,"SELECT * FROM `tb_bank` WHERE userID = '$userID'") or die(mysqli_error());
          $sbs = mysqli_fetch_array($sql_banks);
          $sql_balance = mysqli_query($conn, "SELECT * FROM `tb_balance` WHERE userID = '$userID'") or die(mysqli_error());
          $sb = mysqli_fetch_array($sql_balance);
          ?>
          <div class="container wallet-bal">
            <div class="row text-left">
              <div class="col-xs-6">
                <button class="btn btn-clear btn-refresh-wallet">
                  <i class="icon-currency-dollar fs-lg i-dollar"></i>
                  &nbsp;&nbsp;
                  <span class="bal-txt"><?php echo number_format($sb['active']); ?></span>
                </button>
              </div>
              <div class="col-xs-6 noSidePadding i-refresh">
                <a href="" class="btn btn-clear pull-right"><i class="icon-refresh-2"></i></a>
              </div>
            </div>
            <div class="row game-bals" id="other-game-bals" style="display:none;">
              <div class="">
                <table class="table">
                </table>
              </div>
            </div>
          </div>
        <?php } else { ?>
        <?php } ?>


        <style>
          .slider-size {
            max-height: 500px; 
            min-height: 130px;
          }
        </style>

        <section class="carousel-fixed-height">
          <div id="carousel-fixed-height" class="carousel slide  " data-ride="carousel">
            <ol class="carousel-indicators">
              <?php
              $sql_21 = mysqli_query($conn, "SELECT * FROM `tb_slide` ORDER BY cuid DESC") or die(mysqli_error());
              $nos = 0;
              while ($s21 = mysqli_fetch_array($sql_21)) {
                $nos++;
                $a = $nos - 1;
                ?>
                <li data-target="#carousel-fixed-height" data-slide-to="<?php echo $a; ?>" class="<?php if ($nos == 1) {
                  echo ' class="active"';
                } ?>"></li>
              <?php } ?>
            </ol>
            <div class="carousel-inner" role="listbox">
              <?php
              $sql_2 = mysqli_query($conn, "SELECT * FROM `tb_slide` ORDER BY cuid DESC") or die(mysqli_error());
              $no = 0;
              while ($s2 = mysqli_fetch_array($sql_2)) {
                $no++;
                ?>
                <div class="item <?php if ($no == 1) {
                  echo ' active';
                } ?>">
                <a href="#">
                  <img class="slider-size" src="<?php echo $urlweb; ?>/upload/<?php echo $s2['image']; ?>" data-src="<?php echo $urlweb; ?>/upload/<?php echo $s2['image']; ?>" style="display: block; width: 100%; max-height: 500px;  min-height: 130px;" alt="">
                </a>
              </div>
            <?php } ?>
          </div>
          <a class="left carousel-control" href="#carousel-fixed-height" role="button" data-slide="prev">
            <!-- <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> -->
            <span class="icon-wrap">
              <i class="icon-chevron-left icon-prev"></i>
            </span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#carousel-fixed-height" role="button" data-slide="next">
            <!-- <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> -->
            <span class="icon-wrap"><i class="icon-arrow_forward_ios icon-next"></i></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </section>




      <div class="ann-wrapper" style="padding-left:15px;padding-right:15px;">
       <div class="clearfix pt-2">
        <div class="pull-left pointer">
          <div>
            <i class="icon-megaphone"></i>
          </div>
        </div>
        <div class="ann-content">
          <marquee  scrollamount="5">
            <?php echo $pengumuman ?>
          </marquee>     
        </div>
      </div>

    </div>
    <?php if (isset($_SESSION['user'])) { ?>
    <?php } else { ?>
      <div class="btns-log row no-gutters" style="margin:0; padding:0;">

    <div class="col-xs-6" style="padding:0;">
        <button type="button"
            class="btn btn-login-custom btn-block"
            id="btnLogin--home">LOGIN</button>
    </div>

    <div class="col-xs-6" style="padding:0;">
        <a href="/register"
           class="btn btn-daftar-custom btn-block">DAFTAR</a>
    </div>

</div>

<style>
/* STYLE UMUM */
.btn-login-custom,
.btn-daftar-custom {
    border-radius: 0 !important;
    width: 100%;
    height: 35px;              /* tinggi bar */
    display: flex;             /* bikin center */
    align-items: center;       /* VERTIKAL CENTER */
    justify-content: center;   /* HORIZONTAL CENTER */
    font-size: 12px;
    font-weight: 600;
    padding: 0;
    margin: 0;
    border: none;
    text-decoration: none;
}

/* WARNA LOGIN = GOLD */
.btn-login-custom {
    background: #bfbfbf;
    color: #000 !important;
}

/* WARNA DAFTAR = MERAH */
.btn-daftar-custom {
    background: #d92733;
    color: #ffffff !important;
    text-decoration: none;
}
</style>
    <?php } ?>

    <!-- Login Buttons -->

    <!-- END Login Buttons-->

    <!--Shorcut Menu -->

     <div class="scroll-wrapper no-gutters" _home>

      <div style="overflow:hidden; " class="scroller">
        <!-- color bg -->
        <div class="  no-gutters text-center slider-content" #scrollContent>
          <!--//hardcoded links.......-->
          <div class="col">
            <a class="btn-box" href="/slots/">
              <i class="icon-slot"></i>
              <div>SLOTS</div>
              <span class='hot'>HOT</span>
            </a>
          </div>
          <div class="col">
            <a class="btn-box" href="/sports/">
              <i class="icon-soccer"></i>
              <div>SPORTS</div>
            </a>
          </div>
          <div class="col">
            <a class="btn-box" href="/casino/">
              <i class="icon-casino"></i>
              <div>CASINO</div>
            </a>
          </div>
          <div class="col">
            <a class="btn-box" href="/poker/">
              <i class="icon-menu-poker-01"></i>
              <div>P2P</div>
            </a>
          </div>
          <div class="col">
            <a class="btn-box" href="/fish/">
              <i class="icon-fish_hunter"></i>
              <div>FISH</div>
            </a>
          </div>
          <div class="col">
            <a class="btn-box" href="/lotto/">
              <i class="icon-lottery"></i>
              <div>LOTRE</div>

              <span class="hot new "  >NEW</span>
            </a>
          </div>
          <div class="col">
            <a class="btn-box" href="<?php echo $urlweb; ?>/e-games">
              <i class="icon-others"></i>
              <div>E-GAMES</div>
            </a>
          </div>
          <div class="col">
            <a class="btn-box" href="<?php echo $urlweb; ?>/cockfight">
              <i class="icon-cockfight"></i>
              <div>SABUNG AYAM</div>
            </a>
          </div>
        </div>
      </div>

    </div>

  <div class="jackpot">
    <img class="img-fluid jackpot-bg"
         src="https://files.sitestatic.net/progressive_img/2024020814254700000071b924dcd5LACABAE__1479x405.gif"
         alt="jackpot" />

    <div class="jackpot-text">
        <span id="jackpot_amount">Loading....</span>
    </div>
</div>

<script>
document.addEventListener("DOMContentLoaded", function () {

    let jackpotValue = 500362955; // nilai awal kaya gambar kamu

    function updateJackpot() {
        let randomIncrement = Math.floor(Math.random() * 50) + 10; 
        jackpotValue += randomIncrement;

        document.getElementById("jackpot_amount").innerText =
            "IDR " + jackpotValue.toLocaleString('id-ID');

        setTimeout(updateJackpot, 350); // smooth mirip provider
    }

    updateJackpot();
});
</script>

<style>
.jackpot {
    position: relative;
    width: 100%;
    height: 70%;
}

.jackpot-bg {
    width: 100%;
    display: block;
}

/* POSISI PAS DI AREA HITAM */
.jackpot-text {
    position: absolute;
    left: 50%;
    top: 49%;                    /* posisi pas provider */
    transform: translate(-50%, -50%);
    width: 72%;                  /* lebar area hitam */
    height: 34px;                /* tinggi area hitam */
    display: flex;
    align-items: center;
    justify-content: center;
    pointer-events: none;
}

/* STYLE GOLD PERSIS PROVIDER PP */
#jackpot_amount {
    font-size: 20px;
    font-weight: 900;
    font-family: 'Arial Black', sans-serif;
    color: #ff9e00; /* gold */

    text-shadow:
        0px 0px 6px #000,
        0px 0px 10px #9e8b68,
        1px 1px 4px rgba(0,0,0,0.9);
}
</style>
<div class="app-wrapper container">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rubik+Mono+One&display=swap" rel="stylesheet">
<!--hot provider-->
      <div class="col-md-7">
        <div class="g-slider-wrapper recommend">
            <div class="title-wrapper title-center">
                <span class="rubik-one hot-games-heading">hot provider</span>
            </div>
            <div class="content-wrapper hot-games round" style="overflow: hidden;position: relative;">
                    
                
            <ul class="games-leave-active games-leave-to run" style="animation-duration:50s;position: absolute;" data-count="16" >
          
                                                <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="SBOBET" src="" alt="SBOBET"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/sbo.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="AG" src="" alt="AG"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/ag.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="ALLBET" src="" alt="ALLBET"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/allbet.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                    <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="EVO" src="" alt="EVO"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/evo.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/habanero" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="HABANERO" src="" alt="HABANERO"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/habanero.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="SABA SPORTS" src="" alt="SABA SPORTS"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/ibc.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/joker-gaming" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="JOKER" src="" alt="JOKER"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/joker.png?v=5" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/pgsoft" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="PGSOFT" src="" alt="PGSOFT"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/pgsolf.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/playtech" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="PLAYTECH" src="" alt="PLAYTECH"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/playtech.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/pragmatic-play" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="PRAGMATIC" src="" alt="PRAGMATIC"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/pragmatic.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/skywind" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="SKYWIND" src="" alt="SKYWIND"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/skywind.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/spadegaming" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="SPADE GAMING" src="" alt="SPADE GAMING"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/spadegaming.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/fish-hunter/fachai" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="FACHAI" src="" alt="FACHAI"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/fachai.png" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                                                <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="SBOBET" src="" alt="SBOBET"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/sbo.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="AG" src="" alt="AG"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/ag.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="ALLBET" src="" alt="ALLBET"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/allbet.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                    <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="EVO" src="" alt="EVO"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/evo.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/habanero" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="HABANERO" src="" alt="HABANERO"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/habanero.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="SABA SPORTS" src="" alt="SABA SPORTS"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/ibc.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/joker-gaming" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="JOKER" src="" alt="JOKER"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/joker.png?v=5" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/pgsoft" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="PGSOFT" src="" alt="PGSOFT"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/pgsolf.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/playtech" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="PLAYTECH" src="" alt="PLAYTECH"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/playtech.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/pragmatic-play" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="PRAGMATIC" src="" alt="PRAGMATIC"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/pragmatic.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/skywind" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="SKYWIND" src="" alt="SKYWIND"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/skywind.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/spadegaming" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="SPADE GAMING" src="" alt="SPADE GAMING"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/spadegaming.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/fish-hunter/fachai" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="FACHAI" src="" alt="FACHAI"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/fachai.png" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                                                <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="SBOBET" src="" alt="SBOBET"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/sbo.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="AG" src="" alt="AG"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/ag.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="ALLBET" src="" alt="ALLBET"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/allbet.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                    <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="EVO" src="" alt="EVO"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/evo.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/habanero" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="HABANERO" src="" alt="HABANERO"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/habanero.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                                <div class="game-box round login-alert">
                            
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="SABA SPORTS" src="" alt="SABA SPORTS"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/ibc.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                    </div>
        
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/joker-gaming" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="JOKER" src="" alt="JOKER"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/joker.png?v=5" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/pgsoft" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="PGSOFT" src="" alt="PGSOFT"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/pgsolf.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/playtech" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="PLAYTECH" src="" alt="PLAYTECH"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/playtech.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/pragmatic-play" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="PRAGMATIC" src="" alt="PRAGMATIC"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/pragmatic.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/skywind" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="SKYWIND" src="" alt="SKYWIND"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/skywind.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/slots/spadegaming" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="SPADE GAMING" src="" alt="SPADE GAMING"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/spadegaming.png?v=4" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        <li>
                                                            <a class="game-box round " href="/fish-hunter/fachai" >

                        
                            <!--[ngTemplateOutlet]="gameItemContent"> -->
                                                        
                                                        <img class="lazy" alt="FACHAI" src="" alt="FACHAI"
                                data-src="https://files.sitestatic.net/assets/imgs/game_providers_round_logo/fachai.png" />
                            <!--TODO alt text-->
                            <div class="loader-b" *ngIf="!showEle"></div>

                                                </a>

                    
        </li>
                        </ul>
                            </div>
        </div>
    </div>
<div class="row" style="padding-top:30px;">
    <div class="col-xs-12 hot-games-bg">
        <div class="g-slider-wrapper hot">
            <div class="title-wrapper title-center">
                <span class="rubik-one hot-games-heading">hot games</span>
                <!-- <img src="https://files.sitestatic.net/assets/imgs/gigagaming/hot-games-title-t1.png" style="width: auto;"> -->
                <!-- <img alt="HOT GAMES" src="https://files.sitestatic.net/assets/imgs/gigagaming/hot-games-title_t1.png?v=5"/> -->
            </div>
            <div class="content-wrapper">
                                <div class="wrapper hot-games">
                                            <div class="img-container games-leave-active games-leave-to run" >
                                                                                                                            <a  href="/slots/jili?hot=Fortune+Gems+500"  style="margin-right: 30px;">
                                                                    <img class="" alt="Fortune Gems 500" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/bee8912db40e22073dafc3231ad731de.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/jili?hot=Storm+of+Seth+2"  style="margin-right: 30px;">
                                                                    <img class="" alt="Storm of Seth 2" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/379692fd1765a40dc4d47dea0877d5f9.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Gates+of+Olympus+Super+Scatter"  style="margin-right: 30px;">
                                                                    <img class="" alt="Gates of Olympus Super Scatter" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/12aba443526306c47646afa82d84ba46.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/playstar?hot=Mahjong+Ways+3%2B_Black+limited"  style="margin-right: 30px;">
                                                                    <img class="" alt="Mahjong Ways 3+_Black limited" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/82c467e24ca5f694faf926befc77c73f.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/playtech?hot=Gold+Trio+10000"  style="margin-right: 30px;">
                                                                    <img class="" alt="Gold Trio 10000" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/7c8419b96b23e37e531e932c463bf877.webp?v=0.1" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/fastspin?hot=Spirit+of+the+Sea"  style="margin-right: 30px;">
                                                                    <img class="" alt="Spirit of the Sea" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/7ca4d556bfba2dd890d8adacc547524a.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/besoft?hot=Domino+Bali+Deluxe"  style="margin-right: 30px;">
                                                                    <img class="" alt="Domino Bali Deluxe" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/aed5246f18e2ca7477a8a76c317212a0.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/besoft?hot=Domino+Caishen"  style="margin-right: 30px;">
                                                                    <img class="" alt="Domino Caishen" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/999215bfec33f337a2622fdf8f451ae2.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Gates+of+Olympus+1000"  style="margin-right: 30px;">
                                                                    <img class="" alt="Gates of Olympus 1000" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/6d39308186b2c0ede30a49d0c486e911.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/dragoonsoft?hot=Bounty+Clash"  style="margin-right: 30px;">
                                                                    <img class="" alt="Bounty Clash" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/fd38e51722df3a6e3bf0c57b8fe8a922.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Mahjong+Wins+3+-+Black+Scatter"  style="margin-right: 30px;">
                                                                    <img class="" alt="Mahjong Wins 3 - Black Scatter" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/b918217637bd8887a37f2f0221bf4609.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/playtech?hot=Wild+Beans"  style="margin-right: 30px;">
                                                                    <img class="" alt="Wild Beans" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/fb6134983ab1437868d837176119ded9.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/fatpanda?hot=Lucky+Tiger+1000"  style="margin-right: 30px;">
                                                                    <img class="" alt="Lucky Tiger 1000" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/a699a8da4a470846b0c1998941844114.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Sweet+Bonanza+Candy+Land"  style="margin-right: 30px;">
                                                                    <img class="" alt="Sweet Bonanza Candy Land" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/dc2e4b4eac519582adae5f8f523cdf95.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Starlight+Princess+1000"  style="margin-right: 30px;">
                                                                    <img class="" alt="Starlight Princess 1000" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/220106934a3dcdf7fc45d13bf8c3cbe5.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Sweet+Bonanza+1000"  style="margin-right: 30px;">
                                                                    <img class="" alt="Sweet Bonanza 1000" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/68585ca56ca4bd96989c71fce118b8b6.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Mahjong+Ways+2"  style="margin-right: 30px;">
                                                                    <img class="" alt="Mahjong Ways 2" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/f24e33352829cf3475df062f42e059ef.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pgsoft?hot=Wild+Bounty+Showdown"  style="margin-right: 30px;">
                                                                    <img class="" alt="Wild Bounty Showdown" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/a27f7b629697af8fd4be95698b405e49.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/fish-hunter/jili?hot=Fortune+King+Jackpot"  style="margin-right: 30px;">
                                                                    <img class="" alt="Fortune King Jackpot" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/f0804c353def5dda9b9c01d78e2aa22c.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/jili?hot=Fortune+Garuda+500"  style="margin-right: 30px;">
                                                                    <img class="" alt="Fortune Garuda 500" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/f00934689fbc59309051edac531c06a1.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/playstar?hot=MAHJONG%3AORIGIN"  style="margin-right: 30px;">
                                                                    <img class="" alt="MAHJONG:ORIGIN" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/09e8b46b9b99df8060790062f3f999c9.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/fastspin?hot=The+Great+Safari"  style="margin-right: 30px;">
                                                                    <img class="" alt="The Great Safari" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/b467c97004d4c8e6369bac19ff09e079.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/advantplay?hot=Mahjong+Roar"  style="margin-right: 30px;">
                                                                    <img class="" alt="Mahjong Roar" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/dec30a9308210b68e21557c19a3566ca.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/advantplay?hot=Dragon+Chi%E2%80%99s+Quest"  style="margin-right: 30px;">
                                                                    <img class="" alt="Dragon Chi’s Quest" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/36e761d09491e93537a0dafa5862dbe7.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/advantplay?hot=Zeustrike"  style="margin-right: 30px;">
                                                                    <img class="" alt="Zeustrike" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/68f20a827250a7f1e8830b7778fa4a15.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/nextspin?hot=Treasure+of+Atlantis"  style="margin-right: 30px;">
                                                                    <img class="" alt="Treasure of Atlantis" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/64731d06c289895ba53499e95bcefd6c.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/fachai?hot=Jungle+Bang+Bang"  style="margin-right: 30px;">
                                                                    <img class="" alt="Jungle Bang Bang" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/08d0b9abaf22dd54a1d2de12c0cdf91d.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/playtech?hot=Mahjong+Magic"  style="margin-right: 30px;">
                                                                    <img class="" alt="Mahjong Magic" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/5eb69c84e98411f0d06c72bf09a52907.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/spadegaming?hot=Legacy+of+Kong+Maxways"  style="margin-right: 30px;">
                                                                    <img class="" alt="Legacy of Kong Maxways" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/b38733b585f7906d26e94b34bdceb0d5.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/568win?hot=Great+Fortune"  style="margin-right: 30px;">
                                                                    <img class="" alt="Great Fortune" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/3b5da5d3efefd547d1bc58650065b3da.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/wow-gaming?hot=The+Four+Divine+Beasts"  style="margin-right: 30px;">
                                                                    <img class="" alt="The Four Divine Beasts" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/9e02c41ac443d842bdad38a2cfd43970.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/wow-gaming?hot=Barong+Sacred+Battle"  style="margin-right: 30px;">
                                                                    <img class="" alt="Barong Sacred Battle" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/6a3ced44e48a4ec213ec0bc44a552dd7.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/spadegaming?hot=Golden+Pixiu"  style="margin-right: 30px;">
                                                                    <img class="" alt="Golden Pixiu" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/5f64aae569f06225e9a6dc95df9562ac.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/spadegaming?hot=Mahjong+Riches"  style="margin-right: 30px;">
                                                                    <img class="" alt="Mahjong Riches" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/e664409a03bc89f54b8e2cd155e975bf.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/fish-hunter/jili?hot=Ocean+King+Jackpot"  style="margin-right: 30px;">
                                                                    <img class="" alt="Ocean King Jackpot" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/8c4956b2b00b4022c2835189ecbdafc7.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/fish-hunter/jili?hot=Jackpot+Fishing"  style="margin-right: 30px;">
                                                                    <img class="" alt="Jackpot Fishing" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/f33a080810b65b32b8b1b61b1f7c20c8.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                    </div>
                                            <div class="img-container  games-enter-active  games-enter-to run" >
                                                                                                                            <a  href="/slots/jili?hot=Fortune+Gems+500"  style="margin-right: 30px;">
                                                                    <img class="" alt="Fortune Gems 500" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/bee8912db40e22073dafc3231ad731de.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/jili?hot=Storm+of+Seth+2"  style="margin-right: 30px;">
                                                                    <img class="" alt="Storm of Seth 2" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/379692fd1765a40dc4d47dea0877d5f9.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Gates+of+Olympus+Super+Scatter"  style="margin-right: 30px;">
                                                                    <img class="" alt="Gates of Olympus Super Scatter" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/12aba443526306c47646afa82d84ba46.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/playstar?hot=Mahjong+Ways+3%2B_Black+limited"  style="margin-right: 30px;">
                                                                    <img class="" alt="Mahjong Ways 3+_Black limited" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/82c467e24ca5f694faf926befc77c73f.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/playtech?hot=Gold+Trio+10000"  style="margin-right: 30px;">
                                                                    <img class="" alt="Gold Trio 10000" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/7c8419b96b23e37e531e932c463bf877.webp?v=0.1" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/fastspin?hot=Spirit+of+the+Sea"  style="margin-right: 30px;">
                                                                    <img class="" alt="Spirit of the Sea" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/7ca4d556bfba2dd890d8adacc547524a.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/besoft?hot=Domino+Bali+Deluxe"  style="margin-right: 30px;">
                                                                    <img class="" alt="Domino Bali Deluxe" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/aed5246f18e2ca7477a8a76c317212a0.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/besoft?hot=Domino+Caishen"  style="margin-right: 30px;">
                                                                    <img class="" alt="Domino Caishen" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/999215bfec33f337a2622fdf8f451ae2.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Gates+of+Olympus+1000"  style="margin-right: 30px;">
                                                                    <img class="" alt="Gates of Olympus 1000" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/6d39308186b2c0ede30a49d0c486e911.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/dragoonsoft?hot=Bounty+Clash"  style="margin-right: 30px;">
                                                                    <img class="" alt="Bounty Clash" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/fd38e51722df3a6e3bf0c57b8fe8a922.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Mahjong+Wins+3+-+Black+Scatter"  style="margin-right: 30px;">
                                                                    <img class="" alt="Mahjong Wins 3 - Black Scatter" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/b918217637bd8887a37f2f0221bf4609.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/playtech?hot=Wild+Beans"  style="margin-right: 30px;">
                                                                    <img class="" alt="Wild Beans" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/fb6134983ab1437868d837176119ded9.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/fatpanda?hot=Lucky+Tiger+1000"  style="margin-right: 30px;">
                                                                    <img class="" alt="Lucky Tiger 1000" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/a699a8da4a470846b0c1998941844114.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Sweet+Bonanza+Candy+Land"  style="margin-right: 30px;">
                                                                    <img class="" alt="Sweet Bonanza Candy Land" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/dc2e4b4eac519582adae5f8f523cdf95.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Starlight+Princess+1000"  style="margin-right: 30px;">
                                                                    <img class="" alt="Starlight Princess 1000" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/220106934a3dcdf7fc45d13bf8c3cbe5.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Sweet+Bonanza+1000"  style="margin-right: 30px;">
                                                                    <img class="" alt="Sweet Bonanza 1000" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/68585ca56ca4bd96989c71fce118b8b6.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pragmatic-play?hot=Mahjong+Ways+2"  style="margin-right: 30px;">
                                                                    <img class="" alt="Mahjong Ways 2" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/f24e33352829cf3475df062f42e059ef.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/pgsoft?hot=Wild+Bounty+Showdown"  style="margin-right: 30px;">
                                                                    <img class="" alt="Wild Bounty Showdown" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/a27f7b629697af8fd4be95698b405e49.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/fish-hunter/jili?hot=Fortune+King+Jackpot"  style="margin-right: 30px;">
                                                                    <img class="" alt="Fortune King Jackpot" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/f0804c353def5dda9b9c01d78e2aa22c.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/jili?hot=Fortune+Garuda+500"  style="margin-right: 30px;">
                                                                    <img class="" alt="Fortune Garuda 500" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/f00934689fbc59309051edac531c06a1.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/playstar?hot=MAHJONG%3AORIGIN"  style="margin-right: 30px;">
                                                                    <img class="" alt="MAHJONG:ORIGIN" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/09e8b46b9b99df8060790062f3f999c9.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/fastspin?hot=The+Great+Safari"  style="margin-right: 30px;">
                                                                    <img class="" alt="The Great Safari" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/b467c97004d4c8e6369bac19ff09e079.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/advantplay?hot=Mahjong+Roar"  style="margin-right: 30px;">
                                                                    <img class="" alt="Mahjong Roar" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/dec30a9308210b68e21557c19a3566ca.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/advantplay?hot=Dragon+Chi%E2%80%99s+Quest"  style="margin-right: 30px;">
                                                                    <img class="" alt="Dragon Chi’s Quest" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/36e761d09491e93537a0dafa5862dbe7.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/advantplay?hot=Zeustrike"  style="margin-right: 30px;">
                                                                    <img class="" alt="Zeustrike" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/68f20a827250a7f1e8830b7778fa4a15.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/nextspin?hot=Treasure+of+Atlantis"  style="margin-right: 30px;">
                                                                    <img class="" alt="Treasure of Atlantis" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/64731d06c289895ba53499e95bcefd6c.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/fachai?hot=Jungle+Bang+Bang"  style="margin-right: 30px;">
                                                                    <img class="" alt="Jungle Bang Bang" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/08d0b9abaf22dd54a1d2de12c0cdf91d.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/playtech?hot=Mahjong+Magic"  style="margin-right: 30px;">
                                                                    <img class="" alt="Mahjong Magic" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/5eb69c84e98411f0d06c72bf09a52907.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/spadegaming?hot=Legacy+of+Kong+Maxways"  style="margin-right: 30px;">
                                                                    <img class="" alt="Legacy of Kong Maxways" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/b38733b585f7906d26e94b34bdceb0d5.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/568win?hot=Great+Fortune"  style="margin-right: 30px;">
                                                                    <img class="" alt="Great Fortune" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/3b5da5d3efefd547d1bc58650065b3da.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/wow-gaming?hot=The+Four+Divine+Beasts"  style="margin-right: 30px;">
                                                                    <img class="" alt="The Four Divine Beasts" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/9e02c41ac443d842bdad38a2cfd43970.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/wow-gaming?hot=Barong+Sacred+Battle"  style="margin-right: 30px;">
                                                                    <img class="" alt="Barong Sacred Battle" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/6a3ced44e48a4ec213ec0bc44a552dd7.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/spadegaming?hot=Golden+Pixiu"  style="margin-right: 30px;">
                                                                    <img class="" alt="Golden Pixiu" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/5f64aae569f06225e9a6dc95df9562ac.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/slots/spadegaming?hot=Mahjong+Riches"  style="margin-right: 30px;">
                                                                    <img class="" alt="Mahjong Riches" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/e664409a03bc89f54b8e2cd155e975bf.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/fish-hunter/jili?hot=Ocean+King+Jackpot"  style="margin-right: 30px;">
                                                                    <img class="" alt="Ocean King Jackpot" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/8c4956b2b00b4022c2835189ecbdafc7.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                                                                                            <a  href="/fish-hunter/jili?hot=Jackpot+Fishing"  style="margin-right: 30px;">
                                                                    <img class="" alt="Jackpot Fishing" width="180" height="180"  src ="https://files.sitestatic.net/games/i/220x220/f33a080810b65b32b8b1b61b1f7c20c8.webp" style="width: auto;height:180px;" />
                                                                </a>
                                                                                    </div>
                                    </div>
            </div>
        </div>
    </div>
</div>
                          <div>

                            <div class="row home-info-grp" style="padding-top:15px;" >
                              <div class="col-xs-12 col-md-5 col-lg-5 svc-advantage d-md-pl-0" >
                                <!--Service advantages -->
                                <div class="title-box">
                                  <h3 class="u-section-title">
                                  KELEBIHAN LAYANAN                </h3>
                                </div>
                                <!-- color bg -->
                                <div class="content-box u-section-box--bg">
                                  <div class="row ">
                                    <div class=" col-xs-12 col-md-6 d-md-pl-5"  >
                                      <div class="card">
                                        <div class="card-header clearfix">
                                          <div class="circle-wrp"><i class="icon-atm"></i> </div>
                                          <div class="text-wrp">
                                            <div class="u-section-title">
                                            DEPOSIT                            </div>
                                            <div>Waktu rata-rata</div>
                                          </div>
                                        </div>
                                        <div class="">
                                          <div class="text-right fs-md" style="padding-bottom:8px;">
                                          1 Mins                        </div>
                                          <div class="progress">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="10" aria-valuemin="0"
                                            aria-valuemax="100" style="width: 10%;">
                                            <span class="sr-only">10% Complete</span>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="   col-xs-12 col-md-6  d-md-pl-5"   >
                                    <div class="card">
                                      <div class="card-header clearfix">
                                        <div class="circle-wrp"><i class="icon-coinbag"></i></div>
                                        <div class="text-wrp">
                                          <div class="u-section-title">
                                          WITHDRAW                            </div>
                                          <div>Waktu rata-rata</div>
                                        </div>
                                      </div>
                                      <div class="">
                                        <div class="text-right fs-md" style="padding-bottom:8px;">
                                        3 Mins                        </div>
                                        <div class="progress">
                                          <div class="progress-bar" role="progressbar" aria-valuenow="30" aria-valuemin="0"
                                          aria-valuemax="100" style="width: 30%;">
                                          <span class="sr-only">30% Complete</span>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="  col-xs-12  mt-3 text-center"   >
                                  <div class="card">
                                    <div class="row">
                                      <div class="col-xs-4">
                                        <div class="circle-wrp">
                                          <i class="icon-users2"></i>
                                        </div >
                                        <div>
                                          <div>Pengguna</div>
                                          <div>173628</div>
                                        </div>
                                      </div>
                                      <div class="col-xs-4">
                                        <div class="circle-wrp">
                                          <i class="icon-cash"></i>
                                        </div >
                                        <div>
                                          <div>Jumlah Taruhan</div>
                                          <div>674,274,541 </div>
                                        </div>
                                      </div>
                                      <div class="col-xs-4">
                                        <div class="circle-wrp">
                                          <i class="icon-stamp"></i>
                                        </div >
                                        <div>
                                          <div>Online</div>
                                          <div>52088 </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- color bg -->
                          <div class="col-xs-12  col-md-7 col-lg-7 " style="fedc3d;">
                            <div class="row">
                              <div class="col-xs-12  col-md-6 col-lg-6 info-centre d-md-pl-0">
                                <div class="title-box">
                                  <h3 class="u-section-title">
                                    PUSAT INFO  
                                  </h3>
                                </div>
                                <!-- color bg -->
                                <div class="content-box u-section-box--bg">
                                  <ul>
                                    <li>
                                      <div class="text">Cara Bermain SportsBook</div>
                                      <a class="btn btn-link" href="<?php echo $urlweb; ?>/info/how-sportsbook" > Lebihnya</a>
                                    </li>
                                    <li>
                                      <div class="text">Cara Bermain Slot</div>
                                      <a class="btn btn-link" href="<?php echo $urlweb; ?>/info/how-slots" > Lebihnya</a>
                                    </li>

                                    <li>
                                      <div class="text">Cara Melakukan Deposit</div>
                                      <a class="btn btn-link"  href="<?php echo $urlweb; ?>/info/faq-deposit"> Lebihnya</a>
                                    </li>
                                    <li>
                                      <div class="text">Cara Melakukan Withdraw </div>
                                      <a class="btn btn-link"href="<?php echo $urlweb; ?>/info/faq-faq_withdrawal" > Lebihnya</a>
                                    </li> 


                                  </ul>

                                </div>
                              </div>

                              <!-- color bg -->

                              <div class="col-xs-12  col-md-6 col-lg-6 member-svc">
                                <div class="title-box">
                                  <h3 class="u-section-title">
                                    MEMBER SERVICE
                                  </h3>
                                </div>
                                <!-- color bg -->
                                <div class="content-box u-section-box--bg">

                                  <section class="contacts-carousel">
                                    <div id="contacts-carousel" class=" carousel slide  " data-ride="carousel">
                                      <ol class="carousel-indicators">


                                        <li data-target="#contacts-carousel" data-slide-to="0" class="active"></li>  

                                      </ol>

                                      <div class="carousel-inner" role="listbox" aria-label="contacts carousel">


                                        <div   class="item active" role="option">  

                                          <a target="_blank" href="https://api.whatsapp.com/send?phone=<?php echo $s1a['wa']; ?>" class="contact-item">
                                            <div class="icon-wrp"> <i class="icon-whatsapp"></i> </div>
                                            <div class="text-wrp"> 

                                              <div class="u-muted-txt">WHATSAPP</div>
                                              <div class=""><?php echo $s1a['wa']; ?></div>
                                              <div class="u-muted-txt">24/7 Support</div>
                                            </div>
                                          </a>
                                        </div>

                                      </div> 
                                    </div>
                                  </section>

                                </div>
                              </div>

                            </div>
                          </div>

                        </div>
                      </div></div>
                       <div class=" container">
            <style>.footer-content {
    background: #471525;
    color: inherit;
    font-size: 12px;
    margin-bottom: 15px;
    padding: 15px 0
}

.footer-content .footerlink ul {
    margin: 0;
    padding: 0
}

.footer-content .footerlink ul li {
    display: inline-block;
    line-height: 24px;
    padding: 0 5px 0 0;
    vertical-align: middle
}

.footer-content .footerlink ul li a {
    color: #fff
}

.footer-content .footerlink.version-sec {
    border: 1px;
    border-style: dotted;
    border-width: 1px 0;
    margin: 10px 0;
    padding: 10px 0
}

.footer-title {
    font-size: 20px;
    font-weight: 400;
    letter-spacing: 2px;
    text-transform: uppercase
}</style>
            <div class="row">
                          <div class="footer-content clearfix" style="background:#000324">
                            <div class="col-xs-12">
                              <div class="footerlink">
                                <ul class="clearfix">
                                  <li><a href="<?php echo $urlweb; ?>/info/faq-general" style="color:#fff;">Tentang kami</a></li>
                                  <li>|</li>
                                  <li><a href="<?php echo $urlweb; ?>/info/faq-banking" style="color:#fff;">Info Perbankan</a></li>
                                  <li>|</li>
                                  <li><a href="<?php echo $urlweb; ?>/info/faq-general" style="color:#fff;">Pusat Info</a></li>
                                  <li>|</li>
                                  <li><a href="<?php echo $urlweb; ?>/contact-us"   style="color:#fff;">Hubungi kami</a></li>

                                </ul>
                              </div>
                              <div class="footerlink version-sec">
                                <ul class="clearfix">
                                  <li>
                                    <div class="copyright" style="color:#fff;">
                                      @2026 <?php echo $instansi ?>. Seluruh hak cipta | 18+ | v1.55
                                    </div>
                                  </li>
                                </ul>
                              </div>

                              <div class=" text-left footerlink mt-4  ">
                                <div class="small" style="color:#fff;">
                                Platform Penyedia Layanan hubungi telegram @cxfcore    </div>
                                <div class="mt-2 footer_btm_logo_img">



                                  <img class="footer_logimg" style="max-height: 50px;"    alt="https://t.me/cxfcore" src="https://websitexx.sbs/uploads/img_697f02c42e928.png">
                                  <!-- <img class="footer_logimg" style="max-height: 50px;"  alt="<?php echo $instansi ?>" src="https://files.sitestatic.net/ImageFile/61d1c09b8b424_HALO-138.gif"> -->

                                </div>
                              </div>
                              <div class=" text-left footerlink mt-2">
                                <div class="small"  style="color:#fff;">
                                Cara Pembayaran    </div>
                                <div class="payment_imgs mt-2">
                                  <img class="img-fluid mb-3" style="width: 150px; border-radius:10px;border: 1px solid currentColor;" 
                                  src="https://files.sitestatic.net/sprites/bank_logos/bank_col.jpg?v=3" alt="bank payment method">

                                  <img class="img-fluid mb-3"  style="width: 150px; border-radius:10px;border: 1px solid currentColor;" 
                                  src="https://files.sitestatic.net/sprites/bank_logos/ewallet_col.jpg?v=3" alt="ewallet payment method">

                                  <img class="img-fluid mb-3"  style="width: 150px; border-radius:10px;border: 1px solid currentColor;" 
                                  src="https://files.sitestatic.net/sprites/bank_logos/pulsa_col.jpg?v=3" alt="pulsa payment method">


                                </div>
                              </div>
                            </div>
                          </div>
                        </div></div>




                        <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>



                          $(document).ready(function () {

                            console.log((!document.referrer.includes('__cf')))
                            if( document.referrer.indexOf(location.protocol + "//" + location.host) === 0 && (!document.referrer.includes('__cf'))){
                              sessionStorage.setItem('isClosedPopUp', 'true');
                            }
                            var isClosedPopUp = sessionStorage.getItem('isClosedPopUp');

                            if(isClosedPopUp !==    "true"){
                             var popUpInst =  $.fancybox.open(
                             {
                              src  :     `<img src="https://files.sitestatic.net/promotion_banners/20240625132607000000cfb0bb6955JOGAABO__400x582.png" class="img-fluid" alt="popup banner"  >`,
                              type : 'html',
                              opts : {
                                afterShow : function( instance, current ) {
                                  console.log( document.referrer.indexOf(location.protocol + "//" + location.host));
                                  console.log( location.protocol + "//" + location.host);
                                  console.log( document.referrer);
                                  console.log((!document.referrer.includes('__cf')))
                                  if( document.referrer.indexOf(location.protocol + "//" + location.host) === 0 && (!document.referrer.includes('__cf'))){
                                    sessionStorage.setItem('isClosedPopUp', 'true');
                                  }
                                }
                              }
                            }
                            );
                           }
                         </script>

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
