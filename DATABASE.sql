-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Feb 2026 pada 21.50
-- Versi server: 11.4.9-MariaDB-cll-lve
-- Versi PHP: 8.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jrdufvyeyv_megacuan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `cuid` int(11) NOT NULL,
  `min_depo` int(11) NOT NULL,
  `min_wd` int(11) NOT NULL,
  `com_ref` text NOT NULL,
  `rabat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`cuid`, `min_depo`, `min_wd`, `com_ref`, `rabat`) VALUES
(1, 20000, 20000, '1', '0.1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_apigames`
--

CREATE TABLE `tb_apigames` (
  `cuid` int(11) NOT NULL,
  `endpoint` text NOT NULL,
  `token` text NOT NULL,
  `owner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_apigames`
--

INSERT INTO `tb_apigames` (`cuid`, `endpoint`, `token`, `owner`) VALUES
(1, 'https://rest.cxfcore.sbs', 'TOKEN', 'AGENT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_apitelegram`
--

CREATE TABLE `tb_apitelegram` (
  `cuid` int(11) NOT NULL,
  `token` text NOT NULL,
  `owner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_apitelegram`
--

INSERT INTO `tb_apitelegram` (`cuid`, `token`, `owner`) VALUES
(1, '8037361125:AAF3ybDqbYqnB85jKmjrX-Ax2oti-cKrGDY', '8037361125:AAF3ybDqbYqnB85jKmjrX-Ax2oti-cKrGDY');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_balance`
--

CREATE TABLE `tb_balance` (
  `cuid` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `active` varchar(255) NOT NULL,
  `pending` text NOT NULL,
  `transfer` text NOT NULL,
  `payout` text NOT NULL,
  `backup` text NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_balance`
--

INSERT INTO `tb_balance` (`cuid`, `userID`, `active`, `pending`, `transfer`, `payout`, `backup`, `created_date`) VALUES
(1, 802, '0', '0', '0', '0', '0', '2026-01-11 05:35:20'),
(2, 803, '100000', '0', '0', '0', '0', '2026-01-11 05:39:11'),
(3, 804, '0', '0', '0', '0', '0', '2026-01-12 06:22:37'),
(4, 805, '0', '0', '0', '0', '0', '2026-01-13 16:38:21'),
(5, 806, '0', '0', '0', '0', '0', '2026-01-19 07:39:38'),
(6, 807, '0', '0', '0', '0', '0', '2026-01-21 08:34:11'),
(7, 808, '0', '0', '0', '0', '0', '2026-01-21 08:38:21'),
(8, 809, '99602', '0', '0', '0', '0', '2026-01-22 05:53:11'),
(9, 810, '0', '0', '0', '0', '0', '2026-01-29 02:30:33'),
(10, 811, '0', '0', '0', '0', '0', '2026-02-03 10:20:45'),
(11, 812, '0', '0', '0', '0', '0', '2026-02-06 20:53:50'),
(12, 813, '0', '0', '0', '0', '0', '2026-02-07 00:28:15'),
(13, 814, '0', '0', '0', '0', '0', '2026-02-10 11:05:52'),
(14, 815, '0', '0', '0', '0', '0', '2026-02-11 15:50:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bank`
--

CREATE TABLE `tb_bank` (
  `cuid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `akun` text NOT NULL,
  `pemilik` text NOT NULL,
  `no_rek` text NOT NULL,
  `status` int(2) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_bank`
--

INSERT INTO `tb_bank` (`cuid`, `image`, `akun`, `pemilik`, `no_rek`, `status`, `userID`) VALUES
(1, '', 'EWALLET DANA', 'Gauauajqwj', '0821316494949', 1, 802),
(2, '', 'EWALLET DANA', 'Gahajwajjwaj', '0885161649494', 1, 803),
(3, '', 'EWALLET DANA', 'Nurriadi', '082357180112', 1, 804),
(4, '', 'BANK MANDIRI', 'Lulu3344', '548484848', 1, 805),
(5, '', 'BANK BCA', 'Eko purnomo', '7870696251', 1, 806),
(6, '', 'EWALLET DANA', 'Hqjqjqjqjanan', '082131619494', 1, 807),
(7, '', 'EWALLET GOPAY', 'Hwhwjwjwjq', '0821616494949', 1, 808),
(8, '', 'EWALLET DANA', 'Bahwjw iwuwjwjw', '08222131949494', 1, 809),
(9, '', 'Dana', 'Hahah', '085216164', 1, 1),
(10, '', 'EWALLET DANA', 'ASEP SAEPULOH ', '085775125273', 1, 810),
(11, '', 'BANK BSI', 'Gio', '08454545455454', 1, 811),
(12, '', 'EWALLET DANA', 'usmanasa', '04846436349646', 1, 812),
(13, '', 'EWALLET DANA', 'urmanasaj', '08784645434', 1, 813),
(14, '', 'BANK MANDIRI', 'Bi', '0846797987878', 1, 814),
(15, '', 'EWALLET DANA', 'Deni', '082228005563', 1, 815);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_banner_tambahan`
--

CREATE TABLE `tb_banner_tambahan` (
  `cuid` int(11) NOT NULL,
  `image_link` text NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_banner_tambahan`
--

INSERT INTO `tb_banner_tambahan` (`cuid`, `image_link`, `status`) VALUES
(1, 'https://files.imagetourl.net/uploads/1766721887433-27f6a8a7-ae45-4c24-9c59-3e0a2470bb5a.jpg', 1),
(2, 'https://files.imagetourl.net/uploads/1766721948213-ea2d8bc4-fc1f-41df-98ca-9506501134a8.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_depositpromosi`
--

CREATE TABLE `tb_depositpromosi` (
  `id` int(11) NOT NULL,
  `prom` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_depositpromosi`
--

INSERT INTO `tb_depositpromosi` (`id`, `prom`) VALUES
(1, 'MEMBER VIP'),
(2, 'BONUS NEW MEMBER 100%'),
(3, 'TANPA BONUS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gamelist`
--

CREATE TABLE `tb_gamelist` (
  `cuid` int(11) NOT NULL,
  `game_vendor` text NOT NULL,
  `game_name` text NOT NULL,
  `game_provider_original` text NOT NULL,
  `game_provider` text NOT NULL,
  `game_type` text DEFAULT NULL,
  `game_status` text DEFAULT NULL,
  `game_image` text DEFAULT NULL,
  `providerapi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `tb_gamelist`
--

INSERT INTO `tb_gamelist` (`cuid`, `game_vendor`, `game_name`, `game_provider_original`, `game_provider`, `game_type`, `game_status`, `game_image`, `providerapi`, `created_at`) VALUES
(1, 'vs20swbonsup', 'Sweet Bonanza Super Scatter', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20swbonsup.png', 'PSE', '2025-08-28 14:37:16'),
(2, 'vs20olympgold', 'Gates of Olympus Super Scatter', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20olympgold.png', 'PSE', '2025-08-28 14:37:16'),
(3, 'vswayspompmr2', 'Zombie School Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayspompmr2.png', 'PSE', '2025-08-28 14:37:16'),
(4, 'vs20sugarrushx', 'Sugar Rush 1000', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20sugarrushx.png', 'PSE', '2025-08-28 14:37:16'),
(5, 'ar1spire', 'Spire+', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/ar1spire.png', 'PSE', '2025-08-28 14:37:16'),
(6, 'vswayswbounty', 'Vampy Party', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayswbounty.png', 'PSE', '2025-08-28 14:37:16'),
(7, 'vswayspowzeus', 'Power of Merlin Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayspowzeus.png', 'PSE', '2025-08-28 14:37:16'),
(8, 'vs10jpblaze', 'Jackpot Blaze', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10jpblaze.png', 'PSE', '2025-08-28 14:37:16'),
(9, 'vswaysrabbits', '5 Rabbits Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysrabbits.png', 'PSE', '2025-08-28 14:37:16'),
(10, 'vs20wwgcluster', 'Wild West Gold Blazing Bounty', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20wwgcluster.png', 'PSE', '2025-08-28 14:37:16'),
(11, 'vs20olympx', 'Gates of Olympus 1000', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20olympx.png', 'PSE', '2025-08-28 14:37:16'),
(12, 'vs25pandagold', 'Panda\'s Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25pandagold.png', 'PSE', '2025-08-28 14:37:16'),
(13, 'vsways5lions2', '5 Lions Megaways 2', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vsways5lions2.png', 'PSE', '2025-08-28 14:37:16'),
(14, 'vs20tweethouse', 'The Tweety House', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20tweethouse.png', 'PSE', '2025-08-28 14:37:16'),
(15, 'vs20sugarrush', 'Sugar Rush', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20sugarrush.png', 'PSE', '2025-08-28 14:37:16'),
(16, 'vs20starlightx', 'Starlight Princess 1000', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20starlightx.png', 'PSE', '2025-08-28 14:37:16'),
(17, 'vs10spellmastr', 'Spellmaster', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10spellmastr.png', 'PSE', '2025-08-28 14:37:16'),
(18, 'vs20fruitswx', 'Sweet Bonanza 1000', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20fruitswx.png', 'PSE', '2025-08-28 14:37:16'),
(19, 'vs20olympgate', 'Gates of Olympus', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20olympgate.png', 'PSE', '2025-08-28 14:37:16'),
(20, 'vs20starlight', 'Starlight Princess', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20starlight.png', 'PSE', '2025-08-28 14:37:16'),
(21, 'vs15godsofwar', 'Zeus vs Hades - Gods of War', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs15godsofwar.png', 'PSE', '2025-08-28 14:37:16'),
(22, 'vswayslions', '5 Lions Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayslions.png', 'PSE', '2025-08-28 14:37:16'),
(23, 'vswaysmahwin2', 'Mahjong Wins 2', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmahwin2.png', 'PSE', '2025-08-28 14:37:16'),
(24, 'vs20fruitsw', 'Sweet Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20fruitsw.png', 'PSE', '2025-08-28 14:37:16'),
(25, 'vs20gatotx', 'Gates of Gatot Kaca 1000', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20gatotx.png', 'PSE', '2025-08-28 14:37:16'),
(26, 'vswaysdogs', 'The Dog House Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysdogs.png', 'PSE', '2025-08-28 14:37:16'),
(27, 'vs20procountx', 'Wisdom of Athena 1000', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20procountx.png', 'PSE', '2025-08-28 14:37:16'),
(28, 'vswaysmegareel', 'Pompeii Megareels Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmegareel.png', 'PSE', '2025-08-28 14:37:16'),
(29, 'vs40wildwest', 'Wild West Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40wildwest.png', 'PSE', '2025-08-28 14:37:16'),
(30, 'vswaysbufking', 'Buffalo King Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysbufking.png', 'PSE', '2025-08-28 14:37:16'),
(31, 'vs20gtsofhades', 'Gates of Hades', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20gtsofhades.png', 'PSE', '2025-08-28 14:37:16'),
(32, 'vs20pbonanza', 'Pyramid Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20pbonanza.png', 'PSE', '2025-08-28 14:37:16'),
(33, 'vswaysrhino', 'Great Rhino Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysrhino.png', 'PSE', '2025-08-28 14:37:16'),
(34, 'vs5joker', 'Joker\'s Jewels', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5joker.png', 'PSE', '2025-08-28 14:37:16'),
(35, 'vs20saiman', 'Saiyan Mania', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20saiman.png', 'PSE', '2025-08-28 14:37:16'),
(36, 'vs20olympxmas', 'Gates of Olympus Xmas 1000', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20olympxmas.png', 'PSE', '2025-08-28 14:37:16'),
(37, 'vswaysasiatrzn', 'Triple Pot Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysasiatrzn.png', 'PSE', '2025-08-28 14:37:16'),
(38, 'vs20sbxmas', 'Sweet Bonanza Xmas', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20sbxmas.png', 'PSE', '2025-08-28 14:37:16'),
(39, 'vs20rujakbnz', 'Rujak Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20rujakbnz.png', 'PSE', '2025-08-28 14:37:16'),
(40, 'vs20doghouse', 'The Dog House', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20doghouse.png', 'PSE', '2025-08-28 14:37:16'),
(41, 'vs20amuleteg', 'Fortune of Giza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20amuleteg.png', 'PSE', '2025-08-28 14:37:16'),
(42, 'vswaysanime', 'Anime Mecha Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysanime.png', 'PSE', '2025-08-28 14:37:16'),
(43, 'vs20rockvegas', 'Rock Vegas', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20rockvegas.png', 'PSE', '2025-08-28 14:37:16'),
(44, 'vs20portals', 'Fire Portals', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20portals.png', 'PSE', '2025-08-28 14:37:16'),
(45, 'vs25pandatemple', 'Panda Fortune 2', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25pandatemple.png', 'PSE', '2025-08-28 14:37:16'),
(46, 'vs10txbigbass', 'Big Bass Splash', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10txbigbass.png', 'PSE', '2025-08-28 14:37:16'),
(47, 'vs5aztecgems', 'Aztec Gems', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5aztecgems.png', 'PSE', '2025-08-28 14:37:16'),
(48, 'vs20bonzgold', 'Bonanza Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20bonzgold.png', 'PSE', '2025-08-28 14:37:16'),
(49, 'vs12bbb', 'Bigger Bass Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs12bbb.png', 'PSE', '2025-08-28 14:37:16'),
(50, 'vswayswwriches', 'Wild Wild Riches Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayswwriches.png', 'PSE', '2025-08-28 14:37:16'),
(51, 'vswaysrockblst', 'Rocket Blast Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysrockblst.png', 'PSE', '2025-08-28 14:37:16'),
(52, 'vs10bbbnz1000', 'Big Bass Bonanza 1000', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbbnz1000.png', 'PSE', '2025-08-28 14:37:16'),
(53, 'vswayshammthor', 'Power of Thor Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayshammthor.png', 'PSE', '2025-08-28 14:37:16'),
(54, 'vswaysmadame', 'Madame Destiny Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmadame.png', 'PSE', '2025-08-28 14:37:16'),
(55, 'vs15seoultrain', 'Zombie Train', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs15seoultrain.png', 'PSE', '2025-08-28 14:37:16'),
(56, 'vs12tropicana', 'Club Tropicana', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs12tropicana.png', 'PSE', '2025-08-28 14:37:16'),
(57, 'vswayspizza', 'PIZZA PIZZA PIZZA', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayspizza.png', 'PSE', '2025-08-28 14:37:16'),
(58, 'vsways5lionsr', '5 Lions Reborn', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vsways5lionsr.png', 'PSE', '2025-08-28 14:37:16'),
(59, 'vs20xmascarol', 'Christmas Carol Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20xmascarol.png', 'PSE', '2025-08-28 14:37:16'),
(60, 'vs20sugrux', 'Sugar Rush Xmas', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20sugrux.png', 'PSE', '2025-08-28 14:37:16'),
(61, 'vs15samurai4', 'Rise of Samurai 4', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs15samurai4.png', 'PSE', '2025-08-28 14:37:16'),
(62, 'vs25checaishen', 'Chests of Cai Shen', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25checaishen.png', 'PSE', '2025-08-28 14:37:16'),
(63, 'vs25goldparty', 'Gold Party', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25goldparty.png', 'PSE', '2025-08-28 14:37:16'),
(64, 'vs20bigmass', 'Waves of Poseidon', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20bigmass.png', 'PSE', '2025-08-28 14:37:16'),
(65, 'vs10floatdrg', 'Floating Dragon', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10floatdrg.png', 'PSE', '2025-08-28 14:37:16'),
(66, 'vs20mustanggld2', 'Clover Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20mustanggld2.png', 'PSE', '2025-08-28 14:37:16'),
(67, 'vs20cleocatra', 'Cleocatra', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20cleocatra.png', 'PSE', '2025-08-28 14:37:16'),
(68, 'vs20muertos', 'Muertos Multiplier Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20muertos.png', 'PSE', '2025-08-28 14:37:16'),
(69, 'vs20procount', 'Wisdom of Athena', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20procount.png', 'PSE', '2025-08-28 14:37:16'),
(70, 'vs20farmfest', 'Barn Festival', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20farmfest.png', 'PSE', '2025-08-28 14:37:16'),
(71, 'vswaysaztecking', 'Aztec King Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysaztecking.png', 'PSE', '2025-08-28 14:37:16'),
(72, 'vs12bbbxmas', 'Bigger Bass Blizzard - Christmas Catch', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs12bbbxmas.png', 'PSE', '2025-08-28 14:37:16'),
(73, 'vs10bbhas', 'Big Bass - Hold & Spinner', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbhas.png', 'PSE', '2025-08-28 14:37:16'),
(74, 'vs25hotfiesta', 'Hot Fiesta', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25hotfiesta.png', 'PSE', '2025-08-28 14:37:16'),
(75, 'vs20framazon', 'Fruits of the Amazon', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20framazon.png', 'PSE', '2025-08-28 14:37:16'),
(76, 'vs12trpcnhour', 'Club Tropicana - Happy Hour', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs12trpcnhour.png', 'PSE', '2025-08-28 14:37:16'),
(77, 'vs4096bufking', 'Buffalo King', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs4096bufking.png', 'PSE', '2025-08-28 14:37:16'),
(78, 'vswaysmwss', 'Mahjong Wins Super Scatter', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmwss.png', 'PSE', '2025-08-28 14:37:16'),
(79, 'vs10bbbbrnd', 'Big Bass Boxing Bonus Round', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbbbrnd.png', 'PSE', '2025-08-28 14:37:16'),
(80, 'vs10fisheye', 'Fish Eye', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10fisheye.png', 'PSE', '2025-08-28 14:37:16'),
(81, 'bjmb', 'American Blackjack', 'PR', 'PR', 'CB', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/bjmb.png', 'PSE', '2025-08-28 14:37:16'),
(82, 'vs20sugarnudge', 'Sugar Supreme Powernudge', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20sugarnudge.png', 'PSE', '2025-08-28 14:37:16'),
(83, 'vs10bbfloats', 'Big Bass Floats my Boat', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbfloats.png', 'PSE', '2025-08-28 14:37:16'),
(84, 'vs1024mjwinbns', 'Mahjong Wins Bonus', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1024mjwinbns.png', 'PSE', '2025-08-28 14:37:16'),
(85, 'vswaysstampede', 'Fire Stampede', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysstampede.png', 'PSE', '2025-08-28 14:37:16'),
(86, 'vs20mammoth', 'Mammoth Gold Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20mammoth.png', 'PSE', '2025-08-28 14:37:16'),
(87, 'vs10fdrasbf', 'Floating Dragon - Dragon Boat Festival', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10fdrasbf.png', 'PSE', '2025-08-28 14:37:16'),
(88, 'vswaysfirest2', 'Fire Stampede 2', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysfirest2.png', 'PSE', '2025-08-28 14:37:16'),
(89, 'vs25holiday', 'Holiday Ride', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25holiday.png', 'PSE', '2025-08-28 14:37:16'),
(90, 'vs7fire88fp', 'Mystic Wishes', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs7fire88fp.png', 'PSE', '2025-08-28 14:37:16'),
(91, 'vs20fruitparty', 'Fruit Party', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20fruitparty.png', 'PSE', '2025-08-28 14:37:16'),
(92, 'vs243lionsgold', '5 Lions Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243lionsgold.png', 'PSE', '2025-08-28 14:37:16'),
(93, 'vs10bhallbnza', 'Big Bass Halloween', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bhallbnza.png', 'PSE', '2025-08-28 14:37:16'),
(94, 'vs20candvil', 'Candy Village', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20candvil.png', 'PSE', '2025-08-28 14:37:16'),
(95, 'vs10bbbonanza', 'Big Bass Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbbonanza.png', 'PSE', '2025-08-28 14:37:16'),
(96, 'vs20gatotgates', 'Gates of Gatot Kaca', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20gatotgates.png', 'PSE', '2025-08-28 14:37:16'),
(97, 'vswaysresurich', 'Resurrecting Riches', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysresurich.png', 'PSE', '2025-08-28 14:37:16'),
(98, 'vswaysbandit', 'Bandit Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysbandit.png', 'PSE', '2025-08-28 14:37:16'),
(99, 'vswaysrsm', 'Wild Celebrity Bus Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysrsm.png', 'PSE', '2025-08-28 14:37:16'),
(100, 'vs10chillihmr', 'Chilli Heat Spicy Spins', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10chillihmr.png', 'PSE', '2025-08-28 14:37:16'),
(101, 'vs20bnnzdice', 'Sweet Bonanza Dice', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20bnnzdice.png', 'PSE', '2025-08-28 14:37:16'),
(102, 'vswaysluckyfish', 'Lucky Fishing Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysluckyfish.png', 'PSE', '2025-08-28 14:37:16'),
(103, 'vswayssamurai', 'Rise of Samurai Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayssamurai.png', 'PSE', '2025-08-28 14:37:16'),
(104, 'vs20dhsuper', 'The Dog House - Royal Hunt', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20dhsuper.png', 'PSE', '2025-08-28 14:37:16'),
(105, 'vs10returndead', 'Return of the Dead', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10returndead.png', 'PSE', '2025-08-28 14:37:16'),
(106, 'vs20ninjapower', 'Power of Ninja', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20ninjapower.png', 'PSE', '2025-08-28 14:37:16'),
(107, 'vswayswildwest', 'Wild West Gold Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayswildwest.png', 'PSE', '2025-08-28 14:37:16'),
(108, 'vs40samurai3', 'Rise of Samurai 3', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40samurai3.png', 'PSE', '2025-08-28 14:37:16'),
(109, 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bxmasbnza.png', 'PSE', '2025-08-28 14:37:16'),
(110, 'vswaystonypzz', 'Peppe\'s Pepperoni Pizza Plaza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaystonypzz.png', 'PSE', '2025-08-28 14:37:16'),
(111, 'vs25copsrobbers', 'Cash Patrol', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25copsrobbers.png', 'PSE', '2025-08-28 14:37:16'),
(112, 'ar10plinko', 'Plinko+', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/ar10plinko.png', 'PSE', '2025-08-28 14:37:16'),
(113, 'vs10bbdoubled', 'Big Bass Vegas Double Down Deluxe', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbdoubled.png', 'PSE', '2025-08-28 14:37:16'),
(114, 'vs10fingerlfs', 'Finger Lick\'n Free Spins', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10fingerlfs.png', 'PSE', '2025-08-28 14:37:16'),
(115, 'vs20wildparty', '3 Buzzing Wilds', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20wildparty.png', 'PSE', '2025-08-28 14:37:16'),
(116, 'vs20mochimon', 'Mochimon', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20mochimon.png', 'PSE', '2025-08-28 14:37:16'),
(117, 'vswayswildbrst', 'Witch Heart Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayswildbrst.png', 'PSE', '2025-08-28 14:37:16'),
(118, 'vs1024mahjwins', 'Mahjong Wins', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1024mahjwins.png', 'PSE', '2025-08-28 14:37:16'),
(119, 'vswaysmjwl', 'Mummy\'s Jewels', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmjwl.png', 'PSE', '2025-08-28 14:37:16'),
(120, 'vs20doghouse2', 'The Dog House - Dog or Alive', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20doghouse2.png', 'PSE', '2025-08-28 14:37:16'),
(121, 'vs10bbrrp', 'Big Bass Reel Repeat', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbrrp.png', 'PSE', '2025-08-28 14:37:16'),
(122, 'vs10bblotgl', 'Big Bass - Secrets of the Golden Lake', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bblotgl.png', 'PSE', '2025-08-28 14:37:16'),
(123, 'vs20candybltz2', 'Candy Blitz Bombs', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20candybltz2.png', 'PSE', '2025-08-28 14:37:16'),
(124, 'vswayscheist', 'Casino Heist Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayscheist.png', 'PSE', '2025-08-28 14:37:16'),
(125, 'vs20goldclust', 'Rabbit Garden', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20goldclust.png', 'PSE', '2025-08-28 14:37:16'),
(126, 'vs12scode', 'Samurai Code', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs12scode.png', 'PSE', '2025-08-28 14:37:16'),
(127, 'vs20pistols', 'Wild West Duels', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20pistols.png', 'PSE', '2025-08-28 14:37:16'),
(128, 'vswayslight', 'Lucky Lightning', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayslight.png', 'PSE', '2025-08-28 14:37:16'),
(129, 'vs20fortbon', 'Fruity Treats', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20fortbon.png', 'PSE', '2025-08-28 14:37:16'),
(130, 'vs20olympdice', 'Gates of Olympus Dice', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20olympdice.png', 'PSE', '2025-08-28 14:37:16'),
(131, 'vs10egyptcls', 'Ancient Egypt Classic', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10egyptcls.png', 'PSE', '2025-08-28 14:37:16'),
(132, 'vs20doghousemh', 'The Dog House Multihold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20doghousemh.png', 'PSE', '2025-08-28 14:37:16'),
(133, 'vs20dugems', 'Hot Pepper', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20dugems.png', 'PSE', '2025-08-28 14:37:16'),
(134, 'vs20minerush', 'Mining Rush', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20minerush.png', 'PSE', '2025-08-28 14:37:16'),
(135, 'vs10bookfallen', 'Book of Fallen', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bookfallen.png', 'PSE', '2025-08-28 14:37:16'),
(136, 'vs15fghtmultlv', 'Angel vs Sinner', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs15fghtmultlv.png', 'PSE', '2025-08-28 14:37:16'),
(137, 'vswaysgoldcol', 'Mustang Gold Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysgoldcol.png', 'PSE', '2025-08-28 14:37:16'),
(138, 'vs243mwarrior', 'Monkey Warrior', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243mwarrior.png', 'PSE', '2025-08-28 14:37:16'),
(139, 'vswaysxjuicy', 'Extra Juicy Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysxjuicy.png', 'PSE', '2025-08-28 14:37:16'),
(140, 'vs25sleepdrag', 'Sleeping Dragon', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25sleepdrag.png', 'PSE', '2025-08-28 14:37:16'),
(141, 'vswayszombcarn', 'Zombie Carnival', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayszombcarn.png', 'PSE', '2025-08-28 14:37:16'),
(142, 'vs25goldpartya', 'Gold Party 2 - After Hours', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25goldpartya.png', 'PSE', '2025-08-28 14:37:16'),
(143, 'vs10fruity2', 'Extra Juicy', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10fruity2.png', 'PSE', '2025-08-28 14:37:16'),
(144, 'vs10bbkir', 'Big Bass Bonanza - Keeping it Reel', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbkir.png', 'PSE', '2025-08-28 14:37:16'),
(145, 'vs20asgard', 'Kingdom of Asgard', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20asgard.png', 'PSE', '2025-08-28 14:37:16'),
(146, 'vswaysfrywld', 'Spin & Score Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysfrywld.png', 'PSE', '2025-08-28 14:37:16'),
(147, 'vs40pirate', 'Pirate Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40pirate.png', 'PSE', '2025-08-28 14:37:16'),
(148, 'vs20rhinoluxe', 'Great Rhino Deluxe', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20rhinoluxe.png', 'PSE', '2025-08-28 14:37:16'),
(149, 'vs20schristmas', 'Starlight Christmas', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20schristmas.png', 'PSE', '2025-08-28 14:37:16'),
(150, 'vs10eyestorm', 'Eye of the Storm', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10eyestorm.png', 'PSE', '2025-08-28 14:37:16'),
(151, 'vs20clustwild', 'Sticky Bees', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20clustwild.png', 'PSE', '2025-08-28 14:37:16'),
(152, 'vs20stickywild', 'Wild Bison Charge', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20stickywild.png', 'PSE', '2025-08-28 14:37:16'),
(153, 'vswaysolwfp', 'Olympus Wins', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysolwfp.png', 'PSE', '2025-08-28 14:37:16'),
(154, 'vs7776aztec', 'Aztec Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs7776aztec.png', 'PSE', '2025-08-28 14:37:16'),
(155, 'vs20dhcluster2', 'The Dog House - Muttley Crew', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20dhcluster2.png', 'PSE', '2025-08-28 14:37:16'),
(156, 'vs9gemtrio', 'Gem Trio', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs9gemtrio.png', 'PSE', '2025-08-28 14:37:16'),
(157, 'vs10gbseries', 'Fiesta Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10gbseries.png', 'PSE', '2025-08-28 14:37:16'),
(158, 'vs20olympgrace', 'Grace of Ebisu', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20olympgrace.png', 'PSE', '2025-08-28 14:37:16'),
(159, 'vs20sugarcoins', 'Viking Forge', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20sugarcoins.png', 'PSE', '2025-08-28 14:37:16'),
(160, 'vs25quadwolf', 'Wolf Gold 4 Pack', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25quadwolf.png', 'PSE', '2025-08-28 14:37:16'),
(161, 'vswaysmonkey', '3 Dancing Monkeys', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmonkey.png', 'PSE', '2025-08-28 14:37:16'),
(162, 'vs20mkrush', 'Wukong Rush', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20mkrush.png', 'PSE', '2025-08-28 14:37:16'),
(163, 'vs20goldfever', 'Gems Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20goldfever.png', 'PSE', '2025-08-28 14:37:16'),
(164, 'vs20dhdice', 'The Dog House Dice Show', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20dhdice.png', 'PSE', '2025-08-28 14:37:16'),
(165, 'vs10firestrike', 'Fire Strike', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10firestrike.png', 'PSE', '2025-08-28 14:37:16'),
(166, 'vswayswildgang', 'The Wild Gang', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayswildgang.png', 'PSE', '2025-08-28 14:37:16'),
(167, 'vswayslofhero', 'Legend of Heroes Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayslofhero.png', 'PSE', '2025-08-28 14:37:16'),
(168, 'vswaysbkingasc', 'Buffalo King Untamed Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysbkingasc.png', 'PSE', '2025-08-28 14:37:16'),
(169, 'vswaysfltdrg', 'Floating Dragon Hold & Spin Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysfltdrg.png', 'PSE', '2025-08-28 14:37:16'),
(170, 'vswayssevenc', '7 Clovers of Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayssevenc.png', 'PSE', '2025-08-28 14:37:16'),
(171, 'vs5ultrab', 'Ultra Burn', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5ultrab.png', 'PSE', '2025-08-28 14:37:16'),
(172, 'vs40cosmiccash', 'Cosmic Cash', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40cosmiccash.png', 'PSE', '2025-08-28 14:37:16'),
(173, 'vs4096magician', 'Magician\'s Secrets', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs4096magician.png', 'PSE', '2025-08-28 14:37:16'),
(174, 'vs20gembondx', 'Bow of Artemis', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20gembondx.png', 'PSE', '2025-08-28 14:37:16'),
(175, 'vs20forge', 'Forge of Olympus', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20forge.png', 'PSE', '2025-08-28 14:37:16'),
(176, 'vs5t8goldfp', '777 Rush', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5t8goldfp.png', 'PSE', '2025-08-28 14:37:16'),
(177, 'vs50fatfrogs', 'Tiny Toads', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50fatfrogs.png', 'PSE', '2025-08-28 14:37:16'),
(178, 'vs12bgrbspl', 'Bigger Bass Splash', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs12bgrbspl.png', 'PSE', '2025-08-28 14:37:16'),
(179, 'vswaysargonts', 'Argonauts', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysargonts.png', 'PSE', '2025-08-28 14:37:16'),
(180, 'vs10tictac', 'Tic Tac Take', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10tictac.png', 'PSE', '2025-08-28 14:37:16'),
(181, 'vs9aztecgemsdx', 'Aztec Gems Deluxe', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs9aztecgemsdx.png', 'PSE', '2025-08-28 14:37:16'),
(182, 'vs20popbottles', 'Ice Mints', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20popbottles.png', 'PSE', '2025-08-28 14:37:16'),
(183, 'vs20phoenixf', 'Phoenix Forge', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20phoenixf.png', 'PSE', '2025-08-28 14:37:16'),
(184, 'vs20octobeer', 'Octobeer Fortunes', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20octobeer.png', 'PSE', '2025-08-28 14:37:16'),
(185, 'cs5moneyroll', 'Money Roll', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/cs5moneyroll.png', 'PSE', '2025-08-28 14:37:16'),
(186, 'vswaysfuryodin', 'Fury of Odin Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysfuryodin.png', 'PSE', '2025-08-28 14:37:16'),
(187, 'vs25luckwildpb', 'Lucky\'s Wild Pub', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25luckwildpb.png', 'PSE', '2025-08-28 14:37:16'),
(188, 'vs20excalibur', 'Excalibur Unleashed', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20excalibur.png', 'PSE', '2025-08-28 14:37:16'),
(189, 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20hburnhs.png', 'PSE', '2025-08-28 14:37:16'),
(190, 'vs20candyblitz', 'Candy Blitz', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20candyblitz.png', 'PSE', '2025-08-28 14:37:16'),
(191, 'vswayssw', 'Starlight Wins', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayssw.png', 'PSE', '2025-08-28 14:37:16'),
(192, 'vswaysbrickhos', 'Brick House Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysbrickhos.png', 'PSE', '2025-08-28 14:37:16'),
(193, 'vs20terrorv', 'Cash Elevator', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20terrorv.png', 'PSE', '2025-08-28 14:37:16'),
(194, 'vs20laughluck', 'Happy Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20laughluck.png', 'PSE', '2025-08-28 14:37:16'),
(195, 'vs15eyeofspart', 'Eye of Spartacus', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs15eyeofspart.png', 'PSE', '2025-08-28 14:37:16'),
(196, 'vs20aztecgates', 'Gates of Aztec', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20aztecgates.png', 'PSE', '2025-08-28 14:37:16'),
(197, 'vs5super7', 'Super 7s ', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5super7.png', 'PSE', '2025-08-28 14:37:16'),
(198, 'vs5magicdoor', '6 Jokers', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5magicdoor.png', 'PSE', '2025-08-28 14:37:16'),
(199, 'vs1dragon8', '888 Dragons', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1dragon8.png', 'PSE', '2025-08-28 14:37:16'),
(200, 'vs20cbrhst', 'Cyber Heist', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20cbrhst.png', 'PSE', '2025-08-28 14:37:16'),
(201, 'vs20alieninv', 'Alien Invaders', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20alieninv.png', 'PSE', '2025-08-28 14:37:16'),
(202, 'vswaysaztec', 'Aztec Gems Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysaztec.png', 'PSE', '2025-08-28 14:37:16'),
(203, 'vs20midas2', 'Hand of Midas 2', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20midas2.png', 'PSE', '2025-08-28 14:37:16'),
(204, 'vswayscharms', '5 Frozen Charms Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayscharms.png', 'PSE', '2025-08-28 14:37:16'),
(205, 'vs10bbfmission', 'Big Bass Mission Fishin\'', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbfmission.png', 'PSE', '2025-08-28 14:37:16'),
(206, 'vs10spiritadv', 'Spirit of Adventure', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10spiritadv.png', 'PSE', '2025-08-28 14:37:16'),
(207, 'vs10bbsplxmas', 'Big Bass Christmas Bash', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbsplxmas.png', 'PSE', '2025-08-28 14:37:16'),
(208, 'vs10piggybank', 'You Can Piggy Bank On It', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10piggybank.png', 'PSE', '2025-08-28 14:37:16'),
(209, 'vs20rhino', 'Great Rhino', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20rhino.png', 'PSE', '2025-08-28 14:37:16'),
(210, 'vs25goldrexp', 'Majestic Express - Gold Run', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25goldrexp.png', 'PSE', '2025-08-28 14:37:16'),
(211, 'vs10powerlines', 'Peak Power', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10powerlines.png', 'PSE', '2025-08-28 14:37:16'),
(212, 'vs20fparty2', 'Fruit Party 2', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20fparty2.png', 'PSE', '2025-08-28 14:37:16'),
(213, 'vs20midas', 'The Hand of Midas', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20midas.png', 'PSE', '2025-08-28 14:37:16'),
(214, 'vs25scarabqueen', 'John Hunter and the Tomb of the Scarab Queen', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25scarabqueen.png', 'PSE', '2025-08-28 14:37:16'),
(215, 'vswayscryscav', 'Crystal Caverns Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayscryscav.png', 'PSE', '2025-08-28 14:37:16'),
(216, 'vs243lions', '5 Lions', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243lions.png', 'PSE', '2025-08-28 14:37:16'),
(217, 'vswaysyumyum', 'Yum Yum Powerways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysyumyum.png', 'PSE', '2025-08-28 14:37:16'),
(218, 'vs20santawonder', 'Santa\'s Wonderland', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20santawonder.png', 'PSE', '2025-08-28 14:37:16'),
(219, 'vswaysstrlght', 'Fortunes of Aztec', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysstrlght.png', 'PSE', '2025-08-28 14:37:16'),
(220, 'vs10bhallbnza2', 'Big Bass Halloween 2', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bhallbnza2.png', 'PSE', '2025-08-28 14:37:16'),
(221, 'vs20gemfirefor', 'Gem Fire Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20gemfirefor.png', 'PSE', '2025-08-28 14:37:16'),
(222, 'vs10cowgold', 'Cowboys Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10cowgold.png', 'PSE', '2025-08-28 14:37:16'),
(223, 'vs20drgbless', 'Dragon Hero', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20drgbless.png', 'PSE', '2025-08-28 14:37:16'),
(224, 'vs20porbs', 'Santa\'s Great Gifts', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20porbs.png', 'PSE', '2025-08-28 14:37:16'),
(225, 'vs10bbrttr', 'Big Bass Return to the Races', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbrttr.png', 'PSE', '2025-08-28 14:37:16'),
(226, 'vs20dhcluster', 'Twilight Princess', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20dhcluster.png', 'PSE', '2025-08-28 14:37:16'),
(227, 'vs10bbextreme', 'Big Bass Amazon Xtreme', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbextreme.png', 'PSE', '2025-08-28 14:37:16'),
(228, 'vswayskrakenmw', 'Release the Kraken Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayskrakenmw.png', 'PSE', '2025-08-28 14:37:16'),
(229, 'vs5ultra', 'Ultra Hold and Spin', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5ultra.png', 'PSE', '2025-08-28 14:37:16'),
(230, 'vs20eightdragons', '8 Dragons', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20eightdragons.png', 'PSE', '2025-08-28 14:37:16'),
(231, 'vs20heartcleo', 'Heart of Cleopatra', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20heartcleo.png', 'PSE', '2025-08-28 14:37:16'),
(232, 'vs25rlbank', 'Reel Banks', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25rlbank.png', 'PSE', '2025-08-28 14:37:16'),
(233, 'vs10bbbrlact', 'Big Bass Bonanza - Reel Action', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbbrlact.png', 'PSE', '2025-08-28 14:37:16'),
(234, 'vs20trswild2', 'Black Bull', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20trswild2.png', 'PSE', '2025-08-28 14:37:16'),
(235, 'vs5bb3reeler', 'Big Bass Bonanza 3 Reeler', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5bb3reeler.png', 'PSE', '2025-08-28 14:37:16'),
(236, 'vs4096robber', 'Robber Strike', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs4096robber.png', 'PSE', '2025-08-28 14:37:16'),
(237, 'vs50safariking', 'Safari King', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50safariking.png', 'PSE', '2025-08-28 14:37:16'),
(238, 'vs20leprechaun', 'Leprechaun Song', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20leprechaun.png', 'PSE', '2025-08-28 14:37:16'),
(239, 'vs432congocash', 'Congo Cash', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs432congocash.png', 'PSE', '2025-08-28 14:37:16'),
(240, 'vs25tigerwar', 'The Tiger Warrior', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25tigerwar.png', 'PSE', '2025-08-28 14:37:16'),
(241, 'vs576treasures', 'Wild Wild Riches', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs576treasures.png', 'PSE', '2025-08-28 14:37:16'),
(242, 'vs20bchprty', 'Wild Beach Party', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20bchprty.png', 'PSE', '2025-08-28 14:37:16'),
(243, 'vswaysmegwghts', 'Sumo Supreme Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmegwghts.png', 'PSE', '2025-08-28 14:37:16'),
(244, 'vswaysbufstamp', 'Wild Wildebeest Wins', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysbufstamp.png', 'PSE', '2025-08-28 14:37:16'),
(245, 'vs20cjcluster', 'Candy Jar Clusters', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20cjcluster.png', 'PSE', '2025-08-28 14:37:16'),
(246, 'vs25chilli', 'Chilli Heat', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25chilli.png', 'PSE', '2025-08-28 14:37:16'),
(247, 'vswaysfltdrgny', 'Floating Dragon New Year Festival Ultra Megaways Hold & Spin', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysfltdrgny.png', 'PSE', '2025-08-28 14:37:16'),
(248, 'vswaysultrcoin', 'Cowboy Coins', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysultrcoin.png', 'PSE', '2025-08-28 14:37:16'),
(249, 'vs25aztecking', 'Aztec King', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25aztecking.png', 'PSE', '2025-08-28 14:37:16'),
(250, 'vs25rio', 'Heart of Rio', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25rio.png', 'PSE', '2025-08-28 14:37:16'),
(251, 'vs20bigdawgs', 'The Big Dawgs', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20bigdawgs.png', 'PSE', '2025-08-28 14:37:16'),
(252, 'vs20superlanche', 'Monster Superlanche', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20superlanche.png', 'PSE', '2025-08-28 14:37:16'),
(253, 'vswaysconcoll', 'Firebird Spirit - Connect & Collect', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysconcoll.png', 'PSE', '2025-08-28 14:37:16'),
(254, 'vs10dgold88', 'Dragon Gold 88', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10dgold88.png', 'PSE', '2025-08-28 14:37:16'),
(255, 'vs20supermania', 'Supermania', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20supermania.png', 'PSE', '2025-08-28 14:37:16'),
(256, 'vswaysbbb', 'Big Bass Bonanza Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysbbb.png', 'PSE', '2025-08-28 14:37:16'),
(257, 'vs20mahjxbnz', 'Mahjong X', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20mahjxbnz.png', 'PSE', '2025-08-28 14:37:16'),
(258, 'vs40spartaking', 'Spartan King', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40spartaking.png', 'PSE', '2025-08-28 14:37:16'),
(259, 'vs1024gmayhem', 'Gorilla Mayhem', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1024gmayhem.png', 'PSE', '2025-08-28 14:37:16'),
(260, 'vs40infwild', 'Infective Wild', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40infwild.png', 'PSE', '2025-08-28 14:37:16'),
(261, 'vs10trail', 'Mustang Trail', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10trail.png', 'PSE', '2025-08-28 14:37:16'),
(262, 'vs5jokerjc', 'Joker\'s Jewels Cash', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5jokerjc.png', 'PSE', '2025-08-28 14:37:16'),
(263, 'vswaysvlcgds', 'Volcano Goddess', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysvlcgds.png', 'PSE', '2025-08-28 14:37:16'),
(264, 'rla', 'Roulette', 'PR', 'PR', 'CB', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/rla.png', 'PSE', '2025-08-28 14:37:16'),
(265, 'vs20fatbook', 'Book of Monsters', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20fatbook.png', 'PSE', '2025-08-28 14:37:16'),
(266, 'vs10bbxext', 'Big Bass Xmas Xtreme', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbxext.png', 'PSE', '2025-08-28 14:37:16'),
(267, 'vswaysbbhas', 'Big Bass Hold & Spinner Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysbbhas.png', 'PSE', '2025-08-28 14:37:16'),
(268, 'vs10fdsnake', 'Floating Dragon - Year of the Snake', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10fdsnake.png', 'PSE', '2025-08-28 14:37:16'),
(269, 'vs20trsbox', 'Treasure Wild', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20trsbox.png', 'PSE', '2025-08-28 14:37:16'),
(270, 'vs1024mahjpanda', 'Mahjong Panda', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1024mahjpanda.png', 'PSE', '2025-08-28 14:37:16'),
(271, 'vswaysloki', 'Revenge of Loki Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysloki.png', 'PSE', '2025-08-28 14:37:16'),
(272, 'vs20gravity', 'Gravity Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20gravity.png', 'PSE', '2025-08-28 14:37:16'),
(273, 'vs243goldfor', '888 Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243goldfor.png', 'PSE', '2025-08-28 14:37:16'),
(274, 'vs243queenie', 'Queenie', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243queenie.png', 'PSE', '2025-08-28 14:37:16'),
(275, 'vs25mustang', 'Mustang Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25mustang.png', 'PSE', '2025-08-28 14:37:16'),
(276, 'vs25wildspells', 'Wild Spells', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25wildspells.png', 'PSE', '2025-08-28 14:37:16'),
(277, 'vs1tigers', 'Triple Tigers', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1tigers.png', 'PSE', '2025-08-28 14:37:16'),
(278, 'vs10firestrike2', 'Fire Strike 2', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10firestrike2.png', 'PSE', '2025-08-28 14:37:16'),
(279, 'vswaysmoneyman', 'The Money Men Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmoneyman.png', 'PSE', '2025-08-28 14:37:16'),
(280, 'vs5wfrog', 'Wealthy Frog', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5wfrog.png', 'PSE', '2025-08-28 14:37:16'),
(281, 'vswaysfirewmw', 'Blazing Wilds Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysfirewmw.png', 'PSE', '2025-08-28 14:37:16'),
(282, 'vs50aladdin', '3 Genie Wishes', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50aladdin.png', 'PSE', '2025-08-28 14:37:16'),
(283, 'vs1024lionsd', '5 Lions Dance', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1024lionsd.png', 'PSE', '2025-08-28 14:37:16'),
(284, 'vswayselements', 'Elemental Gems Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayselements.png', 'PSE', '2025-08-28 14:37:16'),
(285, 'vs10gizagods', 'Gods of Giza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10gizagods.png', 'PSE', '2025-08-28 14:37:16');
INSERT INTO `tb_gamelist` (`cuid`, `game_vendor`, `game_name`, `game_provider_original`, `game_provider`, `game_type`, `game_status`, `game_image`, `providerapi`, `created_at`) VALUES
(286, 'vs1024fortune', 'Fortune Ace', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1024fortune.png', 'PSE', '2025-08-28 14:37:16'),
(287, 'vs20splmystery', 'Spellbinding Mystery', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20splmystery.png', 'PSE', '2025-08-28 14:37:16'),
(288, 'vs25btygold', 'Bounty Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25btygold.png', 'PSE', '2025-08-28 14:37:16'),
(289, 'vswayschilheat', 'Chilli Heat Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayschilheat.png', 'PSE', '2025-08-28 14:37:16'),
(290, 'vs50juicyfr', 'Juicy Fruits', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50juicyfr.png', 'PSE', '2025-08-28 14:37:16'),
(291, 'vs50jucier', 'Sky Bounty', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50jucier.png', 'PSE', '2025-08-28 14:37:16'),
(292, 'vs20kraken', 'Release the Kraken', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20kraken.png', 'PSE', '2025-08-28 14:37:16'),
(293, 'vs243caishien', 'Caishen\'s Cash', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243caishien.png', 'PSE', '2025-08-28 14:37:16'),
(294, 'vs10bbbnz', 'Big Bass Day at the Races', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bbbnz.png', 'PSE', '2025-08-28 14:37:16'),
(295, 'vs10diamondrgh', 'Temple Guardians', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10diamondrgh.png', 'PSE', '2025-08-28 14:37:16'),
(296, 'vs5himalaw', 'Himalayan Wild', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5himalaw.png', 'PSE', '2025-08-28 14:37:16'),
(297, 'vs243chargebull', 'Raging Bull', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243chargebull.png', 'PSE', '2025-08-28 14:37:16'),
(298, 'vs20bison', 'Release the Bison', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20bison.png', 'PSE', '2025-08-28 14:37:16'),
(299, 'vs20drtgold', 'Drill That Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20drtgold.png', 'PSE', '2025-08-28 14:37:16'),
(300, 'vs5drhs', 'Dragon Hot Hold & Spin', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5drhs.png', 'PSE', '2025-08-28 14:37:16'),
(301, 'vs243empcaishen', 'Emperor Caishen', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243empcaishen.png', 'PSE', '2025-08-28 14:37:16'),
(302, 'vswaysaztecgm', 'Fortune of Aztec', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysaztecgm.png', 'PSE', '2025-08-28 14:37:16'),
(303, 'vswaysmegahays', 'Barnyard Megahays Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmegahays.png', 'PSE', '2025-08-28 14:37:16'),
(304, 'vs20emptybank', 'Empty the Bank', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20emptybank.png', 'PSE', '2025-08-28 14:37:16'),
(305, 'vswayswest', 'Mystic Chief', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayswest.png', 'PSE', '2025-08-28 14:37:16'),
(306, 'vs20bermuda', 'Bermuda Riches', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20bermuda.png', 'PSE', '2025-08-28 14:37:16'),
(307, 'vs10fortnpig', 'Greedy Fortune Pig', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10fortnpig.png', 'PSE', '2025-08-28 14:37:16'),
(308, 'vs1masterjoker', 'Master Joker', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1masterjoker.png', 'PSE', '2025-08-28 14:37:16'),
(309, 'vs20rainbowrsh', 'Santa\'s Xmas Rush', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20rainbowrsh.png', 'PSE', '2025-08-28 14:37:16'),
(310, 'vs243dancingpar', 'Dance Party', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243dancingpar.png', 'PSE', '2025-08-28 14:37:16'),
(311, 'vs10tut', 'Book Of Tut Respin', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10tut.png', 'PSE', '2025-08-28 14:37:16'),
(312, 'vswaystut', 'Book of Tut Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaystut.png', 'PSE', '2025-08-28 14:37:16'),
(313, 'vswaysmltchmgw', 'Raging Waterfall Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmltchmgw.png', 'PSE', '2025-08-28 14:37:16'),
(314, 'vswayswerewolf', 'Curse of the Werewolf Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayswerewolf.png', 'PSE', '2025-08-28 14:37:16'),
(315, 'vs20clspwrndg', 'Sweet Powernudge', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20clspwrndg.png', 'PSE', '2025-08-28 14:37:16'),
(316, 'vs20clustcol', 'Sweet Kingdom', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20clustcol.png', 'PSE', '2025-08-28 14:37:16'),
(317, 'vs7fire88', 'Fire 88', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs7fire88.png', 'PSE', '2025-08-28 14:37:16'),
(318, 'vswaysmfreya', 'Might of Freya Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmfreya.png', 'PSE', '2025-08-28 14:37:16'),
(319, 'vs25wildies', 'Wildies', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25wildies.png', 'PSE', '2025-08-28 14:37:16'),
(320, 'vs20kraken2', 'Release the Kraken 2', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20kraken2.png', 'PSE', '2025-08-28 14:37:16'),
(321, 'vs40wanderw', 'Wild Depths', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40wanderw.png', 'PSE', '2025-08-28 14:37:16'),
(322, 'vs15diamond', 'Diamond Strike', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs15diamond.png', 'PSE', '2025-08-28 14:37:16'),
(323, 'vswayssavlgnd', 'Savannah Legend', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayssavlgnd.png', 'PSE', '2025-08-28 14:37:16'),
(324, 'vs25pyramid', 'Pyramid King', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25pyramid.png', 'PSE', '2025-08-28 14:37:16'),
(325, 'vs25kfruit', 'Aztec Blaze', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25kfruit.png', 'PSE', '2025-08-28 14:37:16'),
(326, 'vs10fangfree', 'Fangtastic Freespins', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10fangfree.png', 'PSE', '2025-08-28 14:37:16'),
(327, 'vs243fortune', 'Caishen\'s Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243fortune.png', 'PSE', '2025-08-28 14:37:16'),
(328, 'vs50mightra', 'Might of Ra', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50mightra.png', 'PSE', '2025-08-28 14:37:16'),
(329, 'vs25mmouse', 'Money Mouse', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25mmouse.png', 'PSE', '2025-08-28 14:37:16'),
(330, 'vs20wolfie', 'Greedy Wolf', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20wolfie.png', 'PSE', '2025-08-28 14:37:16'),
(331, 'vs20jewelparty', 'Jewel Rush', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20jewelparty.png', 'PSE', '2025-08-28 14:37:16'),
(332, 'vs5jokerdice', 'Joker\'s Jewel Dice', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5jokerdice.png', 'PSE', '2025-08-28 14:37:16'),
(333, 'vswayswwjoker', 'Wild Wild Joker', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayswwjoker.png', 'PSE', '2025-08-28 14:37:16'),
(334, 'vs5littlegem', 'Little Gem Hold and Spin', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5littlegem.png', 'PSE', '2025-08-28 14:37:16'),
(335, 'vs25archer', 'Fire Archer', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25archer.png', 'PSE', '2025-08-28 14:37:16'),
(336, 'vs20mesmult', 'Yeti Quest', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20mesmult.png', 'PSE', '2025-08-28 14:37:16'),
(337, 'vs10coffee', 'Coffee Wild', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10coffee.png', 'PSE', '2025-08-28 14:37:16'),
(338, 'vs1600drago', 'Drago - Jewels of Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1600drago.png', 'PSE', '2025-08-28 14:37:16'),
(339, 'vs20fourmc', 'Candy Corner', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20fourmc.png', 'PSE', '2025-08-28 14:37:16'),
(340, 'vswayscashconv', 'Running Sushi', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayscashconv.png', 'PSE', '2025-08-28 14:37:16'),
(341, 'vs20gatotfury', 'Gatot Kaca\'s Fury', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20gatotfury.png', 'PSE', '2025-08-28 14:37:16'),
(342, 'vswaysbook', 'Book of Golden Sands', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysbook.png', 'PSE', '2025-08-28 14:37:16'),
(343, 'vs20chickdrop', 'Chicken Drop', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20chickdrop.png', 'PSE', '2025-08-28 14:37:16'),
(344, 'vs1fortunetree', 'Tree of Riches', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1fortunetree.png', 'PSE', '2025-08-28 14:37:16'),
(345, 'vs10nudgeit', 'Rise of Giza PowerNudge', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10nudgeit.png', 'PSE', '2025-08-28 14:37:16'),
(346, 'vswaysfreezet', 'Eternal Empress - Freeze Time', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysfreezet.png', 'PSE', '2025-08-28 14:37:16'),
(347, 'vs243fdragon', 'Fortune Dragon', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243fdragon.png', 'PSE', '2025-08-28 14:37:16'),
(348, 'vs20mergedwndw', 'Blade & Fangs', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20mergedwndw.png', 'PSE', '2025-08-28 14:37:16'),
(349, 'vs40bigjuan', 'Big Juan', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40bigjuan.png', 'PSE', '2025-08-28 14:37:16'),
(350, 'vs5hotburn', 'Hot to Burn', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5hotburn.png', 'PSE', '2025-08-28 14:37:16'),
(351, 'vs20sparta', 'Shield Of Sparta', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20sparta.png', 'PSE', '2025-08-28 14:37:16'),
(352, 'vs10strawberry', 'Strawberry Cocktail', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10strawberry.png', 'PSE', '2025-08-28 14:37:16'),
(353, 'vs20superx', 'Super X', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20superx.png', 'PSE', '2025-08-28 14:37:16'),
(354, 'vs25peking', 'Peking Luck', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25peking.png', 'PSE', '2025-08-28 14:37:16'),
(355, 'vswaysexpandng', 'Castle of Fire', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysexpandng.png', 'PSE', '2025-08-28 14:37:16'),
(356, 'vs25pfarmfp', 'Pig Farm', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25pfarmfp.png', 'PSE', '2025-08-28 14:37:16'),
(357, 'vs20multiup', 'Wheel O\'Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20multiup.png', 'PSE', '2025-08-28 14:37:16'),
(358, 'vs10wildtut', 'Mysterious Egypt', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10wildtut.png', 'PSE', '2025-08-28 14:37:16'),
(359, 'vs5spjokfp', 'Code of Cairo', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5spjokfp.png', 'PSE', '2025-08-28 14:37:16'),
(360, 'vs10amm', 'Amazing Money Machine', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10amm.png', 'PSE', '2025-08-28 14:37:16'),
(361, 'vs25tigeryear', 'Lucky New Year - Tiger Treasures', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25tigeryear.png', 'PSE', '2025-08-28 14:37:16'),
(362, 'vs5tdragresk', 'Dino Drop', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5tdragresk.png', 'PSE', '2025-08-28 14:37:16'),
(363, 'vs10luckcharm', 'Lucky, Grace & Charm', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10luckcharm.png', 'PSE', '2025-08-28 14:37:16'),
(364, 'vs1024moonsh', 'Moonshot', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1024moonsh.png', 'PSE', '2025-08-28 14:37:16'),
(365, 'vswaysmorient', 'Mystery of the Orient', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmorient.png', 'PSE', '2025-08-28 14:37:16'),
(366, 'vs576hokkwolf', 'Hokkaido Wolf', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs576hokkwolf.png', 'PSE', '2025-08-28 14:37:16'),
(367, 'vs25bkofkngdm', 'Book Of Kingdoms', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25bkofkngdm.png', 'PSE', '2025-08-28 14:37:16'),
(368, 'vs10runes', 'Gates of Valhalla', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10runes.png', 'PSE', '2025-08-28 14:37:16'),
(369, 'vs1money', 'Money Money Money', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1money.png', 'PSE', '2025-08-28 14:37:16'),
(370, 'vs10frontrun', 'Odds On Winner', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10frontrun.png', 'PSE', '2025-08-28 14:37:16'),
(371, 'vs25gldox', 'Golden Ox', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25gldox.png', 'PSE', '2025-08-28 14:37:16'),
(372, 'bca', 'Baccarat', 'PR', 'PR', 'CB', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/bca.png', 'PSE', '2025-08-28 14:37:16'),
(373, 'vs20trswild3', 'Aztec Treasure Hunt', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20trswild3.png', 'PSE', '2025-08-28 14:37:16'),
(374, 'vs20gobnudge', 'Goblin Heist Powernudge', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20gobnudge.png', 'PSE', '2025-08-28 14:37:16'),
(375, 'vs5jjwild', 'Joker\'s Jewels Wild', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5jjwild.png', 'PSE', '2025-08-28 14:37:16'),
(376, 'vs25wolfgold', 'Wolf Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25wolfgold.png', 'PSE', '2025-08-28 14:37:16'),
(377, 'vs20maskgame', 'Cash Chips', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20maskgame.png', 'PSE', '2025-08-28 14:37:16'),
(378, 'vs10madame', 'Madame Destiny', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10madame.png', 'PSE', '2025-08-28 14:37:16'),
(379, 'vs20ultim5', 'The Ultimate 5', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20ultim5.png', 'PSE', '2025-08-28 14:37:16'),
(380, 'vs20magicpot', 'The Magic Cauldron', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20magicpot.png', 'PSE', '2025-08-28 14:37:16'),
(381, 'vswaysmodfr', 'Ancient Island Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysmodfr.png', 'PSE', '2025-08-28 14:37:16'),
(382, 'vs25ultwolgol', 'Wolf Gold Ultimate', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25ultwolgol.png', 'PSE', '2025-08-28 14:37:16'),
(383, 'vs20plsmcannon', 'Aztec Smash', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20plsmcannon.png', 'PSE', '2025-08-28 14:37:16'),
(384, 'vs9piggybank', 'Piggy Bank Bills', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs9piggybank.png', 'PSE', '2025-08-28 14:37:16'),
(385, 'vs10bblpop', 'Bubble Pop', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bblpop.png', 'PSE', '2025-08-28 14:37:16'),
(386, 'vs20clustext', 'Gears of Horus', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20clustext.png', 'PSE', '2025-08-28 14:37:16'),
(387, 'vswayshive', 'Star Bounty', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayshive.png', 'PSE', '2025-08-28 14:37:16'),
(388, 'vswaysbblitz', 'Money Stacks Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysbblitz.png', 'PSE', '2025-08-28 14:37:16'),
(389, 'vs20crankit', 'Crank it Up', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20crankit.png', 'PSE', '2025-08-28 14:37:16'),
(390, 'vswaysbewaretd', 'Beware The Deep Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysbewaretd.png', 'PSE', '2025-08-28 14:37:16'),
(391, 'vs20stickysymbol', 'The Great Stick-up', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20stickysymbol.png', 'PSE', '2025-08-28 14:37:16'),
(392, 'cs3w', 'Diamonds are Forever 3 Lines', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/cs3w.png', 'PSE', '2025-08-28 14:37:16'),
(393, 'vs1024butterfly', 'Jade Butterfly', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1024butterfly.png', 'PSE', '2025-08-28 14:37:16'),
(394, 'vs243fortseren', 'Greek Gods', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243fortseren.png', 'PSE', '2025-08-28 14:37:16'),
(395, 'vswayscashsurg', 'Cash Surge', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayscashsurg.png', 'PSE', '2025-08-28 14:37:16'),
(396, 'vs20mparty', 'Wild Hop & Drop', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20mparty.png', 'PSE', '2025-08-28 14:37:16'),
(397, 'vs20bblitz', 'Money Stacks', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20bblitz.png', 'PSE', '2025-08-28 14:37:16'),
(398, 'vs20lightblitz', 'Blitz Super Wheel', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20lightblitz.png', 'PSE', '2025-08-28 14:37:16'),
(399, 'vswayseternity', 'Diamonds of Egypt', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayseternity.png', 'PSE', '2025-08-28 14:37:16'),
(400, 'vs10gdchalleng', '8 Golden Dragon Challenge', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10gdchalleng.png', 'PSE', '2025-08-28 14:37:16'),
(401, 'vs20swordofares', 'Sword of Ares', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20swordofares.png', 'PSE', '2025-08-28 14:37:16'),
(402, 'vs9outlaw', 'Pirates Pub', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs9outlaw.png', 'PSE', '2025-08-28 14:37:16'),
(403, 'vswaysredqueen', 'The Red Queen', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysredqueen.png', 'PSE', '2025-08-28 14:37:16'),
(404, 'vs25asgard', 'Asgard', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25asgard.png', 'PSE', '2025-08-28 14:37:16'),
(405, 'cs3irishcharms', 'Irish Charms', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/cs3irishcharms.png', 'PSE', '2025-08-28 14:37:16'),
(406, 'vs40wildrun', 'Fortune Hit\'n Roll', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40wildrun.png', 'PSE', '2025-08-28 14:37:16'),
(407, 'vs20jjjack', 'Jumbo Safari', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20jjjack.png', 'PSE', '2025-08-28 14:37:16'),
(408, 'vs20powerwild', 'Mystery Mice', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20powerwild.png', 'PSE', '2025-08-28 14:37:16'),
(409, 'vs40rainbowr', 'Rainbow Reels', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40rainbowr.png', 'PSE', '2025-08-28 14:37:16'),
(410, 'vswaysalterego', 'The Alter Ego', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysalterego.png', 'PSE', '2025-08-28 14:37:16'),
(411, 'bjma', 'Multihand Blackjack', 'PR', 'PR', 'CB', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/bjma.png', 'PSE', '2025-08-28 14:37:16'),
(412, 'vs10bookazteck', 'Book of Aztec King', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bookazteck.png', 'PSE', '2025-08-28 14:37:16'),
(413, 'vs10jokerhot', 'Joker\'s Jewels Hot', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10jokerhot.png', 'PSE', '2025-08-28 14:37:16'),
(414, 'vs20ltng', 'Pinup Girls', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20ltng.png', 'PSE', '2025-08-28 14:37:16'),
(415, 'vs25badge', 'Badge Blitz', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25badge.png', 'PSE', '2025-08-28 14:37:16'),
(416, 'vswayspearls', 'Wild Wild Pearls', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayspearls.png', 'PSE', '2025-08-28 14:37:16'),
(417, 'vs20underground', 'Down the Rails', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20underground.png', 'PSE', '2025-08-28 14:37:16'),
(418, 'vs40cleoeye', 'Eye of Cleopatra', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40cleoeye.png', 'PSE', '2025-08-28 14:37:16'),
(419, 'vs25goldpig', 'Golden Pig', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25goldpig.png', 'PSE', '2025-08-28 14:37:16'),
(420, 'vswaysstrwild', 'Candy Stars', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysstrwild.png', 'PSE', '2025-08-28 14:37:16'),
(421, 'vs10bookoftut', 'Book of Tut', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bookoftut.png', 'PSE', '2025-08-28 14:37:16'),
(422, 'vs20honey', 'Honey Honey Honey', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20honey.png', 'PSE', '2025-08-28 14:37:16'),
(423, 'vs1fufufu', 'Fu Fu Fu', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1fufufu.png', 'PSE', '2025-08-28 14:37:16'),
(424, 'vs1024temuj', 'Temujin Treasures', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1024temuj.png', 'PSE', '2025-08-28 14:37:16'),
(425, 'vs10noodles', 'Oodles of Noodles', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10noodles.png', 'PSE', '2025-08-28 14:37:16'),
(426, 'vs40stckwldlvl', 'Ripe Rewards', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40stckwldlvl.png', 'PSE', '2025-08-28 14:37:16'),
(427, 'vs20medusast', 'Medusa\'s Stone', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20medusast.png', 'PSE', '2025-08-28 14:37:16'),
(428, 'vs9madmonkey', 'Monkey Madness', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs9madmonkey.png', 'PSE', '2025-08-28 14:37:16'),
(429, 'vs10emotiwins', 'Emotiwins', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10emotiwins.png', 'PSE', '2025-08-28 14:37:16'),
(430, 'vs25dwarves_new', 'Dwarven Gold Deluxe', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25dwarves_new.png', 'PSE', '2025-08-28 14:37:16'),
(431, 'vs20smugcove', 'Smugglers Cove', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20smugcove.png', 'PSE', '2025-08-28 14:37:16'),
(432, 'vs9chen', 'Master Chen\'s Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs9chen.png', 'PSE', '2025-08-28 14:37:16'),
(433, 'vs20hstgldngt', 'Heist for the Golden Nuggets', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20hstgldngt.png', 'PSE', '2025-08-28 14:37:16'),
(434, 'vs25vegas', 'Vegas Nights', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25vegas.png', 'PSE', '2025-08-28 14:37:16'),
(435, 'vs25bomb', 'Bomb Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25bomb.png', 'PSE', '2025-08-28 14:37:16'),
(436, 'vswaysftropics', 'Frozen Tropics', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysftropics.png', 'PSE', '2025-08-28 14:37:16'),
(437, 'vs1mjokfp', 'Master Gems', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1mjokfp.png', 'PSE', '2025-08-28 14:37:16'),
(438, 'vswaysjapan', 'Starlight Princess Pachi', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysjapan.png', 'PSE', '2025-08-28 14:37:16'),
(439, 'vs20yotdk', 'Year Of The Dragon King', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20yotdk.png', 'PSE', '2025-08-28 14:37:16'),
(440, 'vswayscongcash', 'Congo Cash XL', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayscongcash.png', 'PSE', '2025-08-28 14:37:16'),
(441, 'vs25kingdoms', '3 Kingdoms - Battle of Red Cliffs', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25kingdoms.png', 'PSE', '2025-08-28 14:37:16'),
(442, 'vs20colcashzone', 'Colossal Cash Zone', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20colcashzone.png', 'PSE', '2025-08-28 14:37:16'),
(443, 'vs25walker', 'Wild Walker', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25walker.png', 'PSE', '2025-08-28 14:37:16'),
(444, 'vs20mtreasure', 'Pirate Golden Age', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20mtreasure.png', 'PSE', '2025-08-28 14:37:16'),
(445, 'vs20earthquake', 'Cyclops Smash', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20earthquake.png', 'PSE', '2025-08-28 14:37:16'),
(446, 'vs117649starz', 'Starz Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs117649starz.png', 'PSE', '2025-08-28 14:37:16'),
(447, 'vs20nilefort', 'Nile Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20nilefort.png', 'PSE', '2025-08-28 14:37:16'),
(448, 'vs20shootstars', 'Heroic Spins', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20shootstars.png', 'PSE', '2025-08-28 14:37:16'),
(449, 'vs20cashmachine', 'Cash Box', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20cashmachine.png', 'PSE', '2025-08-28 14:37:16'),
(450, 'vs20daydead', 'Day of Dead', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20daydead.png', 'PSE', '2025-08-28 14:37:16'),
(451, 'vs18mashang', 'Treasure Horse', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs18mashang.png', 'PSE', '2025-08-28 14:37:16'),
(452, 'vs10fireice', 'Escape the Pyramid - Fire & Ice', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10fireice.png', 'PSE', '2025-08-28 14:37:16'),
(453, 'vs25goldrush', 'Gold Rush', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25goldrush.png', 'PSE', '2025-08-28 14:37:16'),
(454, 'vs20sbpnudge', 'Aztec Powernudge', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20sbpnudge.png', 'PSE', '2025-08-28 14:37:16'),
(455, 'vs50jfmulthold', 'Juicy Fruits Multihold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50jfmulthold.png', 'PSE', '2025-08-28 14:37:16'),
(456, 'vs1024dtiger', 'The Dragon Tiger', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1024dtiger.png', 'PSE', '2025-08-28 14:37:16'),
(457, 'vs20sknights', 'The Knight King', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20sknights.png', 'PSE', '2025-08-28 14:37:16'),
(458, 'vs10mayangods', 'John Hunter And The Mayan Gods', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10mayangods.png', 'PSE', '2025-08-28 14:37:16'),
(459, 'vs20egypttrs', 'Egyptian Fortunes', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20egypttrs.png', 'PSE', '2025-08-28 14:37:16'),
(460, 'vs9ridelightng', 'Ride the Lightning', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs9ridelightng.png', 'PSE', '2025-08-28 14:37:16'),
(461, 'vs5drmystery', 'Dragon Kingdom - Eyes of Fire', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5drmystery.png', 'PSE', '2025-08-28 14:37:16'),
(462, 'vs5spjoker', 'Super Joker', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5spjoker.png', 'PSE', '2025-08-28 14:37:16'),
(463, 'vs9hotroll', 'Hot Chilli', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs9hotroll.png', 'PSE', '2025-08-28 14:37:16'),
(464, 'vs20vegasmagic', 'Vegas Magic', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20vegasmagic.png', 'PSE', '2025-08-28 14:37:16'),
(465, 'vs243nudge4gold', 'Hellvis Wild', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243nudge4gold.png', 'PSE', '2025-08-28 14:37:16'),
(466, 'vs20beefed', 'Fat Panda', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20beefed.png', 'PSE', '2025-08-28 14:37:16'),
(467, 'vswaysraghex', 'Tundra\'s Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysraghex.png', 'PSE', '2025-08-28 14:37:16'),
(468, 'vs20treesot', 'Trees of Treasure', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20treesot.png', 'PSE', '2025-08-28 14:37:16'),
(469, 'vs10fonzofff', 'Fonzo\'s Feline Fortunes', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10fonzofff.png', 'PSE', '2025-08-28 14:37:16'),
(470, 'vs10bburger', 'Big Burger Load it up with Xtra Cheese', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10bburger.png', 'PSE', '2025-08-28 14:37:16'),
(471, 'vs5jellyc', 'Jelly Candy', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5jellyc.png', 'PSE', '2025-08-28 14:37:16'),
(472, 'vs10egrich', 'Queen of Gods', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10egrich.png', 'PSE', '2025-08-28 14:37:16'),
(473, 'vs10crownfire', 'Crown of Fire', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10crownfire.png', 'PSE', '2025-08-28 14:37:16'),
(474, 'vs10dkinghp', 'Dragon King Hot Pots', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10dkinghp.png', 'PSE', '2025-08-28 14:37:16'),
(475, 'vs20rainbowg', 'Rainbow Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20rainbowg.png', 'PSE', '2025-08-28 14:37:16'),
(476, 'vs20mmmelon', 'Mighty Munching Melons', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20mmmelon.png', 'PSE', '2025-08-28 14:37:16'),
(477, 'vs20stickypos', 'Ice Lobster', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20stickypos.png', 'PSE', '2025-08-28 14:37:16'),
(478, 'vswayshexhaus', 'Rise of Pyramids', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayshexhaus.png', 'PSE', '2025-08-28 14:37:16'),
(479, 'vs10mmm', 'Magic Money Maze', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10mmm.png', 'PSE', '2025-08-28 14:37:16'),
(480, 'vs20devilic', 'Devilicious', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20devilic.png', 'PSE', '2025-08-28 14:37:16'),
(481, 'vs10egypt', 'Ancient Egypt', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10egypt.png', 'PSE', '2025-08-28 14:37:16'),
(482, 'vs40pirgold', 'Pirate Gold Deluxe', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40pirgold.png', 'PSE', '2025-08-28 14:37:16'),
(483, 'vs20theights', 'Towering Fortunes', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20theights.png', 'PSE', '2025-08-28 14:37:16'),
(484, 'vs20lvlup', 'Pub Kings', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20lvlup.png', 'PSE', '2025-08-28 14:37:16'),
(485, 'vs10hottb7fs', 'Hot to Burn 7 Deadly Free Spins', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10hottb7fs.png', 'PSE', '2025-08-28 14:37:16'),
(486, 'vs10threestar', 'Three Star Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10threestar.png', 'PSE', '2025-08-28 14:37:16'),
(487, 'vs25spgldways', 'Secret City Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25spgldways.png', 'PSE', '2025-08-28 14:37:16'),
(488, 'vs10booklight', 'John Hunter and Galileo\'s Secrets', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10booklight.png', 'PSE', '2025-08-28 14:37:16'),
(489, 'vs25lagoon', 'Great Lagoon', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25lagoon.png', 'PSE', '2025-08-28 14:37:16'),
(490, 'vs20chicken', 'The Great Chicken Escape', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20chicken.png', 'PSE', '2025-08-28 14:37:16'),
(491, 'vswaysjkrdrop', 'Tropical Tiki', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysjkrdrop.png', 'PSE', '2025-08-28 14:37:16'),
(492, 'vs5balidragon', 'Bali Dragon', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5balidragon.png', 'PSE', '2025-08-28 14:37:16'),
(493, 'vs7pigs', '7 Piggies', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs7pigs.png', 'PSE', '2025-08-28 14:37:16'),
(494, 'vs25bullfiesta', 'Bull Fiesta', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25bullfiesta.png', 'PSE', '2025-08-28 14:37:16'),
(495, 'vs20hercpeg', 'Hercules and Pegasus', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20hercpeg.png', 'PSE', '2025-08-28 14:37:16'),
(496, 'vs20stckwldsc', 'Pot of Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20stckwldsc.png', 'PSE', '2025-08-28 14:37:16'),
(497, 'vs25newyear', 'Lucky New Year', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25newyear.png', 'PSE', '2025-08-28 14:37:16'),
(498, 'vs20lampinf', 'Lamp Of Infinity', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20lampinf.png', 'PSE', '2025-08-28 14:37:16'),
(499, 'vs88hockattack', 'Hockey Attack', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs88hockattack.png', 'PSE', '2025-08-28 14:37:16'),
(500, 'vs20aladdinsorc', 'Aladdin and the Sorcerer', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20aladdinsorc.png', 'PSE', '2025-08-28 14:37:16'),
(501, 'vs25jokrace', 'Joker Race', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25jokrace.png', 'PSE', '2025-08-28 14:37:16'),
(502, 'bnadvanced', 'Dragon Bonus Baccarat', 'PR', 'PR', 'CB', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/bnadvanced.png', 'PSE', '2025-08-28 14:37:16'),
(503, 'vswaysspltsym', 'Dwarf & Dragon', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysspltsym.png', 'PSE', '2025-08-28 14:37:16'),
(504, 'vs100firehot', 'Fire Hot 100', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs100firehot.png', 'PSE', '2025-08-28 14:37:16'),
(505, 'vs10goldfish', 'Fishin Reels', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10goldfish.png', 'PSE', '2025-08-28 14:37:16'),
(506, 'vs5firehot', 'Fire Hot 5', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5firehot.png', 'PSE', '2025-08-28 14:37:16'),
(507, 'vs20leprexmas', 'Leprechaun Carol', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20leprexmas.png', 'PSE', '2025-08-28 14:37:16'),
(508, 'vs40madwheel', 'The Wild Machine', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40madwheel.png', 'PSE', '2025-08-28 14:37:16'),
(509, 'vs1dragon888', 'Plushie Wins', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1dragon888.png', 'PSE', '2025-08-28 14:37:16'),
(510, 'vs10dyndigd', 'Dynamite Diggin Doug', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10dyndigd.png', 'PSE', '2025-08-28 14:37:16'),
(511, 'vs25spotz', 'Knight Hot Spotz', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25spotz.png', 'PSE', '2025-08-28 14:37:16'),
(512, 'vs25samurai', 'Rise of Samurai', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25samurai.png', 'PSE', '2025-08-28 14:37:16'),
(513, 'vs25davinci', 'Da Vinci\'s Treasure', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25davinci.png', 'PSE', '2025-08-28 14:37:16'),
(514, 'vswaysfrbugs', 'Frogs & Bugs', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysfrbugs.png', 'PSE', '2025-08-28 14:37:16'),
(515, 'vs10jnmntzma', 'Jane Hunter and the Mask of Montezuma', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10jnmntzma.png', 'PSE', '2025-08-28 14:37:16'),
(516, 'vs4096mystery', 'Mysterious', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs4096mystery.png', 'PSE', '2025-08-28 14:37:16'),
(517, 'vs1ball', 'Lucky Dragon Ball', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs1ball.png', 'PSE', '2025-08-28 14:37:16'),
(518, 'vswaysoldminer', 'Old Gold Miner Megaways', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysoldminer.png', 'PSE', '2025-08-28 14:37:16'),
(519, 'vs20ekingrr', 'Emerald King Rainbow Road', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20ekingrr.png', 'PSE', '2025-08-28 14:37:16'),
(520, 'vs20piggybank', 'Piggy Bankers', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20piggybank.png', 'PSE', '2025-08-28 14:37:16'),
(521, 'vs25journey', 'Journey to the West', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25journey.png', 'PSE', '2025-08-28 14:37:16'),
(522, 'vs20irishcrown', 'Irish Crown', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20irishcrown.png', 'PSE', '2025-08-28 14:37:16'),
(523, 'vs50kingkong', 'Mighty Kong', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50kingkong.png', 'PSE', '2025-08-28 14:37:16'),
(524, 'vs3train', 'Gold Train', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs3train.png', 'PSE', '2025-08-28 14:37:16'),
(525, 'vs20wildboost', 'Wild Booster', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20wildboost.png', 'PSE', '2025-08-28 14:37:16'),
(526, 'vs10vampwolf', 'Vampires vs Wolves', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10vampwolf.png', 'PSE', '2025-08-28 14:37:16'),
(527, 'vs40voodoo', 'Voodoo Magic', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40voodoo.png', 'PSE', '2025-08-28 14:37:16'),
(528, 'vswaysincwnd', 'Gold Oasis', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysincwnd.png', 'PSE', '2025-08-28 14:37:16'),
(529, 'vswaysseastory', 'Sea Fantasy', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysseastory.png', 'PSE', '2025-08-28 14:37:16'),
(530, 'vs243discolady', 'Disco Lady', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243discolady.png', 'PSE', '2025-08-28 14:37:16'),
(531, 'vs20loksriches', 'Loki\'s Riches', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20loksriches.png', 'PSE', '2025-08-28 14:37:16'),
(532, 'vswayswwhex', 'Wild Wild Bananas', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayswwhex.png', 'PSE', '2025-08-28 14:37:16'),
(533, 'vs20forgewilds', 'Forging Wilds', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20forgewilds.png', 'PSE', '2025-08-28 14:37:16'),
(534, 'vs25dragonkingdom', 'Dragon Kingdom', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25dragonkingdom.png', 'PSE', '2025-08-28 14:37:16'),
(535, 'vs20clreacts', 'Moleionaire', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20clreacts.png', 'PSE', '2025-08-28 14:37:16'),
(536, 'vs25jokerking', 'Joker King', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25jokerking.png', 'PSE', '2025-08-28 14:37:16'),
(537, 'vs50pixie', 'Pixie Wings', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50pixie.png', 'PSE', '2025-08-28 14:37:16'),
(538, 'vs15fairytale', 'Fairytale Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs15fairytale.png', 'PSE', '2025-08-28 14:37:16'),
(539, 'vs50dmdcascade', 'Diamond Cascade', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50dmdcascade.png', 'PSE', '2025-08-28 14:37:16'),
(540, 'vs50chinesecharms', 'Lucky Dragons', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50chinesecharms.png', 'PSE', '2025-08-28 14:37:16'),
(541, 'vs20wildpix', 'Wild Pixies', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20wildpix.png', 'PSE', '2025-08-28 14:37:16'),
(542, 'vs7776secrets', 'Aztec Treasure', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs7776secrets.png', 'PSE', '2025-08-28 14:37:16'),
(543, 'vs5strh', 'Striking Hot 5', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5strh.png', 'PSE', '2025-08-28 14:37:16'),
(544, 'vs5gemstone', 'Gemstone', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5gemstone.png', 'PSE', '2025-08-28 14:37:16'),
(545, 'vs10snakeladd', 'Snakes and Ladders Megadice', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10snakeladd.png', 'PSE', '2025-08-28 14:37:16'),
(546, 'vs20eking', 'Emerald King', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20eking.png', 'PSE', '2025-08-28 14:37:16'),
(547, 'vs5hotbmult', 'Hot To Burn Multiplier', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5hotbmult.png', 'PSE', '2025-08-28 14:37:16'),
(548, 'vs40frrainbow', 'Fruit Rainbow', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40frrainbow.png', 'PSE', '2025-08-28 14:37:16'),
(549, 'vs25sea', 'Great Reef', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25sea.png', 'PSE', '2025-08-28 14:37:16'),
(550, 'vs50northgard', 'North Guardians', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50northgard.png', 'PSE', '2025-08-28 14:37:16'),
(551, 'vs20elevclust', 'Gem Elevator', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20elevclust.png', 'PSE', '2025-08-28 14:37:16'),
(552, 'vs13g', 'Devil\'s 13', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs13g.png', 'PSE', '2025-08-28 14:37:16'),
(553, 'vs10kingofdth', 'Kingdom of the Dead', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10kingofdth.png', 'PSE', '2025-08-28 14:37:16'),
(554, 'vs25safari', 'Hot Safari', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25safari.png', 'PSE', '2025-08-28 14:37:16'),
(555, 'vs20jhunter', 'Jackpot Hunter', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20jhunter.png', 'PSE', '2025-08-28 14:37:16'),
(556, 'vs7monkeys', '7 Monkeys', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs7monkeys.png', 'PSE', '2025-08-28 14:37:16'),
(557, 'vs40streetracer', 'Street Racer', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40streetracer.png', 'PSE', '2025-08-28 14:37:16'),
(558, 'vs10ddcbells', 'Ding Dong Christmas Bells', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10ddcbells.png', 'PSE', '2025-08-28 14:37:16'),
(559, 'vs25xmasparty', 'Penguins Christmas Party Time', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25xmasparty.png', 'PSE', '2025-08-28 14:37:16'),
(560, 'vs20lobseafd', 'Lobster Bob\'s Sea Food and Win It', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20lobseafd.png', 'PSE', '2025-08-28 14:37:16'),
(561, 'vs243koipond', 'Koi Pond', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243koipond.png', 'PSE', '2025-08-28 14:37:16'),
(562, 'vswayscfglory', 'Chase For Glory', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswayscfglory.png', 'PSE', '2025-08-28 14:37:16'),
(563, 'vs20bl', 'Busy Bees', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20bl.png', 'PSE', '2025-08-28 14:37:16'),
(564, 'vs20santa', 'Santa', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20santa.png', 'PSE', '2025-08-28 14:37:16'),
(565, 'vs10snakeeyes', 'Snakes & Ladders - Snake Eyes', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10snakeeyes.png', 'PSE', '2025-08-28 14:37:16'),
(566, 'vs10starpirate', 'Star Pirates Code', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10starpirate.png', 'PSE', '2025-08-28 14:37:16'),
(567, 'vs40demonpots', 'Demon Pots', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40demonpots.png', 'PSE', '2025-08-28 14:37:16'),
(568, 'vs50hercules', 'Hercules Son of Zeus', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs50hercules.png', 'PSE', '2025-08-28 14:37:16'),
(569, 'vs10chkchase', 'Chicken Chase', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10chkchase.png', 'PSE', '2025-08-28 14:37:16'),
(570, 'vs8magicjourn', 'Magic Journey', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs8magicjourn.png', 'PSE', '2025-08-28 14:37:16'),
(571, 'vs20hotzone', 'African Elephant', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20hotzone.png', 'PSE', '2025-08-28 14:37:16'),
(572, 'vs20mvwild', 'Jasmine Dreams', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20mvwild.png', 'PSE', '2025-08-28 14:37:16'),
(573, 'vs40hotburnx', 'Hot To Burn Extreme', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40hotburnx.png', 'PSE', '2025-08-28 14:37:16'),
(574, 'vswaysbankbonz', 'Cash Bonanza', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaysbankbonz.png', 'PSE', '2025-08-28 14:37:16');
INSERT INTO `tb_gamelist` (`cuid`, `game_vendor`, `game_name`, `game_provider_original`, `game_provider`, `game_type`, `game_status`, `game_image`, `providerapi`, `created_at`) VALUES
(575, 'vs20fh', 'Fire Hot 20', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20fh.png', 'PSE', '2025-08-28 14:37:16'),
(576, 'vs100sh', 'Shining Hot 100', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs100sh.png', 'PSE', '2025-08-28 14:37:16'),
(577, 'vs10luckfort', 'Good Luck & Good Fortune', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs10luckfort.png', 'PSE', '2025-08-28 14:37:16'),
(578, 'vs20lcount', 'Gems of Serengeti', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20lcount.png', 'PSE', '2025-08-28 14:37:16'),
(579, 'vs20godiva', 'Lady Godiva', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20godiva.png', 'PSE', '2025-08-28 14:37:16'),
(580, 'vs5trdragons', 'Triple Dragons', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5trdragons.png', 'PSE', '2025-08-28 14:37:16'),
(581, 'vs243ckemp', 'Cheeky Emperor', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs243ckemp.png', 'PSE', '2025-08-28 14:37:16'),
(582, 'vs40firehot', 'Fire Hot 40', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40firehot.png', 'PSE', '2025-08-28 14:37:16'),
(583, 'vs20gorilla', 'Jungle Gorilla', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20gorilla.png', 'PSE', '2025-08-28 14:37:16'),
(584, 'vs20sh', 'Shining Hot 20', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20sh.png', 'PSE', '2025-08-28 14:37:16'),
(585, 'vs20lobcrab', 'Lobster Bob\'s Crazy Crab Shack', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs20lobcrab.png', 'PSE', '2025-08-28 14:37:16'),
(586, 'vswaystimber', 'Timber Stacks', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vswaystimber.png', 'PSE', '2025-08-28 14:37:16'),
(587, 'vs25gladiator', 'Wild Gladiator', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs25gladiator.png', 'PSE', '2025-08-28 14:37:16'),
(588, 'vs40sh', 'Shining Hot 40', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs40sh.png', 'PSE', '2025-08-28 14:37:16'),
(589, 'vs5sh', 'Shining Hot 5', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5sh.png', 'PSE', '2025-08-28 14:37:16'),
(590, '2201', 'High Flyer', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/2201.png', 'PSE', '2025-08-28 14:37:16'),
(591, '1301', 'Spaceman', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1301.png', 'PSE', '2025-08-28 14:37:16'),
(592, '801', 'Mega Wheel', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/801.png', 'PSE', '2025-08-28 14:37:16'),
(593, '1101', 'Sweet Bonanza CandyLand', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1101.png', 'PSE', '2025-08-28 14:37:16'),
(594, '402', 'Speed Baccarat 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/402.png', 'PSE', '2025-08-28 14:37:16'),
(595, '403', 'Speed Baccarat 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/403.png', 'PSE', '2025-08-28 14:37:16'),
(596, '441', 'Korean Speed Baccarat 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/441.png', 'PSE', '2025-08-28 14:37:16'),
(597, '701', 'Mega Sic Bo', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/701.png', 'PSE', '2025-08-28 14:37:16'),
(598, '449', 'Korean Speed Baccarat 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/449.png', 'PSE', '2025-08-28 14:37:16'),
(599, '211', 'Lucky 6 Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/211.png', 'PSE', '2025-08-28 14:37:16'),
(600, '401', 'Baccarat 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/401.png', 'PSE', '2025-08-28 14:37:16'),
(601, '459', 'Korean Speed Baccarat 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/459.png', 'PSE', '2025-08-28 14:37:16'),
(602, '204', 'Mega Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/204.png', 'PSE', '2025-08-28 14:37:16'),
(603, '450', 'Indonesia Speed Baccarat 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/450.png', 'PSE', '2025-08-28 14:37:16'),
(604, '442', 'Mega Baccarat', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/442.png', 'PSE', '2025-08-28 14:37:16'),
(605, '206', 'Roulette Macao', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/206.png', 'PSE', '2025-08-28 14:37:16'),
(606, '1001', 'Dragon Tiger', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1001.png', 'PSE', '2025-08-28 14:37:16'),
(607, '451', 'Thai Speed Baccarat 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/451.png', 'PSE', '2025-08-28 14:37:16'),
(608, '227', 'Roulette 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/227.png', 'PSE', '2025-08-28 14:37:16'),
(609, '404', 'Baccarat 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/404.png', 'PSE', '2025-08-28 14:37:16'),
(610, '454', 'Privé Lounge Baccarat 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/454.png', 'PSE', '2025-08-28 14:37:16'),
(611, '2101', 'Mega Sic Bac', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/2101.png', 'PSE', '2025-08-28 14:37:16'),
(612, '488', 'Japanese Speed Baccarat 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/488.png', 'PSE', '2025-08-28 14:37:16'),
(613, '481', 'Chinese Speed Baccarat 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/481.png', 'PSE', '2025-08-28 14:37:16'),
(614, '460', 'Korean Baccarat 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/460.png', 'PSE', '2025-08-28 14:37:16'),
(615, '476', 'Korean Speed Baccarat 5', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/476.png', 'PSE', '2025-08-28 14:37:16'),
(616, '477', 'Korean Turbo Baccarat 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/477.png', 'PSE', '2025-08-28 14:37:16'),
(617, '489', 'Japanese Speed Baccarat 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/489.png', 'PSE', '2025-08-28 14:37:16'),
(618, '490', 'Japanese Speed Baccarat 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/490.png', 'PSE', '2025-08-28 14:37:16'),
(619, '482', 'Chinese Speed Baccarat 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/482.png', 'PSE', '2025-08-28 14:37:16'),
(620, '483', 'Chinese Speed Baccarat 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/483.png', 'PSE', '2025-08-28 14:37:16'),
(621, '479', 'Vietnamese Speed Baccarat 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/479.png', 'PSE', '2025-08-28 14:37:16'),
(622, '434', 'Fortune 6 Baccarat', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/434.png', 'PSE', '2025-08-28 14:37:16'),
(623, '433', 'Super 8 Baccarat', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/433.png', 'PSE', '2025-08-28 14:37:16'),
(624, '455', 'Privé Lounge Baccarat 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/455.png', 'PSE', '2025-08-28 14:37:16'),
(625, '456', 'Privé Lounge Baccarat 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/456.png', 'PSE', '2025-08-28 14:37:16'),
(626, '458', 'Privé Lounge Baccarat 5', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/458.png', 'PSE', '2025-08-28 14:37:16'),
(627, '466', 'Privé Lounge Baccarat 6', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/466.png', 'PSE', '2025-08-28 14:37:16'),
(628, '467', 'Privé Lounge Baccarat 7', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/467.png', 'PSE', '2025-08-28 14:37:16'),
(629, '468', 'Privé Lounge Baccarat 8', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/468.png', 'PSE', '2025-08-28 14:37:16'),
(630, '412', 'Speed Baccarat 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/412.png', 'PSE', '2025-08-28 14:37:16'),
(631, '414', 'Speed Baccarat 5', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/414.png', 'PSE', '2025-08-28 14:37:16'),
(632, '415', 'Speed Baccarat 6', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/415.png', 'PSE', '2025-08-28 14:37:16'),
(633, '431', 'Speed Baccarat 7', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/431.png', 'PSE', '2025-08-28 14:37:16'),
(634, '432', 'Speed Baccarat 8', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/432.png', 'PSE', '2025-08-28 14:37:16'),
(635, '430', 'Speed Baccarat 9', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/430.png', 'PSE', '2025-08-28 14:37:16'),
(636, '428', 'Speed Baccarat 10', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/428.png', 'PSE', '2025-08-28 14:37:16'),
(637, '424f', 'Speed Baccarat 11', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/424f.png', 'PSE', '2025-08-28 14:37:16'),
(638, '421f', 'Speed Baccarat 12', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/421f.png', 'PSE', '2025-08-28 14:37:16'),
(639, '438f', 'Speed Baccarat 13', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/438f.png', 'PSE', '2025-08-28 14:37:16'),
(640, '405', 'Speed Baccarat 14', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/405.png', 'PSE', '2025-08-28 14:37:16'),
(641, '427b', 'Speed Baccarat 15', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/427b.png', 'PSE', '2025-08-28 14:37:16'),
(642, '435', 'Speed Baccarat 16', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/435.png', 'PSE', '2025-08-28 14:37:16'),
(643, '439', 'Speed Baccarat 17', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/439.png', 'PSE', '2025-08-28 14:37:16'),
(644, '422f', 'Baccarat 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/422f.png', 'PSE', '2025-08-28 14:37:16'),
(645, '411', 'Baccarat 5', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/411.png', 'PSE', '2025-08-28 14:37:16'),
(646, '413', 'Baccarat 6', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/413.png', 'PSE', '2025-08-28 14:37:16'),
(647, '425', 'Baccarat 7', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/425.png', 'PSE', '2025-08-28 14:37:16'),
(648, '426b', 'Turbo Baccarat', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/426b.png', 'PSE', '2025-08-28 14:37:16'),
(649, '436', 'Baccarat 9', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/436.png', 'PSE', '2025-08-28 14:37:16'),
(650, '545', 'VIP Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/545.png', 'PSE', '2025-08-28 14:37:16'),
(651, '230a20', 'Roulette 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/230a20.png', 'PSE', '2025-08-28 14:37:16'),
(652, '240', 'PowerUP Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/240.png', 'PSE', '2025-08-28 14:37:16'),
(653, '203', 'Speed Roulette 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/203.png', 'PSE', '2025-08-28 14:37:16'),
(654, '225', 'Auto Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/225.png', 'PSE', '2025-08-28 14:37:16'),
(655, '266', 'Auto Roulette VIP', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/266.png', 'PSE', '2025-08-28 14:37:16'),
(656, '213', 'Korean Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/213.png', 'PSE', '2025-08-28 14:37:16'),
(657, '262', 'Vietnamese Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/262.png', 'PSE', '2025-08-28 14:37:16'),
(658, '237', 'Brazilian Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/237.png', 'PSE', '2025-08-28 14:37:16'),
(659, '222', 'German Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/222.png', 'PSE', '2025-08-28 14:37:16'),
(660, '224', 'Turkish Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/224.png', 'PSE', '2025-08-28 14:37:16'),
(661, '221', 'Russian Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/221.png', 'PSE', '2025-08-28 14:37:16'),
(662, '210', 'Auto Mega Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/210.png', 'PSE', '2025-08-28 14:37:16'),
(663, '226', 'Speed Auto Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/226.png', 'PSE', '2025-08-28 14:37:16'),
(664, '234', 'Roulette Latina', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/234.png', 'PSE', '2025-08-28 14:37:16'),
(665, '205', 'Speed Roulette 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/205.png', 'PSE', '2025-08-28 14:37:16'),
(666, '223', 'Italian Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/223.png', 'PSE', '2025-08-28 14:37:16'),
(667, '208', 'Turkish Mega Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/208.png', 'PSE', '2025-08-28 14:37:16'),
(668, '287', 'Mega Roulette - Brazilian', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/287.png', 'PSE', '2025-08-28 14:37:16'),
(669, '233', 'Romanian Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/233.png', 'PSE', '2025-08-28 14:37:16'),
(670, '1701', 'Treasure Island', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1701.png', 'PSE', '2025-08-28 14:37:16'),
(671, '1501', 'The Bingo Show', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1501.png', 'PSE', '2025-08-28 14:37:16'),
(672, '1601', 'Snake & Ladders Live', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1601.png', 'PSE', '2025-08-28 14:37:16'),
(673, '1401', 'Dice City', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1401.png', 'PSE', '2025-08-28 14:37:16'),
(674, '1024', 'Andar Bahar', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1024.png', 'PSE', '2025-08-28 14:37:16'),
(675, '491', 'Punto Banco Italia Tricolore', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/491.png', 'PSE', '2025-08-28 14:37:16'),
(676, '711a', 'SicBo', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/711a.png', 'PSE', '2025-08-28 14:37:16'),
(677, '4001', 'Football Blitz', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/4001.png', 'PSE', '2025-08-28 14:37:16'),
(678, '901', 'ONE Blackjack 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/901.png', 'PSE', '2025-08-28 14:37:16'),
(679, '721', 'Privé Lounge 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/721.png', 'PSE', '2025-08-28 14:37:16'),
(680, '546', 'VIP Blackjack 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/546.png', 'PSE', '2025-08-28 14:37:16'),
(681, '912', 'Bet Behind Pro Blackjack', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/912.png', 'PSE', '2025-08-28 14:37:16'),
(682, '902a9', 'ONE Blackjack 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/902a9.png', 'PSE', '2025-08-28 14:37:16'),
(683, '530', 'Blackjack 26', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/530.png', 'PSE', '2025-08-28 14:37:16'),
(684, '542', 'Blackjack 34', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/542.png', 'PSE', '2025-08-28 14:37:16'),
(685, '568', 'Speed Blackjack 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/568.png', 'PSE', '2025-08-28 14:37:16'),
(686, '607', 'Speed Blackjack 11', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/607.png', 'PSE', '2025-08-28 14:37:16'),
(687, '3003', 'BlackjackX 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3003.png', 'PSE', '2025-08-28 14:37:16'),
(688, '566', 'Speed Blackjack 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/566.png', 'PSE', '2025-08-28 14:37:16'),
(689, '3001', 'BlackjackX 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3001.png', 'PSE', '2025-08-28 14:37:16'),
(690, '722', 'Privé Lounge 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/722.png', 'PSE', '2025-08-28 14:37:16'),
(691, '3133', 'Korean BlackjackX 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3133.png', 'PSE', '2025-08-28 14:37:16'),
(692, '3134', 'Korean BlackjackX 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3134.png', 'PSE', '2025-08-28 14:37:16'),
(693, '3135', 'Korean BlackjackX 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3135.png', 'PSE', '2025-08-28 14:37:16'),
(694, '663', 'VIP Blackjack 7', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/663.png', 'PSE', '2025-08-28 14:37:16'),
(695, '543', 'Blackjack 35', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/543.png', 'PSE', '2025-08-28 14:37:16'),
(696, '517', 'Blackjack 10', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/517.png', 'PSE', '2025-08-28 14:37:16'),
(697, '541', 'Blackjack 33', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/541.png', 'PSE', '2025-08-28 14:37:16'),
(698, '305', 'Blackjack 16', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/305.png', 'PSE', '2025-08-28 14:37:16'),
(699, '552', 'Blackjack 49', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/552.png', 'PSE', '2025-08-28 14:37:16'),
(700, '647', 'Speed Blackjack 30', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/647.png', 'PSE', '2025-08-28 14:37:16'),
(701, '551', 'Blackjack 48', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/551.png', 'PSE', '2025-08-28 14:37:16'),
(702, '523', 'Blackjack 19 - Azure', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/523.png', 'PSE', '2025-08-28 14:37:16'),
(703, '3005', 'BlackjackX 5', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3005.png', 'PSE', '2025-08-28 14:37:16'),
(704, '567', 'Speed Blackjack 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/567.png', 'PSE', '2025-08-28 14:37:16'),
(705, '3006', 'BlackjackX 6', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3006.png', 'PSE', '2025-08-28 14:37:16'),
(706, '591', 'Speed Blackjack 6', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/591.png', 'PSE', '2025-08-28 14:37:16'),
(707, '3002', 'BlackjackX 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3002.png', 'PSE', '2025-08-28 14:37:16'),
(708, '550', 'VIP Blackjack 5', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/550.png', 'PSE', '2025-08-28 14:37:16'),
(709, '549', 'VIP Blackjack 4', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/549.png', 'PSE', '2025-08-28 14:37:16'),
(710, '548', 'VIP Blackjack 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/548.png', 'PSE', '2025-08-28 14:37:16'),
(711, '592', 'Speed Blackjack 7', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/592.png', 'PSE', '2025-08-28 14:37:16'),
(712, '3004', 'BlackjackX 4', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3004.png', 'PSE', '2025-08-28 14:37:16'),
(713, '604', 'Speed Blackjack 8', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/604.png', 'PSE', '2025-08-28 14:37:16'),
(714, '3008', 'BlackjackX 8', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3008.png', 'PSE', '2025-08-28 14:37:16'),
(715, '608', 'Speed Blackjack 12', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/608.png', 'PSE', '2025-08-28 14:37:16'),
(716, '3007', 'BlackjackX 7', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3007.png', 'PSE', '2025-08-28 14:37:16'),
(717, '525', 'Blackjack 21 - Azure', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/525.png', 'PSE', '2025-08-28 14:37:16'),
(718, '3014', 'BlackjackX 14', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3014.png', 'PSE', '2025-08-28 14:37:16'),
(719, '560', 'Blackjack 46', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/560.png', 'PSE', '2025-08-28 14:37:16'),
(720, '3015', 'BlackjackX 15', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3015.png', 'PSE', '2025-08-28 14:37:16'),
(721, '609', 'Speed Blackjack 14', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/609.png', 'PSE', '2025-08-28 14:37:16'),
(722, '554', 'Blackjack 51', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/554.png', 'PSE', '2025-08-28 14:37:16'),
(723, '528', 'Blackjack 24', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/528.png', 'PSE', '2025-08-28 14:37:16'),
(724, '553', 'Blackjack 50', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/553.png', 'PSE', '2025-08-28 14:37:16'),
(725, '516', 'Blackjack 9', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/516.png', 'PSE', '2025-08-28 14:37:16'),
(726, '569', 'Blackjack 77', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/569.png', 'PSE', '2025-08-28 14:37:16'),
(727, '529', 'Blackjack 25', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/529.png', 'PSE', '2025-08-28 14:37:16'),
(728, '536', 'Blackjack 30 - Azure', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/536.png', 'PSE', '2025-08-28 14:37:16'),
(729, '544', 'Blackjack 36', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/544.png', 'PSE', '2025-08-28 14:37:16'),
(730, '570', 'Blackjack 78', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/570.png', 'PSE', '2025-08-28 14:37:16'),
(731, '535', 'Blackjack 31 - Azure', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/535.png', 'PSE', '2025-08-28 14:37:16'),
(732, '540', 'Blackjack 32 - Azure', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/540.png', 'PSE', '2025-08-28 14:37:16'),
(733, '558', 'Blackjack 44', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/558.png', 'PSE', '2025-08-28 14:37:16'),
(734, '3016', 'BlackjackX 16', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3016.png', 'PSE', '2025-08-28 14:37:16'),
(735, '524', 'Blackjack 20 - Azure', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/524.png', 'PSE', '2025-08-28 14:37:16'),
(736, '3021', 'BlackjackX 21', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3021.png', 'PSE', '2025-08-28 14:37:16'),
(737, '539', 'Blackjack 27 - Azure', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/539.png', 'PSE', '2025-08-28 14:37:16'),
(738, '3009', 'BlackjackX 9', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3009.png', 'PSE', '2025-08-28 14:37:16'),
(739, '563', 'Blackjack 38', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/563.png', 'PSE', '2025-08-28 14:37:16'),
(740, '3010', 'BlackjackX 10', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3010.png', 'PSE', '2025-08-28 14:37:16'),
(741, '561', 'Blackjack 47', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/561.png', 'PSE', '2025-08-28 14:37:16'),
(742, '3024', 'BlackjackX 24', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3024.png', 'PSE', '2025-08-28 14:37:16'),
(743, '537', 'Blackjack 29 - Azure', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/537.png', 'PSE', '2025-08-28 14:37:16'),
(744, '3025', 'BlackjackX 25', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3025.png', 'PSE', '2025-08-28 14:37:16'),
(745, '527', 'Blackjack 23', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/527.png', 'PSE', '2025-08-28 14:37:16'),
(746, '304', 'Blackjack 15', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/304.png', 'PSE', '2025-08-28 14:37:16'),
(747, '303', 'Blackjack 14', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/303.png', 'PSE', '2025-08-28 14:37:16'),
(748, '605', 'Speed Blackjack 9', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/605.png', 'PSE', '2025-08-28 14:37:16'),
(749, '3017', 'BlackjackX 17', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3017.png', 'PSE', '2025-08-28 14:37:16'),
(750, '564', 'Blackjack 39', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/564.png', 'PSE', '2025-08-28 14:37:16'),
(751, '3018', 'BlackjackX 18', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3018.png', 'PSE', '2025-08-28 14:37:16'),
(752, '606', 'Speed Blackjack 10', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/606.png', 'PSE', '2025-08-28 14:37:16'),
(753, '3019', 'BlackjackX 19', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3019.png', 'PSE', '2025-08-28 14:37:16'),
(754, '565', 'Blackjack 40', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/565.png', 'PSE', '2025-08-28 14:37:16'),
(755, '3020', 'BlackjackX 20', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3020.png', 'PSE', '2025-08-28 14:37:16'),
(756, '594', 'Blackjack 52', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/594.png', 'PSE', '2025-08-28 14:37:16'),
(757, '3046', 'BlackjackX 11', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3046.png', 'PSE', '2025-08-28 14:37:16'),
(758, '595', 'Blackjack 53', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/595.png', 'PSE', '2025-08-28 14:37:16'),
(759, '3047', 'BlackjackX 12', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3047.png', 'PSE', '2025-08-28 14:37:16'),
(760, '596', 'Blackjack 54', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/596.png', 'PSE', '2025-08-28 14:37:16'),
(761, '3048', 'BlackjackX 13', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3048.png', 'PSE', '2025-08-28 14:37:16'),
(762, '597', 'Blackjack 55', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/597.png', 'PSE', '2025-08-28 14:37:16'),
(763, '3049', 'BlackjackX 22', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3049.png', 'PSE', '2025-08-28 14:37:16'),
(764, '593', 'Blackjack 56', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/593.png', 'PSE', '2025-08-28 14:37:16'),
(765, '559', 'Blackjack 45', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/559.png', 'PSE', '2025-08-28 14:37:16'),
(766, '3054', 'BlackjackX 29', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3054.png', 'PSE', '2025-08-28 14:37:16'),
(767, '555', 'Blackjack 41', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/555.png', 'PSE', '2025-08-28 14:37:16'),
(768, '3055', 'BlackjackX 30', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3055.png', 'PSE', '2025-08-28 14:37:16'),
(769, '556', 'Blackjack 42', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/556.png', 'PSE', '2025-08-28 14:37:16'),
(770, '557', 'Blackjack 43', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/557.png', 'PSE', '2025-08-28 14:37:16'),
(771, '538', 'Blackjack 28 - Azure', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/538.png', 'PSE', '2025-08-28 14:37:16'),
(772, '526', 'Blackjack 22', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/526.png', 'PSE', '2025-08-28 14:37:16'),
(773, '513', 'Blackjack 7', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/513.png', 'PSE', '2025-08-28 14:37:16'),
(774, '520', 'Blackjack 8', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/520.png', 'PSE', '2025-08-28 14:37:16'),
(775, '512', 'Blackjack 6', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/512.png', 'PSE', '2025-08-28 14:37:16'),
(776, '618', 'Blackjack 73', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/618.png', 'PSE', '2025-08-28 14:37:16'),
(777, '619', 'Blackjack 74', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/619.png', 'PSE', '2025-08-28 14:37:16'),
(778, '3050', 'BlackjackX 23', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3050.png', 'PSE', '2025-08-28 14:37:16'),
(779, '612', 'Blackjack 148', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/612.png', 'PSE', '2025-08-28 14:37:16'),
(780, '3051', 'BlackjackX 26', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3051.png', 'PSE', '2025-08-28 14:37:16'),
(781, '598', 'Blackjack 57', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/598.png', 'PSE', '2025-08-28 14:37:16'),
(782, '3052', 'BlackjackX 27', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3052.png', 'PSE', '2025-08-28 14:37:16'),
(783, '599', 'Blackjack 58', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/599.png', 'PSE', '2025-08-28 14:37:16'),
(784, '3053', 'BlackjackX 28', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3053.png', 'PSE', '2025-08-28 14:37:16'),
(785, '613', 'Blackjack 149', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/613.png', 'PSE', '2025-08-28 14:37:16'),
(786, '600', 'Blackjack 59', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/600.png', 'PSE', '2025-08-28 14:37:16'),
(787, '620', 'Blackjack 64', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/620.png', 'PSE', '2025-08-28 14:37:16'),
(788, '521', 'Blackjack 17 - Azure', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/521.png', 'PSE', '2025-08-28 14:37:16'),
(789, '515', 'Blackjack 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/515.png', 'PSE', '2025-08-28 14:37:16'),
(790, '519', 'Blackjack 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/519.png', 'PSE', '2025-08-28 14:37:16'),
(791, '522', 'Blackjack 18 - Azure', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/522.png', 'PSE', '2025-08-28 14:37:16'),
(792, '562', 'Blackjack 37', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/562.png', 'PSE', '2025-08-28 14:37:16'),
(793, '614', 'Speed Blackjack 17', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/614.png', 'PSE', '2025-08-28 14:37:16'),
(794, '601', 'Blackjack 60', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/601.png', 'PSE', '2025-08-28 14:37:16'),
(795, '602', 'Blackjack 61', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/602.png', 'PSE', '2025-08-28 14:37:16'),
(796, '603', 'Blackjack 62', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/603.png', 'PSE', '2025-08-28 14:37:16'),
(797, '590', 'Blackjack 63', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/590.png', 'PSE', '2025-08-28 14:37:16'),
(798, '621', 'Blackjack 65', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/621.png', 'PSE', '2025-08-28 14:37:16'),
(799, '626', 'Blackjack 70', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/626.png', 'PSE', '2025-08-28 14:37:16'),
(800, '301', 'Blackjack 11', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/301.png', 'PSE', '2025-08-28 14:37:16'),
(801, '511', 'Blackjack 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/511.png', 'PSE', '2025-08-28 14:37:16'),
(802, '518', 'Blackjack 5', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/518.png', 'PSE', '2025-08-28 14:37:16'),
(803, '302', 'Blackjack 12', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/302.png', 'PSE', '2025-08-28 14:37:16'),
(804, '514', 'Blackjack 4', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/514.png', 'PSE', '2025-08-28 14:37:16'),
(805, '615', 'Speed Blackjack 18', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/615.png', 'PSE', '2025-08-28 14:37:16'),
(806, '616', 'Blackjack 71', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/616.png', 'PSE', '2025-08-28 14:37:16'),
(807, '617', 'Blackjack 72', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/617.png', 'PSE', '2025-08-28 14:37:16'),
(808, '658', 'Blackjack 150', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/658.png', 'PSE', '2025-08-28 14:37:16'),
(809, '659', 'Speed Blackjack 20', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/659.png', 'PSE', '2025-08-28 14:37:16'),
(810, '660', 'Speed Blackjack 21', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/660.png', 'PSE', '2025-08-28 14:37:16'),
(811, '661', 'Speed Blackjack 22', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/661.png', 'PSE', '2025-08-28 14:37:16'),
(812, '641', 'Speed Blackjack 24', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/641.png', 'PSE', '2025-08-28 14:37:16'),
(813, '642', 'Speed Blackjack 25', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/642.png', 'PSE', '2025-08-28 14:37:16'),
(814, '643', 'Speed Blackjack 26', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/643.png', 'PSE', '2025-08-28 14:37:16'),
(815, '644', 'Speed Blackjack 27', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/644.png', 'PSE', '2025-08-28 14:37:16'),
(816, '645', 'Blackjack 151', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/645.png', 'PSE', '2025-08-28 14:37:16'),
(817, '646', 'Blackjack 152', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/646.png', 'PSE', '2025-08-28 14:37:16'),
(818, '681', 'Speed Blackjack 31', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/681.png', 'PSE', '2025-08-28 14:37:16'),
(819, '682', 'Speed Blackjack 32', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/682.png', 'PSE', '2025-08-28 14:37:16'),
(820, '687', 'Blackjack 135', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/687.png', 'PSE', '2025-08-28 14:37:16'),
(821, '688', 'Speed Blackjack 34', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/688.png', 'PSE', '2025-08-28 14:37:16'),
(822, '686', 'Speed Blackjack 35', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/686.png', 'PSE', '2025-08-28 14:37:16'),
(823, '684', 'Blackjack 136', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/684.png', 'PSE', '2025-08-28 14:37:16'),
(824, '685', 'Blackjack 137', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/685.png', 'PSE', '2025-08-28 14:37:16'),
(825, '370', 'Speed Blackjack 38', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/370.png', 'PSE', '2025-08-28 14:37:16'),
(826, '371', 'Speed Blackjack 39', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/371.png', 'PSE', '2025-08-28 14:37:16'),
(827, '779', 'Speed Blackjack 40', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/779.png', 'PSE', '2025-08-28 14:37:16'),
(828, '780', 'Speed Blackjack 41', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/780.png', 'PSE', '2025-08-28 14:37:16'),
(829, '781', 'Speed Blackjack 42', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/781.png', 'PSE', '2025-08-28 14:37:16'),
(830, '691', 'Blackjack 138', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/691.png', 'PSE', '2025-08-28 14:37:16'),
(831, '692', 'Blackjack 139', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/692.png', 'PSE', '2025-08-28 14:37:16'),
(832, '693', 'Blackjack 140', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/693.png', 'PSE', '2025-08-28 14:37:16'),
(833, '788', 'Speed Blackjack 51', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/788.png', 'PSE', '2025-08-28 14:37:16'),
(834, '377', 'Speed Blackjack 55', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/377.png', 'PSE', '2025-08-28 14:37:16'),
(835, '378', 'Speed Blackjack 56', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/378.png', 'PSE', '2025-08-28 14:37:16'),
(836, '379', 'Speed Blackjack 57', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/379.png', 'PSE', '2025-08-28 14:37:16'),
(837, '380', 'Speed Blackjack 58', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/380.png', 'PSE', '2025-08-28 14:37:16'),
(838, '381', 'Speed Blackjack 59 - Emerald', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/381.png', 'PSE', '2025-08-28 14:37:16'),
(839, '690', 'Blackjack 153', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/690.png', 'PSE', '2025-08-28 14:37:16'),
(840, '695', 'Blackjack 154', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/695.png', 'PSE', '2025-08-28 14:37:16'),
(841, '770', 'Speed Blackjack 43', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/770.png', 'PSE', '2025-08-28 14:37:16'),
(842, '772', 'Speed Blackjack 44', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/772.png', 'PSE', '2025-08-28 14:37:16'),
(843, '773', 'Speed Blackjack 45', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/773.png', 'PSE', '2025-08-28 14:37:16'),
(844, '774', 'Speed Blackjack 46', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/774.png', 'PSE', '2025-08-28 14:37:16'),
(845, '775', 'Speed Blackjack 47', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/775.png', 'PSE', '2025-08-28 14:37:16'),
(846, '784', 'Speed Blackjack 52', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/784.png', 'PSE', '2025-08-28 14:37:16'),
(847, '785', 'Speed Blackjack 53', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/785.png', 'PSE', '2025-08-28 14:37:16'),
(848, '786', 'Speed Blackjack 54', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/786.png', 'PSE', '2025-08-28 14:37:16'),
(849, '906', 'Brazilian ONE Blackjack', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/906.png', 'PSE', '2025-08-28 14:37:16'),
(850, '904', 'Turkish ONE Blackjack', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/904.png', 'PSE', '2025-08-28 14:37:16'),
(851, 'vs5triple8gold', '888 Gold', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5triple8gold.png', 'PSE', '2025-08-28 14:37:16'),
(852, '950', 'American Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/950.png', 'PSE', '2025-08-28 14:37:16'),
(853, '114', 'Asian Games', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/114.png', 'PSE', '2025-08-28 14:37:16'),
(854, '104', 'Baccarat Lobby', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/104.png', 'PSE', '2025-08-28 14:37:16'),
(855, '1320', 'Big Bass Crash', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1320.png', 'PSE', '2025-08-28 14:37:16'),
(856, '650', 'Blackjack 109', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/650.png', 'PSE', '2025-08-28 14:37:16'),
(857, '651', 'Blackjack 110', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/651.png', 'PSE', '2025-08-28 14:37:16'),
(858, '652', 'Blackjack 111', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/652.png', 'PSE', '2025-08-28 14:37:16'),
(859, '325', 'Blackjack 112', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/325.png', 'PSE', '2025-08-28 14:37:16'),
(860, '326', 'Blackjack 113', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/326.png', 'PSE', '2025-08-28 14:37:16'),
(861, '327', 'Blackjack 114', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/327.png', 'PSE', '2025-08-28 14:37:16'),
(862, '667', 'Blackjack 115', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/667.png', 'PSE', '2025-08-28 14:37:16'),
(863, '668', 'Blackjack 116', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/668.png', 'PSE', '2025-08-28 14:37:16'),
(864, '669', 'Blackjack 117', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/669.png', 'PSE', '2025-08-28 14:37:16'),
(865, '670', 'Blackjack 118', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/670.png', 'PSE', '2025-08-28 14:37:16'),
(866, '726', 'Blackjack 119', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/726.png', 'PSE', '2025-08-28 14:37:16'),
(867, '346', 'Blackjack 120 - The Club', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/346.png', 'PSE', '2025-08-28 14:37:16'),
(868, '727', 'Blackjack 121', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/727.png', 'PSE', '2025-08-28 14:37:16'),
(869, '728', 'Blackjack 122', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/728.png', 'PSE', '2025-08-28 14:37:16'),
(870, '729', 'Blackjack 123', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/729.png', 'PSE', '2025-08-28 14:37:16'),
(871, '732', 'Blackjack 124', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/732.png', 'PSE', '2025-08-28 14:37:16'),
(872, '733', 'Blackjack 125', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/733.png', 'PSE', '2025-08-28 14:37:16'),
(873, '931', 'Blackjack 127', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/931.png', 'PSE', '2025-08-28 14:37:16'),
(874, '932', 'Blackjack 128', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/932.png', 'PSE', '2025-08-28 14:37:16'),
(875, '933', 'Blackjack 129', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/933.png', 'PSE', '2025-08-28 14:37:16'),
(876, '1155', 'Blackjack 130', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1155.png', 'PSE', '2025-08-28 14:37:16'),
(877, '1157', 'Blackjack 131', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1157.png', 'PSE', '2025-08-28 14:37:16'),
(878, '1153', 'Blackjack 132', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1153.png', 'PSE', '2025-08-28 14:37:16'),
(879, '1154', 'Blackjack 133', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1154.png', 'PSE', '2025-08-28 14:37:16'),
(880, '1156', 'Blackjack 134', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1156.png', 'PSE', '2025-08-28 14:37:16'),
(881, '329', 'Blackjack 141', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/329.png', 'PSE', '2025-08-28 14:37:16'),
(882, '331', 'Blackjack 142', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/331.png', 'PSE', '2025-08-28 14:37:16'),
(883, '328', 'Blackjack 155', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/328.png', 'PSE', '2025-08-28 14:37:16'),
(884, '330', 'Blackjack 156', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/330.png', 'PSE', '2025-08-28 14:37:16'),
(885, '332', 'Blackjack 157', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/332.png', 'PSE', '2025-08-28 14:37:16'),
(886, '103', 'Blackjack Lobby', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/103.png', 'PSE', '2025-08-28 14:37:16'),
(887, '2701', 'Casino Hold’em', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/2701.png', 'PSE', '2025-08-28 14:37:16'),
(888, '110', 'D&W', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/110.png', 'PSE', '2025-08-28 14:37:16'),
(889, 'bndt', 'Dragon Tiger', 'PR', 'PR', 'CB', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/bndt.png', 'PSE', '2025-08-28 14:37:16'),
(890, '108', 'Dragon Tiger', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/108.png', 'PSE', '2025-08-28 14:37:16'),
(891, '270', 'Fortune Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/270.png', 'PSE', '2025-08-28 14:37:16'),
(892, '28401', 'French Roulette la Partage', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/28401.png', 'PSE', '2025-08-28 14:37:16'),
(893, '105', 'Gameshows', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/105.png', 'PSE', '2025-08-28 14:37:16'),
(894, '292', 'Immersive Roulette Deluxe', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/292.png', 'PSE', '2025-08-28 14:37:16');
INSERT INTO `tb_gamelist` (`cuid`, `game_vendor`, `game_name`, `game_provider_original`, `game_provider`, `game_type`, `game_status`, `game_image`, `providerapi`, `created_at`) VALUES
(895, '3252', 'Indonesian BlackjackX 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3252.png', 'PSE', '2025-08-28 14:37:16'),
(896, '3314', 'Indonesian BlackjackX 10', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3314.png', 'PSE', '2025-08-28 14:37:16'),
(897, '3315', 'Indonesian BlackjackX 11', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3315.png', 'PSE', '2025-08-28 14:37:16'),
(898, '3316', 'Indonesian BlackjackX 12', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3316.png', 'PSE', '2025-08-28 14:37:16'),
(899, '3317', 'Indonesian BlackjackX 13', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3317.png', 'PSE', '2025-08-28 14:37:16'),
(900, '3318', 'Indonesian BlackjackX 14', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3318.png', 'PSE', '2025-08-28 14:37:16'),
(901, '3319', 'Indonesian BlackjackX 15', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3319.png', 'PSE', '2025-08-28 14:37:16'),
(902, '3253', 'Indonesian BlackjackX 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3253.png', 'PSE', '2025-08-28 14:37:16'),
(903, '3254', 'Indonesian BlackjackX 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3254.png', 'PSE', '2025-08-28 14:37:16'),
(904, '3255', 'Indonesian BlackjackX 4', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3255.png', 'PSE', '2025-08-28 14:37:16'),
(905, '3256', 'Indonesian BlackjackX 5', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3256.png', 'PSE', '2025-08-28 14:37:16'),
(906, '3310', 'Indonesian BlackjackX 6', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3310.png', 'PSE', '2025-08-28 14:37:16'),
(907, '3311', 'Indonesian BlackjackX 7', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3311.png', 'PSE', '2025-08-28 14:37:16'),
(908, '3312', 'Indonesian BlackjackX 8', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3312.png', 'PSE', '2025-08-28 14:37:16'),
(909, '3313', 'Indonesian BlackjackX 9', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/3313.png', 'PSE', '2025-08-28 14:37:16'),
(910, '1160', 'Indonesian ONE Blackjack', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1160.png', 'PSE', '2025-08-28 14:37:16'),
(911, '298', 'Italian Mega Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/298.png', 'PSE', '2025-08-28 14:37:16'),
(912, '2601', 'Jacks or Better Draw Poker', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/2601.png', 'PSE', '2025-08-28 14:37:16'),
(913, '499', 'Korean Baccarat 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/499.png', 'PSE', '2025-08-28 14:37:16'),
(914, '1159', 'Korean ONE Blackjack', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1159.png', 'PSE', '2025-08-28 14:37:16'),
(915, '461', 'Korean Privé Lounge Baccarat 1', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/461.png', 'PSE', '2025-08-28 14:37:16'),
(916, '101', 'Live Casino Lobby', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/101.png', 'PSE', '2025-08-28 14:37:16'),
(917, '111', 'Other Promos', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/111.png', 'PSE', '2025-08-28 14:37:16'),
(918, '123', 'Power Ball', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/123.png', 'PSE', '2025-08-28 14:37:16'),
(919, '1146', 'Privé Lounge Blackjack 11', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1146.png', 'PSE', '2025-08-28 14:37:16'),
(920, '1147', 'Privé Lounge Blackjack 12', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1147.png', 'PSE', '2025-08-28 14:37:16'),
(921, '1148', 'Privé Lounge Blackjack 13', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1148.png', 'PSE', '2025-08-28 14:37:16'),
(922, '1149', 'Privé Lounge Blackjack 14', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/1149.png', 'PSE', '2025-08-28 14:37:16'),
(923, '28201', 'Privé Lounge Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/28201.png', 'PSE', '2025-08-28 14:37:16'),
(924, '102', 'Roulette Lobby', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/102.png', 'PSE', '2025-08-28 14:37:16'),
(925, '107', 'Sic Bo', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/107.png', 'PSE', '2025-08-28 14:37:16'),
(926, '109', 'Sic Bo & Dragon Tiger', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/109.png', 'PSE', '2025-08-28 14:37:16'),
(927, '851', 'Squeeze Baccarat', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/851.png', 'PSE', '2025-08-28 14:37:16'),
(928, '261', 'Thai Roulette', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/261.png', 'PSE', '2025-08-28 14:37:16'),
(929, '452', 'Thai Speed Baccarat 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/452.png', 'PSE', '2025-08-28 14:37:16'),
(930, 'vs5ultradice', 'Ultra Burn Dice', 'PR', 'PR', 'SL', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/vs5ultradice.png', 'PSE', '2025-08-28 14:37:16'),
(931, '480', 'Vietnamese Speed Baccarat 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/480.png', 'PSE', '2025-08-28 14:37:16'),
(932, '484', 'Vietnamese Speed Baccarat 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/484.png', 'PSE', '2025-08-28 14:37:16'),
(933, '730', 'Blackjack 75', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/730.png', 'PSE', '2025-08-28 14:37:16'),
(934, '731', 'Blackjack 76', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/731.png', 'PSE', '2025-08-28 14:37:16'),
(935, '676', 'Blackjack 79', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/676.png', 'PSE', '2025-08-28 14:37:16'),
(936, '677', 'Blackjack 80', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/677.png', 'PSE', '2025-08-28 14:37:16'),
(937, '678', 'Blackjack 81', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/678.png', 'PSE', '2025-08-28 14:37:16'),
(938, '673', 'Blackjack 82', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/673.png', 'PSE', '2025-08-28 14:37:16'),
(939, '674', 'Blackjack 83', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/674.png', 'PSE', '2025-08-28 14:37:16'),
(940, '675', 'Blackjack 84', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/675.png', 'PSE', '2025-08-28 14:37:16'),
(941, '683', 'Blackjack 85', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/683.png', 'PSE', '2025-08-28 14:37:16'),
(942, '369', 'Blackjack 86', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/369.png', 'PSE', '2025-08-28 14:37:16'),
(943, '776', 'Blackjack 87', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/776.png', 'PSE', '2025-08-28 14:37:16'),
(944, '777', 'Blackjack 88', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/777.png', 'PSE', '2025-08-28 14:37:16'),
(945, '778', 'Blackjack 89', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/778.png', 'PSE', '2025-08-28 14:37:16'),
(946, '767', 'Blackjack 90', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/767.png', 'PSE', '2025-08-28 14:37:16'),
(947, '768', 'Blackjack 91', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/768.png', 'PSE', '2025-08-28 14:37:16'),
(948, '769', 'Blackjack 92', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/769.png', 'PSE', '2025-08-28 14:37:16'),
(949, '771', 'Blackjack 93', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/771.png', 'PSE', '2025-08-28 14:37:16'),
(950, '694', 'Blackjack 94', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/694.png', 'PSE', '2025-08-28 14:37:16'),
(951, '696', 'Blackjack 95', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/696.png', 'PSE', '2025-08-28 14:37:16'),
(952, '787', 'Blackjack 97', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/787.png', 'PSE', '2025-08-28 14:37:16'),
(953, '789', 'Blackjack 98', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/789.png', 'PSE', '2025-08-28 14:37:16'),
(954, '790', 'Blackjack 99', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/790.png', 'PSE', '2025-08-28 14:37:16'),
(955, '791', 'Blackjack 100', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/791.png', 'PSE', '2025-08-28 14:37:16'),
(956, '792', 'Blackjack 101', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/792.png', 'PSE', '2025-08-28 14:37:16'),
(957, '372', 'Blackjack 102', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/372.png', 'PSE', '2025-08-28 14:37:16'),
(958, '373', 'Blackjack 103', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/373.png', 'PSE', '2025-08-28 14:37:16'),
(959, '374', 'Blackjack 104', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/374.png', 'PSE', '2025-08-28 14:37:16'),
(960, '375', 'Blackjack 105', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/375.png', 'PSE', '2025-08-28 14:37:16'),
(961, '376', 'Blackjack 106', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/376.png', 'PSE', '2025-08-28 14:37:16'),
(962, '689', 'Blackjack 107', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/689.png', 'PSE', '2025-08-28 14:37:16'),
(963, '698', 'Blackjack 108', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/698.png', 'PSE', '2025-08-28 14:37:16'),
(964, '662', 'VIP Blackjack 6', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/662.png', 'PSE', '2025-08-28 14:37:16'),
(965, '547', 'VIP Blackjack 2', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/547.png', 'PSE', '2025-08-28 14:37:16'),
(966, '664', 'VIP Blackjack 8', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/664.png', 'PSE', '2025-08-28 14:37:16'),
(967, '622', 'VIP Blackjack 9', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/622.png', 'PSE', '2025-08-28 14:37:16'),
(968, '623', 'VIP Blackjack 10', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/623.png', 'PSE', '2025-08-28 14:37:16'),
(969, '624', 'VIP Blackjack 11', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/624.png', 'PSE', '2025-08-28 14:37:16'),
(970, '625', 'VIP Blackjack 12', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/625.png', 'PSE', '2025-08-28 14:37:16'),
(971, '671', 'VIP Blackjack 13', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/671.png', 'PSE', '2025-08-28 14:37:16'),
(972, '672', 'VIP Blackjack 14', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/672.png', 'PSE', '2025-08-28 14:37:16'),
(973, '723', 'Privé Lounge 3', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/723.png', 'PSE', '2025-08-28 14:37:16'),
(974, '724', 'Privé Lounge 4', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/724.png', 'PSE', '2025-08-28 14:37:16'),
(975, '725', 'Privé Lounge 5', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/725.png', 'PSE', '2025-08-28 14:37:16'),
(976, '747', 'Privé Lounge Blackjack 6', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/747.png', 'PSE', '2025-08-28 14:37:16'),
(977, '748', 'Privé Lounge Blackjack 7', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/748.png', 'PSE', '2025-08-28 14:37:16'),
(978, '749', 'Privé Lounge Blackjack 8', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/749.png', 'PSE', '2025-08-28 14:37:16'),
(979, '750', 'Privé Lounge Blackjack 9', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/750.png', 'PSE', '2025-08-28 14:37:16'),
(980, '751', 'Privé Lounge Blackjack 10', 'PR', 'PR', 'LC', '1', 'https://ugy8n1py.snaslelv.biz/gs2c/common/game_pic/rec/325/751.png', 'PSE', '2025-08-28 14:37:16'),
(981, '1', 'Honey Trap of Diao Chan', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/diaochan.jpg', 'PSE', '2025-08-28 14:42:38'),
(982, '2', 'Gem Saviour', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/gem-saviour.jpg', 'PSE', '2025-08-28 14:42:38'),
(983, '3', 'Fortune Gods', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/fortune-gods.jpg', 'PSE', '2025-08-28 14:42:38'),
(984, '6', 'Medusa 2: The Quest of Perseus', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/medusa2.jpg', 'PSE', '2025-08-28 14:42:38'),
(985, '7', 'Medusa 1: The Curse of Athena', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/medusa.jpg', 'PSE', '2025-08-28 14:42:38'),
(986, '18', 'Hood vs Wolf', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/hood-wolf.jpg', 'PSE', '2025-08-28 14:42:38'),
(987, '20', 'Reel Love', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/reel-love.jpg', 'PSE', '2025-08-28 14:42:38'),
(988, '24', 'Win Win Won', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/win-win-won.jpg', 'PSE', '2025-08-28 14:42:38'),
(989, '25', 'Plushie Frenzy', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/plushie-frenzy.jpg', 'PSE', '2025-08-28 14:42:38'),
(990, '26', 'Tree of Fortune', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/fortune-tree.jpg', 'PSE', '2025-08-28 14:42:38'),
(991, '28', 'Hotpot', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/hotpot.jpg', 'PSE', '2025-08-28 14:42:38'),
(992, '29', 'Dragon Legend', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/dragon-legend.jpg', 'PSE', '2025-08-28 14:42:38'),
(993, '31', 'Baccarat Deluxe', 'PG', 'PG', 'CB', '1', 'https://img.55115515.com/PG/en-us/baccarat-deluxe.jpg', 'PSE', '2025-08-28 14:42:38'),
(994, '33', 'Hip Hop Panda', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/hip-hop-panda.jpg', 'PSE', '2025-08-28 14:42:38'),
(995, '34', 'Legend of Hou Yi', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/legend-of-hou-yi.jpg', 'PSE', '2025-08-28 14:42:38'),
(996, '35', 'Mr. Hallow-Win', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/mr-hallow-win.jpg', 'PSE', '2025-08-28 14:42:38'),
(997, '36', 'Prosperity Lion', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/prosperity-lion.jpg', 'PSE', '2025-08-28 14:42:38'),
(998, '37', 'Santa\'s Gift Rush', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/santas-gift-rush.jpg', 'PSE', '2025-08-28 14:42:38'),
(999, '38', 'Gem Saviour Sword', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/gem-saviour-sword.jpg', 'PSE', '2025-08-28 14:42:38'),
(1000, '39', 'Piggy Gold', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/piggy-gold.jpg', 'PSE', '2025-08-28 14:42:38'),
(1001, '40', 'Jungle Delight', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/jungle-delight.jpg', 'PSE', '2025-08-28 14:42:38'),
(1002, '41', 'Symbols Of Egypt', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/symbols-of-egypt.jpg', 'PSE', '2025-08-28 14:42:38'),
(1003, '42', 'Ganesha Gold', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/ganesha-gold.jpg', 'PSE', '2025-08-28 14:42:38'),
(1004, '44', 'Emperor\'s Favour', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/emperors-favour.jpg', 'PSE', '2025-08-28 14:42:38'),
(1005, '48', 'Double Fortune', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/double-fortune.jpg', 'PSE', '2025-08-28 14:42:38'),
(1006, '50', 'Journey to the Wealth', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/journey-to-the-wealth.jpg', 'PSE', '2025-08-28 14:42:38'),
(1007, '53', 'The Great Icescape', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/the-great-icescape.jpg', 'PSE', '2025-08-28 14:42:38'),
(1008, '54', 'Captain\'s Bounty', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/captains-bounty.jpg', 'PSE', '2025-08-28 14:42:38'),
(1009, '57', 'Dragon Hatch', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/dragon-hatch.jpg', 'PSE', '2025-08-28 14:42:38'),
(1010, '58', 'Vampire\'s Charm', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/vampires-charm.jpg', 'PSE', '2025-08-28 14:42:38'),
(1011, '59', 'Ninja vs Samurai', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/ninja-vs-samurai.jpg', 'PSE', '2025-08-28 14:42:38'),
(1012, '60', 'Leprechaun Riches', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/leprechaun-riches.jpg', 'PSE', '2025-08-28 14:42:38'),
(1013, '61', 'Flirting Scholar', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/flirting-scholar.jpg', 'PSE', '2025-08-28 14:42:38'),
(1014, '62', 'Gem Saviour Conquest', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/gem-saviour-conquest.jpg', 'PSE', '2025-08-28 14:42:38'),
(1015, '63', 'Dragon Tiger Luck', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/dragon-tiger-luck.jpg', 'PSE', '2025-08-28 14:42:38'),
(1016, '64', 'Muay Thai Champion', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/muay-thai-champion.jpg', 'PSE', '2025-08-28 14:42:38'),
(1017, '65', 'Mahjong Ways', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/mahjong-ways.jpg', 'PSE', '2025-08-28 14:42:38'),
(1018, '67', 'Shaolin Soccer', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/shaolin-soccer.jpg', 'PSE', '2025-08-28 14:42:38'),
(1019, '68', 'Fortune Mouse', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/fortune-mouse.jpg', 'PSE', '2025-08-28 14:42:38'),
(1020, '69', 'Bikini Paradise', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/bikini-paradise.jpg', 'PSE', '2025-08-28 14:42:38'),
(1021, '70', 'Candy Burst', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/candy-burst.jpg', 'PSE', '2025-08-28 14:42:38'),
(1022, '71', 'CaiShen Wins', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/cai-shen-wins.jpg', 'PSE', '2025-08-28 14:42:38'),
(1023, '73', 'Egypt\'s Book of Mystery', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/egypts-book-mystery.jpg', 'PSE', '2025-08-28 14:42:38'),
(1024, '74', 'Mahjong Ways 2', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/mahjong-ways2.jpg', 'PSE', '2025-08-28 14:42:38'),
(1025, '75', 'Ganesha Fortune', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/ganesha-fortune.jpg', 'PSE', '2025-08-28 14:42:38'),
(1026, '79', 'Dreams of Macau', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/dreams-of-macau.jpg', 'PSE', '2025-08-28 14:42:38'),
(1027, '80', 'Circus Delight', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/circus-delight.jpg', 'PSE', '2025-08-28 14:42:38'),
(1028, '82', 'Phoenix Rises', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/phoenix-rises.jpg', 'PSE', '2025-08-28 14:42:38'),
(1029, '83', 'Wild Fireworks', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/wild-fireworks.jpg', 'PSE', '2025-08-28 14:42:38'),
(1030, '84', 'Queen of Bounty', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/queen-bounty.jpg', 'PSE', '2025-08-28 14:42:38'),
(1031, '85', 'Genie\'s 3 Wishes', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/genies-wishes.jpg', 'PSE', '2025-08-28 14:42:38'),
(1032, '86', 'Galactic Gems', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/galactic-gems.jpg', 'PSE', '2025-08-28 14:42:38'),
(1033, '87', 'Treasures of Aztec', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/treasures-aztec.jpg', 'PSE', '2025-08-28 14:42:38'),
(1034, '88', 'Jewels of Prosperity', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/jewels-prosper.jpg', 'PSE', '2025-08-28 14:42:38'),
(1035, '89', 'Lucky Neko', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/lucky-neko.jpg', 'PSE', '2025-08-28 14:42:38'),
(1036, '90', 'Secrets of Cleopatra', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/sct-cleopatra.jpg', 'PSE', '2025-08-28 14:42:38'),
(1037, '91', 'Guardians of Ice & Fire', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/gdn-ice-fire.jpg', 'PSE', '2025-08-28 14:42:38'),
(1038, '92', 'Thai River Wonders', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/thai-river.jpg', 'PSE', '2025-08-28 14:42:38'),
(1039, '93', 'Opera Dynasty', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/opera-dynasty.jpg', 'PSE', '2025-08-28 14:42:38'),
(1040, '94', 'Bali Vacation', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/bali-vacation.jpg', 'PSE', '2025-08-28 14:42:38'),
(1041, '95', 'Majestic Treasures', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/majestic-ts.jpg', 'PSE', '2025-08-28 14:42:38'),
(1042, '97', 'Jack Frost\'s Winter', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/jack-frosts.jpg', 'PSE', '2025-08-28 14:42:38'),
(1043, '98', 'Fortune Ox', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/fortune-ox.jpg', 'PSE', '2025-08-28 14:42:38'),
(1044, '100', 'Candy Bonanza', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/candy-bonanza.jpg', 'PSE', '2025-08-28 14:42:38'),
(1045, '101', 'Rise of Apollo', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/rise-of-apollo.jpg', 'PSE', '2025-08-28 14:42:38'),
(1046, '102', 'Mermaid Riches', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/mermaid-riches.jpg', 'PSE', '2025-08-28 14:42:38'),
(1047, '103', 'Crypto Gold', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/crypto-gold.jpg', 'PSE', '2025-08-28 14:42:38'),
(1048, '104', 'Wild Bandito', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/wild-bandito.jpg', 'PSE', '2025-08-28 14:42:38'),
(1049, '105', 'Heist Stakes', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/heist-stakes.jpg', 'PSE', '2025-08-28 14:42:38'),
(1050, '106', 'Ways of the Qilin', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/ways-of-qilin.jpg', 'PSE', '2025-08-28 14:42:38'),
(1051, '107', 'Legendary Monkey King', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/lgd-monkey-kg.jpg', 'PSE', '2025-08-28 14:42:38'),
(1052, '108', 'Buffalo Win', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/buffalo-win.jpg', 'PSE', '2025-08-28 14:42:38'),
(1053, '110', 'Jurassic Kingdom', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/jurassic-kdm.jpg', 'PSE', '2025-08-28 14:42:38'),
(1054, '112', 'Oriental Prosperity', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/oriental-pros.jpg', 'PSE', '2025-08-28 14:42:38'),
(1055, '113', 'Raider Jane\'s Crypt of Fortune', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/crypt-fortune.jpg', 'PSE', '2025-08-28 14:42:38'),
(1056, '114', 'Emoji Riches', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/emoji-riches.jpg', 'PSE', '2025-08-28 14:42:38'),
(1057, '115', 'Supermarket Spree', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/sprmkt-spree.jpg', 'PSE', '2025-08-28 14:42:38'),
(1058, '117', 'Cocktail Nights', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/cocktail-nite.jpg', 'PSE', '2025-08-28 14:42:38'),
(1059, '118', 'Mask Carnival', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/mask-carnival.jpg', 'PSE', '2025-08-28 14:42:38'),
(1060, '119', 'Spirited Wonders', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/spirit-wonder.jpg', 'PSE', '2025-08-28 14:42:38'),
(1061, '120', 'The Queen\'s Banquet', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/queen-banquet.jpg', 'PSE', '2025-08-28 14:42:38'),
(1062, '121', 'Destiny of Sun & Moon', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/dest-sun-moon.jpg', 'PSE', '2025-08-28 14:42:38'),
(1063, '122', 'Garuda Gems', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/garuda-gems.jpg', 'PSE', '2025-08-28 14:42:38'),
(1064, '123', 'Rooster Rumble', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/rooster-rbl.jpg', 'PSE', '2025-08-28 14:42:38'),
(1065, '124', 'Battleground Royale', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/battleground.jpg', 'PSE', '2025-08-28 14:42:38'),
(1066, '125', 'Butterfly Blossom', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/btrfly-blossom.jpg', 'PSE', '2025-08-28 14:42:38'),
(1067, '126', 'Fortune Tiger', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/fortune-tiger.jpg', 'PSE', '2025-08-28 14:42:38'),
(1068, '127', 'Speed Winner', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/speed-winner.jpg', 'PSE', '2025-08-28 14:42:38'),
(1069, '128', 'Legend of Perseus', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/legend-perseus.jpg', 'PSE', '2025-08-28 14:42:38'),
(1070, '129', 'Win Win Fish Prawn Crab', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/win-win-fpc.jpg', 'PSE', '2025-08-28 14:42:38'),
(1071, '130', 'Lucky Piggy', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/lucky-piggy.jpg', 'PSE', '2025-08-28 14:42:38'),
(1072, '132', 'Wild Coaster', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/wild-coaster.jpg', 'PSE', '2025-08-28 14:42:38'),
(1073, '135', 'Wild Bounty Showdown', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/wild-bounty-sd.jpg', 'PSE', '2025-08-28 14:42:38'),
(1074, '1312883', 'Prosperity Fortune Tree', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/prosper-ftree.jpg', 'PSE', '2025-08-28 14:42:38'),
(1075, '1338274', 'Totem Wonders', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/totem-wonders.jpg', 'PSE', '2025-08-28 14:42:38'),
(1076, '1340277', 'Asgardian Rising', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/asgardian-rs.jpg', 'PSE', '2025-08-28 14:42:38'),
(1077, '1368367', 'Alchemy Gold', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/alchemy-gold.jpg', 'PSE', '2025-08-28 14:42:38'),
(1078, '1372643', 'Diner Delights', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/diner-delights.jpg', 'PSE', '2025-08-28 14:42:38'),
(1079, '1381200', 'Hawaiian Tiki', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/hawaiian-tiki.jpg', 'PSE', '2025-08-28 14:42:38'),
(1080, '1397455', 'Fruity Candy', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/fruity-candy.jpg', 'PSE', '2025-08-28 14:42:38'),
(1081, '1402846', 'Midas Fortune', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/midas-fortune.jpg', 'PSE', '2025-08-28 14:42:38'),
(1082, '1418544', 'Bakery Bonanza', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/bakery-bonanza.jpg', 'PSE', '2025-08-28 14:42:38'),
(1083, '1420892', 'Rave Party Fever', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/rave-party-fvr.jpg', 'PSE', '2025-08-28 14:42:38'),
(1084, '1432733', 'Mystical Spirits', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/myst-spirits.jpg', 'PSE', '2025-08-28 14:42:38'),
(1085, '1448762', 'Songkran Splash', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/songkran-spl.jpg', 'PSE', '2025-08-28 14:42:38'),
(1086, '1451122', 'Dragon Hatch2', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/dragon-hatch2.jpg', 'PSE', '2025-08-28 14:42:38'),
(1087, '1473388', 'Cruise Royale', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/cruise-royale.jpg', 'PSE', '2025-08-28 14:42:38'),
(1088, '1489936', 'Ultimate Striker', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/ult-striker.jpg', 'PSE', '2025-08-28 14:42:38'),
(1089, '1492288', 'Pinata Wins', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/pinata-wins.jpg', 'PSE', '2025-08-28 14:42:38'),
(1090, '1508783', 'Wild Ape #3258', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/wild-ape-3258.jpg', 'PSE', '2025-08-28 14:42:38'),
(1091, '1513328', 'Super Golf Drive', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/spr-golf-drive.jpg', 'PSE', '2025-08-28 14:42:38'),
(1092, '1529867', 'Ninja Raccoon Frenzy', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/ninja-raccoon.jpg', 'PSE', '2025-08-28 14:42:38'),
(1093, '1543462', 'Fortune Rabbit', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/fortune-rabbit.jpg', 'PSE', '2025-08-28 14:42:38'),
(1094, '1555350', 'Forge of Wealth', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/forge-wealth.jpg', 'PSE', '2025-08-28 14:42:38'),
(1095, '1568554', 'Wild Heist Cashout', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/wild-heist-co.jpg', 'PSE', '2025-08-28 14:42:38'),
(1096, '1572362', 'Gladiator\'s Glory', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/gladi-glory.jpg', 'PSE', '2025-08-28 14:42:38'),
(1097, '1580541', 'Mafia Mayhem', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/mafia-mayhem.jpg', 'PSE', '2025-08-28 14:42:38'),
(1098, '1594259', 'Safari Wilds', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/safari-wilds.jpg', 'PSE', '2025-08-28 14:42:38'),
(1099, '1601012', 'Lucky Clover Riches', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/lucky-clover.jpg', 'PSE', '2025-08-28 14:42:38'),
(1100, '1615454', 'Werewolf\'s Hunt', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/werewolf-hunt.jpg', 'PSE', '2025-08-28 14:42:38'),
(1101, '1623475', 'Anubis Wrath', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/anubis-wrath.jpg', 'PSE', '2025-08-28 14:42:38'),
(1102, '1635221', 'Zombie Outbreak', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/zombie-outbrk.jpg', 'PSE', '2025-08-28 14:42:38'),
(1103, '1648578', 'Shark Bounty', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/shark-bounty.jpg', 'PSE', '2025-08-28 14:42:38'),
(1104, '1655268', 'Tsar Treasures', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/tsar-treasures.jpg', 'PSE', '2025-08-28 14:42:38'),
(1105, '1666445', 'Chocolate Deluxe', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/choc-deluxe.jpg', 'PSE', '2025-08-28 14:42:38'),
(1106, '1671262', 'Gemstones Gold', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/gemstones-gold.jpg', 'PSE', '2025-08-28 14:42:38'),
(1107, '1682240', 'Cash Mania', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/cash-mania.jpg', 'PSE', '2025-08-28 14:42:38'),
(1108, '1695365', 'Fortune Dragon', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/fortune-dragon.jpg', 'PSE', '2025-08-28 14:42:38'),
(1109, '1702123', 'Geisha\'s Revenge', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/geisha-revenge.jpg', 'PSE', '2025-08-28 14:42:38'),
(1110, '1717688', 'Mystic Potion', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/mystic-potions.jpg', 'PSE', '2025-08-28 14:42:38'),
(1111, '1727711', 'Three Crazy Piggies', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/three-cz-pigs.jpg', 'PSE', '2025-08-28 14:42:38'),
(1112, '1738001', 'Chicky Run', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/chicky-run.jpg', 'PSE', '2025-08-28 14:42:38'),
(1113, '1747549', 'Wings of Iguazu', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/wings-iguazu.jpg', 'PSE', '2025-08-28 14:42:38'),
(1114, '1755623', 'Museum Wonders', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/museum-wonders.jpg', 'PSE', '2025-08-28 14:42:38'),
(1115, '1760238', 'Yakuza Honor', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/yakuza-honor.jpg', 'PSE', '2025-08-28 14:42:38'),
(1116, '1778752', 'Futebol Fever', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/futebol-fever.jpg', 'PSE', '2025-08-28 14:42:38'),
(1117, '1786529', 'Rio Fantasia', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/rio-fantasia.jpg', 'PSE', '2025-08-28 14:42:38'),
(1118, '1799745', 'Mr. Treasure\'s Fortune', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/mr-treas-fort.jpg', 'PSE', '2025-08-28 14:42:38'),
(1119, '1804577', 'Graffiti Rush', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/graffiti-rush.jpg', 'PSE', '2025-08-28 14:42:38'),
(1120, '1815268', 'Oishi Delights', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/oishi-delights.jpg', 'PSE', '2025-08-28 14:42:38'),
(1121, '1827457', 'Doomsday Rampage', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/doomsday-rampg.jpg', 'PSE', '2025-08-28 14:42:38'),
(1122, '1834850', 'Jack the Giant Hunter', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/jack-giant-hunt.jpg', 'PSE', '2025-08-28 14:42:38'),
(1123, '1850016', 'Incan Wonders', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/incan-wonders.jpg', 'PSE', '2025-08-28 14:42:38'),
(1124, '1865521', 'Dead Man\'s Riches', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/dead-man-riches.jpg', 'PSE', '2025-08-28 14:42:38'),
(1125, '1879752', 'Fortune Snake', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/fortune-snake.jpg', 'PSE', '2025-08-28 14:42:38'),
(1126, '1881268', 'Knockout Riches', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/knockout-rich.jpg', 'PSE', '2025-08-28 14:42:38'),
(1127, '1897678', 'Dragon\'s Treasure Quest', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/dragons-treas.jpg', 'PSE', '2025-08-28 14:42:38'),
(1128, '1918451', 'Galaxy Miner', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/galaxy-miner.jpg', 'PSE', '2025-08-28 14:42:38'),
(1129, '1935269', 'Diner Frenzy Spins', 'PG', 'PG', 'SL', '1', 'https://img.55115515.com/PG/en-us/diner-frenzy.jpg', 'PSE', '2025-08-28 14:42:38'),
(1130, '1', 'Royal Fishing', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/1.png', 'PSE', '2025-08-28 14:45:10'),
(1131, '2', 'Chin Shi Huang', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/2.png', 'PSE', '2025-08-28 14:45:10'),
(1132, '4', 'God Of Martial', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/4.png', 'PSE', '2025-08-28 14:45:10'),
(1133, '5', 'Hot Chilli', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/5.png', 'PSE', '2025-08-28 14:45:10'),
(1134, '6', 'Fortune Tree', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/6.png', 'PSE', '2025-08-28 14:45:10'),
(1135, '9', 'War Of Dragons', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/9.png', 'PSE', '2025-08-28 14:45:10'),
(1136, '10', 'Gem Party', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/10.png', 'PSE', '2025-08-28 14:45:10'),
(1137, '13', 'Lucky Ball', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/13.png', 'PSE', '2025-08-28 14:45:10'),
(1138, '14', 'Hyper Burst', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/14.png', 'PSE', '2025-08-28 14:45:10'),
(1139, '16', 'Jungle King', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/16.png', 'PSE', '2025-08-28 14:45:10'),
(1140, '17', 'Shanghai Beauty', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/17.png', 'PSE', '2025-08-28 14:45:10'),
(1141, '20', 'Bombing Fishing', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/20.png', 'PSE', '2025-08-28 14:45:10'),
(1142, '21', 'Fa Fa Fa', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/21.png', 'PSE', '2025-08-28 14:45:10'),
(1143, '23', 'Candy Baby', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/23.png', 'PSE', '2025-08-28 14:45:10'),
(1144, '26', 'Hawaii Beauty', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/26.png', 'PSE', '2025-08-28 14:45:10'),
(1145, '27', 'SevenSevenSeven', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/27.png', 'PSE', '2025-08-28 14:45:10'),
(1146, '30', 'Bubble Beauty', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/30.png', 'PSE', '2025-08-28 14:45:10'),
(1147, '32', 'JackPot Fishing', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/32.png', 'PSE', '2025-08-28 14:45:10'),
(1148, '33', 'FortunePig', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/33.png', 'PSE', '2025-08-28 14:45:10'),
(1149, '35', 'Crazy777', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/35.png', 'PSE', '2025-08-28 14:45:10'),
(1150, '36', 'Bao boon chin', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/36.png', 'PSE', '2025-08-28 14:45:10'),
(1151, '37', 'Night City', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/37.png', 'PSE', '2025-08-28 14:45:10'),
(1152, '38', 'Fengshen', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/38.png', 'PSE', '2025-08-28 14:45:10'),
(1153, '40', 'Crazy FaFaFa', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/40.png', 'PSE', '2025-08-28 14:45:10'),
(1154, '42', 'Dinosaur Tycoon', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/42.png', 'PSE', '2025-08-28 14:45:10'),
(1155, '43', 'XiYangYang', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/43.png', 'PSE', '2025-08-28 14:45:10'),
(1156, '44', 'Diamond Party', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/44.png', 'PSE', '2025-08-28 14:45:10'),
(1157, '45', 'Golden Bank', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/45.png', 'PSE', '2025-08-28 14:45:10'),
(1158, '46', 'Dragon Treasure', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/46.png', 'PSE', '2025-08-28 14:45:10'),
(1159, '47', 'Charge Buffalo', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/47.png', 'PSE', '2025-08-28 14:45:10'),
(1160, '48', 'Lucky Goldbricks', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/48.png', 'PSE', '2025-08-28 14:45:10'),
(1161, '49', 'Super Ace', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/49.png', 'PSE', '2025-08-28 14:45:10'),
(1162, '51', 'Money Coming', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/51.png', 'PSE', '2025-08-28 14:45:10'),
(1163, '58', 'Golden Queen', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/58.png', 'PSE', '2025-08-28 14:45:10'),
(1164, '60', 'Dragon Fortune', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/60.png', 'PSE', '2025-08-28 14:45:10'),
(1165, '67', 'Monkey Party', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/67.png', 'PSE', '2025-08-28 14:45:10'),
(1166, '71', 'Boom Legend', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/71.png', 'PSE', '2025-08-28 14:45:10'),
(1167, '72', 'TeenPatti', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/72.png', 'PSE', '2025-08-28 14:45:10'),
(1168, '74', 'Mega Fishing', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/74.png', 'PSE', '2025-08-28 14:45:10'),
(1169, '75', 'AK47', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/75.png', 'PSE', '2025-08-28 14:45:10'),
(1170, '76', 'Party Night', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/76.png', 'PSE', '2025-08-28 14:45:10'),
(1171, '77', 'Boxing King', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/77.png', 'PSE', '2025-08-28 14:45:10'),
(1172, '78', 'Secret Treasure', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/78.png', 'PSE', '2025-08-28 14:45:10'),
(1173, '79', 'Andar Bahar', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/79.png', 'PSE', '2025-08-28 14:45:10'),
(1174, '82', 'Happy Fishing', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/82.png', 'PSE', '2025-08-28 14:45:10'),
(1175, '85', 'Pharaoh Treasure', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/85.png', 'PSE', '2025-08-28 14:45:10'),
(1176, '87', 'Book of Gold', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/87.png', 'PSE', '2025-08-28 14:45:10'),
(1177, '91', 'Lucky Coming', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/91.png', 'PSE', '2025-08-28 14:45:10'),
(1178, '92', 'Crazy Hunter', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/92.png', 'PSE', '2025-08-28 14:45:10'),
(1179, '94', 'Rummy', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/94.png', 'PSE', '2025-08-28 14:45:10'),
(1180, '100', 'Super Rich', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/100.png', 'PSE', '2025-08-28 14:45:10'),
(1181, '101', 'Medusa', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/101.png', 'PSE', '2025-08-28 14:45:10'),
(1182, '102', 'Roma X', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/102.png', 'PSE', '2025-08-28 14:45:10'),
(1183, '103', 'Golden Empire', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/103.png', 'PSE', '2025-08-28 14:45:10'),
(1184, '106', 'TWIN WINS', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/106.png', 'PSE', '2025-08-28 14:45:10'),
(1185, '108', 'MagicLamp', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/108.png', 'PSE', '2025-08-28 14:45:10'),
(1186, '109', 'Fortune Gems', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/109.png', 'PSE', '2025-08-28 14:45:10'),
(1187, '110', 'Ali Baba', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/110.png', 'PSE', '2025-08-28 14:45:10'),
(1188, '111', 'Number King', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/111.png', 'PSE', '2025-08-28 14:45:10'),
(1189, '112', 'Joumey West M', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/112.png', 'PSE', '2025-08-28 14:45:10'),
(1190, '113', 'Poker King', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/113.png', 'PSE', '2025-08-28 14:45:10'),
(1191, '114', 'European Roulette', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/114.png', 'PSE', '2025-08-28 14:45:10'),
(1192, '115', 'Agent Ace', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/115.png', 'PSE', '2025-08-28 14:45:10'),
(1193, '116', 'Happy Taxi', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/116.png', 'PSE', '2025-08-28 14:45:10'),
(1194, '118', 'Big Small', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/118.png', 'PSE', '2025-08-28 14:45:10'),
(1195, '119', 'All-star Fishing', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/119.png', 'PSE', '2025-08-28 14:45:10'),
(1196, '122', 'iRich Bingo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/122.png', 'PSE', '2025-08-28 14:45:10'),
(1197, '123', 'Dragon & Tiger', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/123.png', 'PSE', '2025-08-28 14:45:10'),
(1198, '124', '7 UP 7 DOWN', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/124.png', 'PSE', '2025-08-28 14:45:10'),
(1199, '125', 'Sic Bo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/125.png', 'PSE', '2025-08-28 14:45:10'),
(1200, '126', 'Bone Fortune', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/126.png', 'PSE', '2025-08-28 14:45:10'),
(1201, '127', 'CallBreak', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/127.png', 'PSE', '2025-08-28 14:45:10'),
(1202, '130', 'Thor X', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/130.png', 'PSE', '2025-08-28 14:45:10'),
(1203, '132', 'Pool Rummy', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/132.png', 'PSE', '2025-08-28 14:45:10'),
(1204, '134', 'Mega Ace', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/134.png', 'PSE', '2025-08-28 14:45:10'),
(1205, '135', 'MAYAN EMPIRE', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/135.png', 'PSE', '2025-08-28 14:45:10'),
(1206, '136', 'Samba', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/136.png', 'PSE', '2025-08-28 14:45:10'),
(1207, '137', 'Gold Rush', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/137.png', 'PSE', '2025-08-28 14:45:10'),
(1208, '139', 'Fortune Bingo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/139.png', 'PSE', '2025-08-28 14:45:10'),
(1209, '142', 'Bonus Hunter', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/142.png', 'PSE', '2025-08-28 14:45:10'),
(1210, '144', 'JILI Caishen', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/144.png', 'PSE', '2025-08-28 14:45:10'),
(1211, '145', 'Neko Fortune', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/145.png', 'PSE', '2025-08-28 14:45:10'),
(1212, '146', 'World Cup', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/146.png', 'PSE', '2025-08-28 14:45:10'),
(1213, '148', 'Bingo Carnaval', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/148.png', 'PSE', '2025-08-28 14:45:10'),
(1214, '149', 'Calaca Bingo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/149.png', 'PSE', '2025-08-28 14:45:10'),
(1215, '150', 'Lucky Bingo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/150.png', 'PSE', '2025-08-28 14:45:10'),
(1216, '151', 'Super Bingo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/151.png', 'PSE', '2025-08-28 14:45:10'),
(1217, '152', 'Baccarat', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/152.png', 'PSE', '2025-08-28 14:45:10'),
(1218, '153', 'Crazy Pusher', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/153.png', 'PSE', '2025-08-28 14:45:10'),
(1219, '159', 'TeenPatti Joker', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/159.png', 'PSE', '2025-08-28 14:45:10'),
(1220, '160', 'CallbreakQuick', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/160.png', 'PSE', '2025-08-28 14:45:10'),
(1221, '161', 'Teenpatti 20-20', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/161.png', 'PSE', '2025-08-28 14:45:10'),
(1222, '163', 'Ludo Quick', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/163.png', 'PSE', '2025-08-28 14:45:10'),
(1223, '164', 'Pirate Queen', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/164.png', 'PSE', '2025-08-28 14:45:10'),
(1224, '166', 'Wild Racer', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/166.png', 'PSE', '2025-08-28 14:45:10'),
(1225, '171', 'Sin City', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/171.png', 'PSE', '2025-08-28 14:45:10'),
(1226, '172', 'ELF BINGO', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/172.png', 'PSE', '2025-08-28 14:45:10'),
(1227, '173', 'West Hunter Bingo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/173.png', 'PSE', '2025-08-28 14:45:10'),
(1228, '174', 'Jackpot Bingo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/174.png', 'PSE', '2025-08-28 14:45:10'),
(1229, '176', 'Master Tiger', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/176.png', 'PSE', '2025-08-28 14:45:10'),
(1230, '177', 'Bingo Adventure', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/177.png', 'PSE', '2025-08-28 14:45:10'),
(1231, '178', 'Go Goal Bingo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/178.png', 'PSE', '2025-08-28 14:45:10'),
(1232, '179', 'Win Drop', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/179.png', 'PSE', '2025-08-28 14:45:10'),
(1233, '180', 'Legacy Of Egypt', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/180.png', 'PSE', '2025-08-28 14:45:10'),
(1234, '181', 'Wild Ace', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/181.png', 'PSE', '2025-08-28 14:45:10'),
(1235, '182', 'Golden Land', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/182.png', 'PSE', '2025-08-28 14:45:10'),
(1236, '183', 'Golden Joker', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/183.png', 'PSE', '2025-08-28 14:45:10'),
(1237, '191', 'Golden Temple', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/191.png', 'PSE', '2025-08-28 14:45:10'),
(1238, '193', 'Devil Fire', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/193.png', 'PSE', '2025-08-28 14:45:10'),
(1239, '195', 'Pearls of Bingo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/195.png', 'PSE', '2025-08-28 14:45:10'),
(1240, '197', 'Color Game', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/197.png', 'PSE', '2025-08-28 14:45:10'),
(1241, '198', 'Sweet Land', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/198.png', 'PSE', '2025-08-28 14:45:10'),
(1242, '199', 'Tongits Go', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/199.png', 'PSE', '2025-08-28 14:45:10'),
(1243, '200', 'Pappu', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/200.png', 'PSE', '2025-08-28 14:45:10'),
(1244, '204', 'Color Prediction', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/204.png', 'PSE', '2025-08-28 14:45:10'),
(1245, '208', 'Trial of Phoenix', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/208.png', 'PSE', '2025-08-28 14:45:10'),
(1246, '209', 'Aztec Priestess', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/209.png', 'PSE', '2025-08-28 14:45:10'),
(1247, '210', 'Poker Lobby', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/210.png', 'PSE', '2025-08-28 14:45:10'),
(1248, '211', 'Pusoy Go', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/211.png', 'PSE', '2025-08-28 14:45:10'),
(1249, '212', 'Dinosaur Tycoon II', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/212.png', 'PSE', '2025-08-28 14:45:10'),
(1250, '214', 'King Arthur', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/214.png', 'PSE', '2025-08-28 14:45:10');
INSERT INTO `tb_gamelist` (`cuid`, `game_vendor`, `game_name`, `game_provider_original`, `game_provider`, `game_type`, `game_status`, `game_image`, `providerapi`, `created_at`) VALUES
(1251, '216', 'Candyland Bingo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/216.png', 'PSE', '2025-08-28 14:45:10'),
(1252, '217', 'Magic Lamp Bingo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/217.png', 'PSE', '2025-08-28 14:45:10'),
(1253, '219', 'Blackjack', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/219.png', 'PSE', '2025-08-28 14:45:10'),
(1254, '220', 'Blackjack Lucky Ladies', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/220.png', 'PSE', '2025-08-28 14:45:10'),
(1255, '221', 'MINI FLUSH', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/221.png', 'PSE', '2025-08-28 14:45:10'),
(1256, '223', 'Fortune Gems 2', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/223.png', 'PSE', '2025-08-28 14:45:10'),
(1257, '224', 'Go Rush', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/224.png', 'PSE', '2025-08-28 14:45:10'),
(1258, '225', 'Cricket King 18', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/225.png', 'PSE', '2025-08-28 14:45:10'),
(1259, '226', 'Witches\' Night', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/226.png', 'PSE', '2025-08-28 14:45:10'),
(1260, '228', 'Arena Fighter', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/228.png', 'PSE', '2025-08-28 14:45:10'),
(1261, '229', 'Mines', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/229.png', 'PSE', '2025-08-28 14:45:10'),
(1262, '230', 'Cricket SAH 75', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/230.png', 'PSE', '2025-08-28 14:45:10'),
(1263, '231', 'Caribbean Stud Poker', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/231.png', 'PSE', '2025-08-28 14:45:10'),
(1264, '232', 'Tower', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/232.png', 'PSE', '2025-08-28 14:45:10'),
(1265, '233', 'HILO', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/233.png', 'PSE', '2025-08-28 14:45:10'),
(1266, '235', 'Limbo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/235.png', 'PSE', '2025-08-28 14:45:10'),
(1267, '236', 'Wheel', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/236.png', 'PSE', '2025-08-28 14:45:10'),
(1268, '238', 'Bangla Beauty', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/238.png', 'PSE', '2025-08-28 14:45:10'),
(1269, '239', 'Dabanggg', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/239.png', 'PSE', '2025-08-28 14:45:10'),
(1270, '240', 'Party Star', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/240.png', 'PSE', '2025-08-28 14:45:10'),
(1271, '241', 'Keno', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/241.png', 'PSE', '2025-08-28 14:45:10'),
(1272, '242', 'Plinko', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/242.png', 'PSE', '2025-08-28 14:45:10'),
(1273, '252', 'Zeus', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/252.png', 'PSE', '2025-08-28 14:45:10'),
(1274, '253', 'Video Poker', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/253.png', 'PSE', '2025-08-28 14:45:10'),
(1275, '254', 'Mines Gold', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/254.png', 'PSE', '2025-08-28 14:45:10'),
(1276, '258', 'Devil Fire 2', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/258.png', 'PSE', '2025-08-28 14:45:10'),
(1277, '259', 'Charge Buffalo ASCENT', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/259.png', 'PSE', '2025-08-28 14:45:10'),
(1278, '261', 'Crash Bonus', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/261.png', 'PSE', '2025-08-28 14:45:10'),
(1279, '262', 'Speed Baccarat', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/262.png', 'PSE', '2025-08-28 14:45:10'),
(1280, '263', 'The Pig House', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/263.png', 'PSE', '2025-08-28 14:45:10'),
(1281, '264', 'Egypt\'s Glow', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/264.png', 'PSE', '2025-08-28 14:45:10'),
(1282, '272', 'Keno Bonus Number', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/272.png', 'PSE', '2025-08-28 14:45:10'),
(1283, '273', 'Keno Super Chance', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/273.png', 'PSE', '2025-08-28 14:45:10'),
(1284, '274', 'Keno Extra Bet', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/274.png', 'PSE', '2025-08-28 14:45:10'),
(1285, '289', 'Ocean King Jackpot', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/289.png', 'PSE', '2025-08-28 14:45:10'),
(1286, '297', 'Jogo Do Bicho', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/297.png', 'PSE', '2025-08-28 14:45:10'),
(1287, '299', 'Potion Wizard', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/299.png', 'PSE', '2025-08-28 14:45:10'),
(1288, '300', 'Fortune Gems 3', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/300.png', 'PSE', '2025-08-28 14:45:10'),
(1289, '301', 'Jackpot Joker', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/301.png', 'PSE', '2025-08-28 14:45:10'),
(1290, '302', 'Money Coming Expanded Bets', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/302.png', 'PSE', '2025-08-28 14:45:10'),
(1291, '303', 'Fortune Monkey', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/303.png', 'PSE', '2025-08-28 14:45:10'),
(1292, '305', 'Super e-Sabong', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/305.png', 'PSE', '2025-08-28 14:45:10'),
(1293, '307', 'Treasure Quest', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/307.png', 'PSE', '2025-08-28 14:45:10'),
(1294, '324', 'Nightfall Hunting', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/324.png', 'PSE', '2025-08-28 14:45:10'),
(1295, '327', 'Domino Go', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/327.png', 'PSE', '2025-08-28 14:45:10'),
(1296, '372', '3 Pot Dragons', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/372.png', 'PSE', '2025-08-28 14:45:10'),
(1297, '374', 'Lucky Doggy', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/374.png', 'PSE', '2025-08-28 14:45:10'),
(1298, '375', 'Poseidon', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/375.png', 'PSE', '2025-08-28 14:45:10'),
(1299, '376', 'Shōgun', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/376.png', 'PSE', '2025-08-28 14:45:10'),
(1300, '377', 'Safari Mystery', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/377.png', 'PSE', '2025-08-28 14:45:10'),
(1301, '378', 'Golden Bank 2', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/378.png', 'PSE', '2025-08-28 14:45:10'),
(1302, '379', 'Money Pot', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/379.png', 'PSE', '2025-08-28 14:45:10'),
(1303, '389', 'Fish Prawn Crab', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/389.png', 'PSE', '2025-08-28 14:45:10'),
(1304, '392', 'Coin Tree', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/392.png', 'PSE', '2025-08-28 14:45:10'),
(1305, '394', 'Sweet Magic', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/394.png', 'PSE', '2025-08-28 14:45:10'),
(1306, '397', 'Jhandi Munda', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/397.png', 'PSE', '2025-08-28 14:45:10'),
(1307, '399', '3 Coin Treasures', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/399.png', 'PSE', '2025-08-28 14:45:10'),
(1308, '400', '3 LUCKY PIGGY', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/400.png', 'PSE', '2025-08-28 14:45:10'),
(1309, '403', 'Super Ace Deluxe', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/403.png', 'PSE', '2025-08-28 14:45:10'),
(1310, '404', 'Ultimate Texas Holdem', 'JE', 'JE', 'CB', '1', 'https://img.55115515.com/JL/en-us/404.png', 'PSE', '2025-08-28 14:45:10'),
(1311, '407', 'Crash Goal', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/407.png', 'PSE', '2025-08-28 14:45:10'),
(1312, '409', 'Super Ace Joker', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/409.png', 'PSE', '2025-08-28 14:45:10'),
(1313, '419', 'Penalty Kicks', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/419.png', 'PSE', '2025-08-28 14:45:10'),
(1314, '420', 'Crazy Hunter2', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/420.png', 'PSE', '2025-08-28 14:45:10'),
(1315, '421', 'Lucky Jaguar', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/421.png', 'PSE', '2025-08-28 14:45:10'),
(1316, '422', 'Fruity Wheel', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/422.png', 'PSE', '2025-08-28 14:45:10'),
(1317, '424', 'Golden Empire 2', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/424.png', 'PSE', '2025-08-28 14:45:10'),
(1318, '427', 'Thai HIlo', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/427.png', 'PSE', '2025-08-28 14:45:10'),
(1319, '436', 'Fortune Roulette', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/436.png', 'PSE', '2025-08-28 14:45:10'),
(1320, '439', 'Super Ace Scratch', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/439.png', 'PSE', '2025-08-28 14:45:10'),
(1321, '440', 'Boxing Extravaganza', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/440.png', 'PSE', '2025-08-28 14:45:10'),
(1322, '441', 'Fortune Gems Scratch', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/441.png', 'PSE', '2025-08-28 14:45:10'),
(1323, '442', 'Go For Champion', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/442.png', 'PSE', '2025-08-28 14:45:10'),
(1324, '459', 'Crash Touchdown', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/459.png', 'PSE', '2025-08-28 14:45:10'),
(1325, '460', '3 Charge Buffalo', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/460.png', 'PSE', '2025-08-28 14:45:10'),
(1326, '461', 'Pirate Queen 2', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/461.png', 'PSE', '2025-08-28 14:45:10'),
(1327, '462', 'Cricket Roulette', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/462.png', 'PSE', '2025-08-28 14:45:10'),
(1328, '463', '3 LUCKY LION', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/463.png', 'PSE', '2025-08-28 14:45:10'),
(1329, '464', 'Fortune King Jackpot', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/464.png', 'PSE', '2025-08-28 14:45:10'),
(1330, '469', 'Crash Cricket', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/469.png', 'PSE', '2025-08-28 14:45:10'),
(1331, '472', '3 Coin Treasures 2', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/472.png', 'PSE', '2025-08-28 14:45:10'),
(1332, '473', 'Cricket War', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/473.png', 'PSE', '2025-08-28 14:45:10'),
(1333, '479', 'Color Game Extreme', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/479.png', 'PSE', '2025-08-28 14:45:10'),
(1334, '485', '3 Coin Wild Horse', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/485.png', 'PSE', '2025-08-28 14:45:10'),
(1335, '504', 'Crazy777 2', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/504.png', 'PSE', '2025-08-28 14:45:10'),
(1336, '517', 'RomaX Deluxe', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/517.png', 'PSE', '2025-08-28 14:45:10'),
(1337, '518', 'Circus Joker 4096', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/518.png', 'PSE', '2025-08-28 14:45:10'),
(1338, '523', 'Fortune Coins', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/523.png', 'PSE', '2025-08-28 14:45:10'),
(1339, '531', 'Fortune Zombie', 'JE', 'JE', 'FH', '1', 'https://img.55115515.com/JL/en-us/531.png', 'PSE', '2025-08-28 14:45:10'),
(1340, '542', 'Super Ace 2', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/542.png', 'PSE', '2025-08-28 14:45:10'),
(1341, '543', 'Money Coming 2', 'JE', 'JE', 'SL', '1', 'https://img.55115515.com/JL/en-us/543.png', 'PSE', '2025-08-28 14:45:10'),
(1342, '546', 'Mines Grand', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/546.png', 'PSE', '2025-08-28 14:45:10'),
(1343, '554', 'Golden Treasure', 'JE', 'JE', 'OT', '1', 'https://img.55115515.com/JL/en-us/554.png', 'PSE', '2025-08-28 14:45:10'),
(1344, 'TRIAL_OF_THE_FIRE_DRAGON_100K', 'TRIAL OF THE FIRE DRAGON 100K', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/TRIAL_OF_THE_FIRE_DRAGON_100K_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1345, 'BARONG_SACRED_BATTLE', 'Barong Sacred Battle', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/BARONG_SACRED_BATTLE_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1346, 'THE_FOUR_DIVINE_BEASTS', 'The Four Divine Beasts', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/THE_FOUR_DIVINE_BEASTS_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1347, 'NINE_TAILED_FOX', 'Nine Tailed Fox', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/NINE_TAILED_FOX_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1348, 'TRIAL_OF_THE_FIRE_DRAGON', 'Trial of the Fire Dragon', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/TRIAL_OF_THE_FIRE_DRAGON_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1349, 'SECRET_SCROLL_OF_NINJA', 'Secret Scroll of Ninja', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/SECRET_SCROLL_OF_NINJA_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1350, 'SUBMARINE_ABYSS', 'Submarine Abyss', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/SUBMARINE_ABYSS_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1351, 'GOD_OF_FORTUNE_LOTTERY', 'The God of Fortune', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/GOD_OF_FORTUNE_LOTTERY_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1352, 'PUTERI_GUNUNG_LEDANG', 'Puteri Gunung Ledang', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/PUTERI_GUNUNG_LEDANG_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1353, 'TITAN_MONSTER', 'Titans', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/TITAN_MONSTER_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1354, 'FLOWERISH_FAIRY', 'Flowerish Fairy', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/FLOWERISH_FAIRY_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1355, 'CALL_UFO', 'Call UFO', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/CALL_UFO_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1356, 'JUNGLE_TREASURE', 'Jungle Treasure', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/JUNGLE_TREASURE_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1357, 'ALICE_IN_WONDERLAND', 'Alice in Wonderland', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/ALICE_IN_WONDERLAND_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1358, 'HANG_TUAH', 'Hang Tuah', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/HANG_TUAH_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1359, 'BAAHUBALI', 'Baahubali', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/BAAHUBALI_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1360, 'SIAM_BAN_LUCK', 'Siam Ban Luck', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/SIAM_BAN_LUCK_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1361, 'BLACK_JACK', 'Black Jack', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/BLACK_JACK_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1362, 'FISH_PRAWN_CRAB', 'Fish Prawn Crab', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/FISH_PRAWN_CRAB_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1363, 'FOUR_GENTLEMANLY_FLOWERS', 'Four Gentlemanly Flowers', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/FOUR_GENTLEMANLY_FLOWERS_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1364, 'BINGO_SAMBA', 'Samba Bingo', 'WW', 'WW', 'LK', '1', 'https://prod.wgwowgames.com/game_list/icon/BINGO_SAMBA_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1365, 'SEVEN_UP_DOWN', '7 Up Down', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/SEVEN_UP_DOWN_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1366, 'THREE_CARD_POKER', 'Three Card Poker', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/THREE_CARD_POKER_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1367, 'LEGEND_OF_EASTER_ISLAND', 'Legend of Easter Island', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/LEGEND_OF_EASTER_ISLAND_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1368, 'BINGO_KITTY', 'Kitty Bingo', 'WW', 'WW', 'LK', '1', 'https://prod.wgwowgames.com/game_list/icon/BINGO_KITTY_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1369, 'ANDAR_BAHAR', 'Andar Bahar', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/ANDAR_BAHAR_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1370, 'FIREWORKS', 'Fireworks', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/FIREWORKS_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1371, 'SIC_BO', 'SicBo', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/SIC_BO_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1372, 'WIZARD_OF_OZ', 'Wizard of Oz', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/WIZARD_OF_OZ_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1373, 'THORS_HAMMER', 'Thor\'s Hammer', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/THORS_HAMMER_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1374, 'MAGICIAN', 'Magician', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/MAGICIAN_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1375, 'TIMBER_MAN', 'TimberMan', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/TIMBER_MAN_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1376, 'PUSOY_DOS', 'Pusoy Dos', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/PUSOY_DOS_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1377, 'BINGO_CARIBBEAN', 'Caribbean Adventure Bingo', 'WW', 'WW', 'LK', '1', 'https://prod.wgwowgames.com/game_list/icon/BINGO_CARIBBEAN_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1378, 'JACK_AND_THE_BEANSTALK', 'Jack and the Beanstalk', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/JACK_AND_THE_BEANSTALK_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1379, 'PUSOY', 'Pusoy', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/PUSOY_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1380, 'ROULETTE', 'Roulette', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/ROULETTE_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1381, 'NIGHT_BAR', 'Night Bar', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/NIGHT_BAR_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1382, 'TOSS_COIN', 'Toss Coin', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/TOSS_COIN_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1383, 'TAI_XIU', 'Tai Xiu', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/TAI_XIU_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1384, 'BINGO_ROCKET', 'GO for Launch! Bingo', 'WW', 'WW', 'LK', '1', 'https://prod.wgwowgames.com/game_list/icon/BINGO_ROCKET_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1385, 'TONGITS', 'Tongits', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/TONGITS_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1386, 'FATE_AND_LUCK', 'Fate and Luck', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/FATE_AND_LUCK_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1387, 'BACCARAT', 'Baccarat', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/BACCARAT_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1388, 'COLOR_GAME', 'Color Game', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/COLOR_GAME_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1389, 'BILLIONAIRE_PARTY', 'Billionaire Party', 'WW', 'WW', 'SL', '1', 'https://prod.wgwowgames.com/game_list/icon/BILLIONAIRE_PARTY_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1390, 'XOC_DIA', 'Xoc Dia', 'WW', 'WW', 'CB', '1', 'https://prod.wgwowgames.com/game_list/icon/XOC_DIA_en-us.png', 'PSE', '2025-08-28 14:45:22'),
(1391, '0_14101', 'Ragnarok : Thor vs Loki', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14101/14101_en.png', 'PSE', '2025-08-28 14:45:36'),
(1392, '0_14100', 'Koi Trio', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14100/14100_en.png', 'PSE', '2025-08-28 14:45:36'),
(1393, '0_14097', 'Fishin\' Fever X-Huge', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14097/14097_en.png', 'PSE', '2025-08-28 14:45:36'),
(1394, '0_14096', 'Lucky Elephant X-Huge', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14096/14096_en.png', 'PSE', '2025-08-28 14:45:36'),
(1395, '0_14095', 'Fortune Jewel', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14095/14095_en.png', 'PSE', '2025-08-28 14:45:36'),
(1396, '0_14094', 'Bull Treasure X-Huge', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14094/14094_en.png', 'PSE', '2025-08-28 14:45:36'),
(1397, '0_14099', 'Pop Pop Candy 1000', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14099/14099_en.png', 'PSE', '2025-08-28 14:45:36'),
(1398, '0_14098', 'Fruity Bonanza Combo', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14098/14098_en.png', 'PSE', '2025-08-28 14:45:36'),
(1399, '0_14093', 'Magic Ace WILD LOCK', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14093/14093_en.png', 'PSE', '2025-08-28 14:45:36'),
(1400, '0_14092', 'Dragon Soar - Hyper Wild', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14092/14092_en.png', 'PSE', '2025-08-28 14:45:36'),
(1401, '0_14091', 'Piggy Bank', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14091/14091_en.png', 'PSE', '2025-08-28 14:45:36'),
(1402, '0_14090', 'Wealthway', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14090/14090_en.png', 'PSE', '2025-08-28 14:45:36'),
(1403, '0_14089', 'Dragon Soar', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14089/14089_en.png', 'PSE', '2025-08-28 14:45:36'),
(1404, '0_14088', 'Magic Ace', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14088/14088_en.png', 'PSE', '2025-08-28 14:45:36'),
(1405, '0_14087', 'Pop Pop Candy', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14087/14087_en.png', 'PSE', '2025-08-28 14:45:36'),
(1406, '0_14086', 'Open Sesame Mega', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14086/14086_en.png', 'PSE', '2025-08-28 14:45:36'),
(1407, '0_14085', 'Fruity Bonanza', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14085/14085_en.png', 'PSE', '2025-08-28 14:45:36'),
(1408, '0_14042', 'Treasure Bowl X-Huge', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14042/14042_en.png', 'PSE', '2025-08-28 14:45:36'),
(1409, '0_14041', 'Mjolnir', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14041/14041_en.png', 'PSE', '2025-08-28 14:45:36'),
(1410, '0_14077', 'Trump Card', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14077/14077_en.png', 'PSE', '2025-08-28 14:45:36'),
(1411, '0_14055', 'Kong', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14055/14055_en.png', 'PSE', '2025-08-28 14:45:36'),
(1412, '0_14084', 'CaiShen Coming', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14084/14084_en.png', 'PSE', '2025-08-28 14:45:36'),
(1413, '0_14047', 'Moneybags Man', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14047/14047_en.png', 'PSE', '2025-08-28 14:45:36'),
(1414, '0_14045', 'Super Niubi Deluxe', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14045/14045_en.png', 'PSE', '2025-08-28 14:45:36'),
(1415, '0_14065', 'Blossom of Wealth', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14065/14065_en.png', 'PSE', '2025-08-28 14:45:36'),
(1416, '0_14079', 'Moneybags Man 2', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14079/14079_en.png', 'PSE', '2025-08-28 14:45:36'),
(1417, '0_14036', 'SuperNiubi', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14036/14036_en.png', 'PSE', '2025-08-28 14:45:36'),
(1418, '0_14061', 'Maya Gold Crazy', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14061/14061_en.png', 'PSE', '2025-08-28 14:45:36'),
(1419, '0_14080', 'Elemental Link Fire', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14080/14080_en.png', 'PSE', '2025-08-28 14:45:36'),
(1420, '0_14030', 'Triple King Kong', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14030/14030_en.png', 'PSE', '2025-08-28 14:45:36'),
(1421, '0_14083', 'CooCooFarm', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14083/14083_en.png', 'PSE', '2025-08-28 14:45:36'),
(1422, '0_14082', 'Elemental Link Water', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14082/14082_en.png', 'PSE', '2025-08-28 14:45:36'),
(1423, '0_14081', 'Birds Party Deluxe', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14081/14081_en.png', 'PSE', '2025-08-28 14:45:36'),
(1424, '0_14075', 'Fortune Neko', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14075/14075_en.png', 'PSE', '2025-08-28 14:45:36'),
(1425, '0_14070', 'Book of Mystery', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14070/14070_en.png', 'PSE', '2025-08-28 14:45:36'),
(1426, '0_14068', 'Prosperity Tiger', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14068/14068_en.png', 'PSE', '2025-08-28 14:45:36'),
(1427, '0_14067', 'Glamorous Girl', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14067/14067_en.png', 'PSE', '2025-08-28 14:45:36'),
(1428, '0_14063', 'Big Three Dragons', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14063/14063_en.png', 'PSE', '2025-08-28 14:45:36'),
(1429, '0_14060', 'Lantern Wealth', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14060/14060_en.png', 'PSE', '2025-08-28 14:45:36'),
(1430, '0_14059', 'Marvelous IV', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14059/14059_en.png', 'PSE', '2025-08-28 14:45:36'),
(1431, '0_14058', 'Wonder Elephant', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14058/14058_en.png', 'PSE', '2025-08-28 14:45:36'),
(1432, '0_14054', 'Lucky Diamond', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14054/14054_en.png', 'PSE', '2025-08-28 14:45:36'),
(1433, '0_14053', 'Spindrift 2', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14053/14053_en.png', 'PSE', '2025-08-28 14:45:36'),
(1434, '0_14051', 'Dragons Gate', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14051/14051_en.png', 'PSE', '2025-08-28 14:45:36'),
(1435, '0_14050', 'Spindrift', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14050/14050_en.png', 'PSE', '2025-08-28 14:45:36'),
(1436, '0_14048', 'Double Wilds', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14048/14048_en.png', 'PSE', '2025-08-28 14:45:36'),
(1437, '0_14046', 'Miner Babe', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14046/14046_en.png', 'PSE', '2025-08-28 14:45:36'),
(1438, '0_14044', 'Funky King Kong', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14044/14044_en.png', 'PSE', '2025-08-28 14:45:36'),
(1439, '0_14043', 'Golden Disco', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14043/14043_en.png', 'PSE', '2025-08-28 14:45:36'),
(1440, '0_14039', 'Fortune Treasure', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14039/14039_en.png', 'PSE', '2025-08-28 14:45:36'),
(1441, '0_14035', 'Dragons World', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14035/14035_en.png', 'PSE', '2025-08-28 14:45:36'),
(1442, '0_14034', 'GoLaiFu', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14034/14034_en.png', 'PSE', '2025-08-28 14:45:36'),
(1443, '0_14033', 'Birds Party', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14033/14033_en.png', 'PSE', '2025-08-28 14:45:36'),
(1444, '0_14029', 'Orient Animals', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14029/14029_en.png', 'PSE', '2025-08-28 14:45:36'),
(1445, '0_14027', 'Lucky Seven', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14027/14027_en.png', 'PSE', '2025-08-28 14:45:36'),
(1446, '0_14016', 'Kingsman', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14016/14016_en.png', 'PSE', '2025-08-28 14:45:36'),
(1447, '0_14010', 'Dragon', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14010/14010_en.png', 'PSE', '2025-08-28 14:45:36'),
(1448, '0_14008', 'Dragon Warrior', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14008/14008_en.png', 'PSE', '2025-08-28 14:45:36'),
(1449, '0_14006', 'Billionaire', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/14006/14006_en.png', 'PSE', '2025-08-28 14:45:36'),
(1450, '0_6001', 'Olympig', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/6001/6001_en.png', 'PSE', '2025-08-28 14:45:36'),
(1451, '0_8020', 'Open Sesame', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8020/8020_en.png', 'PSE', '2025-08-28 14:45:36'),
(1452, '0_8048', 'OpenSesame II', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8048/8048_en.png', 'PSE', '2025-08-28 14:45:36'),
(1453, '0_8003', 'Winning Mask', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8003/8003_en.png', 'PSE', '2025-08-28 14:45:36'),
(1454, '0_8047', 'Winning Mask II', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8047/8047_en.png', 'PSE', '2025-08-28 14:45:36'),
(1455, '0_8051', 'XiYangYang', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8051/8051_en.png', 'PSE', '2025-08-28 14:45:36'),
(1456, '0_8050', 'Fortune Horse', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8050/8050_en.png', 'PSE', '2025-08-28 14:45:36'),
(1457, '0_8044', 'Beauty And The Kingdom', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8044/8044_en.png', 'PSE', '2025-08-28 14:45:36'),
(1458, '0_8023', 'Olympian Temple', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8023/8023_en.png', 'PSE', '2025-08-28 14:45:36'),
(1459, '0_8022', 'Mahjong', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8022/8022_en.png', 'PSE', '2025-08-28 14:45:36'),
(1460, '0_8021', 'Banana Saga', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8021/8021_en.png', 'PSE', '2025-08-28 14:45:36'),
(1461, '0_8019', 'Four Treasures', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8019/8019_en.png', 'PSE', '2025-08-28 14:45:36'),
(1462, '0_8018', 'Napoleon', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8018/8018_en.png', 'PSE', '2025-08-28 14:45:36'),
(1463, '0_8017', 'New Year', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8017/8017_en.png', 'PSE', '2025-08-28 14:45:36'),
(1464, '0_8015', 'Moonlight Treasure', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8015/8015_en.png', 'PSE', '2025-08-28 14:45:36'),
(1465, '0_8006', 'Formosa Bear', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8006/8006_en.png', 'PSE', '2025-08-28 14:45:36'),
(1466, '0_8005', 'Llama Adventure', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8005/8005_en.png', 'PSE', '2025-08-28 14:45:36'),
(1467, '0_8004', 'Wu Kong', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8004/8004_en.png', 'PSE', '2025-08-28 14:45:36'),
(1468, '0_8002', 'Flirting Scholar Tang', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8002/8002_en.png', 'PSE', '2025-08-28 14:45:36'),
(1469, '0_8001', 'Lucky Dragons', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/8001/8001_en.png', 'PSE', '2025-08-28 14:45:36'),
(1470, '0_15012', 'Legendary 5', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/15012/15012_en.png', 'PSE', '2025-08-28 14:45:36'),
(1471, '0_15001', 'Rooster In Love', 'JD', 'JD', 'SL', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/15001/15001_en.png', 'PSE', '2025-08-28 14:45:36'),
(1472, '7_7010', 'Dragon of Demons', 'JD', 'JD', 'FH', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/7010/7010_en.png', 'PSE', '2025-08-28 14:45:36'),
(1473, '7_7009', 'Spirit Tide Legend', 'JD', 'JD', 'FH', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/7009/7009_en.png', 'PSE', '2025-08-28 14:45:36'),
(1474, '7_7008', 'Fighter Fire', 'JD', 'JD', 'FH', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/7008/7008_en.png', 'PSE', '2025-08-28 14:45:36'),
(1475, '7_7004', 'Shade Dragons Fishing', 'JD', 'JD', 'FH', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/7004/7004_en.png', 'PSE', '2025-08-28 14:45:36'),
(1476, '7_7003', 'Cai Shen Fishing', 'JD', 'JD', 'FH', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/7003/7003_en.png', 'PSE', '2025-08-28 14:45:36'),
(1477, '7_7006', 'Dragon Master', 'JD', 'JD', 'FH', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/7006/7006_en.png', 'PSE', '2025-08-28 14:45:36'),
(1478, '7_7005', 'Fishing YiLuFa', 'JD', 'JD', 'FH', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/7005/7005_en.png', 'PSE', '2025-08-28 14:45:36'),
(1479, '7_7002', 'Dragon Fishing II', 'JD', 'JD', 'FH', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/7002/7002_en.png', 'PSE', '2025-08-28 14:45:36'),
(1480, '7_7001', 'Dragon Fishing', 'JD', 'JD', 'FH', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/7001/7001_en.png', 'PSE', '2025-08-28 14:45:36'),
(1481, '7_7007', 'Fishing Disco', 'JD', 'JD', 'FH', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/7007/7007_en.png', 'PSE', '2025-08-28 14:45:36'),
(1482, '9_9024', 'Piggy Bank TapTap', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9024/9024_en.png', 'PSE', '2025-08-28 14:45:36'),
(1483, '9_9023', 'Aviator Extra Bet', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9023/9023_en.png', 'PSE', '2025-08-28 14:45:36'),
(1484, '9_9021', 'Mines 2', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9021/9021_en.png', 'PSE', '2025-08-28 14:45:36'),
(1485, '9_9020', 'Mole Crash', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9020/9020_en.png', 'PSE', '2025-08-28 14:45:36'),
(1486, '9_9019', 'Dice', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9019/9019_en.png', 'PSE', '2025-08-28 14:45:36'),
(1487, '9_9018', 'Plinko', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9018/9018_en.png', 'PSE', '2025-08-28 14:45:36'),
(1488, '9_9017', 'HiLo', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9017/9017_en.png', 'PSE', '2025-08-28 14:45:36'),
(1489, '9_9016', 'Goal', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9016/9016_en.png', 'PSE', '2025-08-28 14:45:36'),
(1490, '9_9015', 'Firework Burst', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9015/9015_en.png', 'PSE', '2025-08-28 14:45:36'),
(1491, '9_9014', 'Mines', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9014/9014_en.png', 'PSE', '2025-08-28 14:45:36'),
(1492, '9_9012', 'Jogo Do Bicho', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9012/9012_en.png', 'PSE', '2025-08-28 14:45:36'),
(1493, '9_9013', 'Galaxy Burst', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9013/9013_en.png', 'PSE', '2025-08-28 14:45:36'),
(1494, '9_9011', 'CaiShen Party', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9011/9011_en.png', 'PSE', '2025-08-28 14:45:36'),
(1495, '9_9010', 'Lucky Color Game', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9010/9010_en.png', 'PSE', '2025-08-28 14:45:36'),
(1496, '9_9009', 'KingOfFootball', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9009/9009_en.png', 'PSE', '2025-08-28 14:45:36'),
(1497, '9_9008', 'Crazy King Kong', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9008/9008_en.png', 'PSE', '2025-08-28 14:45:36'),
(1498, '9_9007', 'Super Super Fruit', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9007/9007_en.png', 'PSE', '2025-08-28 14:45:36'),
(1499, '9_9006', 'Huaguoshan Legends', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9006/9006_en.png', 'PSE', '2025-08-28 14:45:36'),
(1500, '9_9004', 'Beer Tycoon', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9004/9004_en.png', 'PSE', '2025-08-28 14:45:36'),
(1501, '9_9002', 'Happy New Year', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9002/9002_en.png', 'PSE', '2025-08-28 14:45:36'),
(1502, '9_9001', 'Classic Mario', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9001/9001_en.png', 'PSE', '2025-08-28 14:45:36'),
(1503, '9_9003', 'Birds and Animals', 'JD', 'JD', 'OT', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/9003/9003_en.png', 'PSE', '2025-08-28 14:45:36'),
(1504, '12_12003', 'Happy Lottery', 'JD', 'JD', 'LK', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/12003/12003_en.png', 'PSE', '2025-08-28 14:45:36'),
(1505, '12_12002', 'Gold Rooster Lottery', 'JD', 'JD', 'LK', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/12002/12002_en.png', 'PSE', '2025-08-28 14:45:36'),
(1506, '12_12001', 'Cai Shen Bingo', 'JD', 'JD', 'LK', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/12001/12001_en.png', 'PSE', '2025-08-28 14:45:36'),
(1507, '18_18026', 'Dragon Tiger - Joker Bonus', 'JD', 'JD', 'CB', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/18026/18026_en.png', 'PSE', '2025-08-28 14:45:36'),
(1508, '18_18022', 'Poker Racing', 'JD', 'JD', 'CB', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/18022/18022_en.png', 'PSE', '2025-08-28 14:45:36'),
(1509, '18_18013', 'TongbiLiuNiu', 'JD', 'JD', 'CB', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/18013/18013_en.png', 'PSE', '2025-08-28 14:45:36'),
(1510, '18_18004', 'YaZhuangAceyDeucey', 'JD', 'JD', 'CB', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/18004/18004_en.png', 'PSE', '2025-08-28 14:45:36'),
(1511, '18_18002', 'QiangZhuangNiuNiu', 'JD', 'JD', 'CB', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/18002/18002_en.png', 'PSE', '2025-08-28 14:45:36'),
(1512, '18_18001', 'TongbiNiuNiu', 'JD', 'JD', 'CB', '1', 'https://dluqiiiaw.cnwzhy.com/jdb-assetsv3/games/18001/18001_en.png', 'PSE', '2025-08-28 14:45:36'),
(1513, '35015', 'Wonders of Grand Canyon', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35015.png', 'PSE', '2025-08-28 14:46:03'),
(1514, '35014', 'Wonders of Giza Pyramid', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35014.png', 'PSE', '2025-08-28 14:46:03'),
(1515, '35012', 'Space Quest: Earth', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35012.png', 'PSE', '2025-08-28 14:46:03'),
(1516, '35013', 'God\'s Gambit: Poseidon', 'L1', 'L1', 'SL', '1', 'https://l22gth.l22play.com/thumbs/web/35013.png', 'PSE', '2025-08-28 14:46:03'),
(1517, '30016', 'Kraken Queen', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30016.png', 'PSE', '2025-08-28 14:46:03'),
(1518, '35011', 'Space Quest: Moon', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35011.png', 'PSE', '2025-08-28 14:46:03'),
(1519, '30012', 'Mahjong Style', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30012.png', 'PSE', '2025-08-28 14:46:03'),
(1520, '35010', 'Space Quest: Neptune', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35010.png', 'PSE', '2025-08-28 14:46:03'),
(1521, '30005', 'Queen Femida', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30005.png', 'PSE', '2025-08-28 14:46:03'),
(1522, '35008', 'Wonders of Machu Picchu', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35008.png', 'PSE', '2025-08-28 14:46:03'),
(1523, '30019', 'Mobox Olympia', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30019.png', 'PSE', '2025-08-28 14:46:03'),
(1524, '35007', 'Wonders of Hanging Garden', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35007.png', 'PSE', '2025-08-28 14:46:03'),
(1525, '30018', 'Into the Fay: Nixie', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30018.png', 'PSE', '2025-08-28 14:46:03'),
(1526, '35006', 'Wonders of Taj Mahal', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35006.png', 'PSE', '2025-08-28 14:46:03'),
(1527, '30024', 'DragonWish', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30024.png', 'PSE', '2025-08-28 14:46:03'),
(1528, '35005', 'Slithering Riches', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35005.png', 'PSE', '2025-08-28 14:46:03'),
(1529, '30002', 'Fortune Realm', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30002.png', 'PSE', '2025-08-28 14:46:03'),
(1530, '35009', 'Space Quest: Mars', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35009.png', 'PSE', '2025-08-28 14:46:03'),
(1531, '30000', 'Candy Bomb', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30000.png', 'PSE', '2025-08-28 14:46:03'),
(1532, '30015', 'Fortune Dance', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30015.png', 'PSE', '2025-08-28 14:46:03'),
(1533, '30036', 'Shipwrecked Riches', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30036.png', 'PSE', '2025-08-28 14:46:03'),
(1534, '30011', 'Dragon FAFAFA', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30011.png', 'PSE', '2025-08-28 14:46:03'),
(1535, '38002', 'Phoenix Slot4D', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/38002.png', 'PSE', '2025-08-28 14:46:03'),
(1536, '30025', 'FieryLady', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30025.png', 'PSE', '2025-08-28 14:46:03'),
(1537, '38003', 'Tiger Slot4D', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/38003.png', 'PSE', '2025-08-28 14:46:03'),
(1538, '30001', 'The Great Sorcery', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30001.png', 'PSE', '2025-08-28 14:46:03'),
(1539, '38005', 'Lion Dance Slot4D', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/38005.png', 'PSE', '2025-08-28 14:46:03'),
(1540, '30004', 'Illuvium Master', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30004.png', 'PSE', '2025-08-28 14:46:03'),
(1541, '38006', 'Lucky Cat Slot4D', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/38006.png', 'PSE', '2025-08-28 14:46:03'),
(1542, '30010', 'B.P. in METAVERSE', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30010.png', 'PSE', '2025-08-28 14:46:03'),
(1543, '38004', 'Macau Slot4D', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/38004.png', 'PSE', '2025-08-28 14:46:03'),
(1544, '30021', 'Mask of Truth Jumboways', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30021.png', 'PSE', '2025-08-28 14:46:03'),
(1545, '38001', 'Slot4D', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/38001.png', 'PSE', '2025-08-28 14:46:03'),
(1546, '30020', 'Apes Squad', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30020.png', 'PSE', '2025-08-28 14:46:03'),
(1547, '30037', 'Quantum of Giza', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30037.png', 'PSE', '2025-08-28 14:46:03'),
(1548, '30022', 'Panda\'s Realm', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30022.png', 'PSE', '2025-08-28 14:46:03'),
(1549, '35000', 'Great Wall of Meta Dragon', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35000.png', 'PSE', '2025-08-28 14:46:03'),
(1550, '30006', 'Crypto Coins', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30006.png', 'PSE', '2025-08-28 14:46:03'),
(1551, '30017', 'Into the Fay: Snowie', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30017.png', 'PSE', '2025-08-28 14:46:03'),
(1552, '30007', 'Dragon\'s Treasure', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30007.png', 'PSE', '2025-08-28 14:46:03'),
(1553, '30038', 'Lucky Coins', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30038.png', 'PSE', '2025-08-28 14:46:03'),
(1554, '30008', 'AxieUniverse', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30008.png', 'PSE', '2025-08-28 14:46:03'),
(1555, '35001', 'Winter Winnings', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35001.png', 'PSE', '2025-08-28 14:46:03'),
(1556, '30003', 'Oni Cosmic atlas', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30003.png', 'PSE', '2025-08-28 14:46:03'),
(1557, '30039', 'Bonsai of the Riches', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30039.png', 'PSE', '2025-08-28 14:46:03'),
(1558, '30027', 'Block Buster', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30027.png', 'PSE', '2025-08-28 14:46:03'),
(1559, '30028', 'Sanctum of Savannah', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30028.png', 'PSE', '2025-08-28 14:46:03'),
(1560, '35002', 'Classic Diamond x5', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35002.png', 'PSE', '2025-08-28 14:46:03'),
(1561, '30031', 'Advent of the Dragon', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30031.png', 'PSE', '2025-08-28 14:46:03'),
(1562, '30029', 'Bloodmoon Amazonia', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30029.png', 'PSE', '2025-08-28 14:46:03'),
(1563, '39999', 'Jarvis', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30026.png', 'PSE', '2025-08-28 14:46:03'),
(1564, '35003', 'Princess & the Evil Witch', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/35003.png', 'PSE', '2025-08-28 14:46:03'),
(1565, '30023', 'Into the Fay: Ashley', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30023.png', 'PSE', '2025-08-28 14:46:03'),
(1566, '30034', 'Goal Rush', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30034.png', 'PSE', '2025-08-28 14:46:03'),
(1567, '30032', 'Kingdom of Luck', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30032.png', 'PSE', '2025-08-28 14:46:03'),
(1568, '30033', 'God\'s Gambit: Hades', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30033.png', 'PSE', '2025-08-28 14:46:03'),
(1569, '30040', 'Panthera Pardus', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30040.png', 'PSE', '2025-08-28 14:46:03'),
(1570, '30030', 'Santa\'s Payday', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30030.png', 'PSE', '2025-08-28 14:46:03'),
(1571, '30041', 'Buffalo Blaze', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30041.png', 'PSE', '2025-08-28 14:46:03'),
(1572, '30013', 'MetaSpace', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30013.png', 'PSE', '2025-08-28 14:46:03'),
(1573, '30035', 'God\'s Gambit: Zeus', 'L1', 'L1', 'SL', '1', 'https://gth.l22play.com/thumbs/web/30035.png', 'PSE', '2025-08-28 14:46:03'),
(1574, 'SMG_luckyTwinsWildsJackpots', 'Lucky Twins Wilds Jackpots', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyTwinsWildsJackpots.png', 'PSE', '2025-08-28 14:46:16'),
(1575, 'SMG_bassCatchSuperUp', 'Bass Catch SUPER UP', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bassCatchSuperUp.png', 'PSE', '2025-08-28 14:46:16'),
(1576, 'SMG_africanWilds', 'African Wilds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_africanWilds.png', 'PSE', '2025-08-28 14:46:16'),
(1577, 'SMG_plinkoPop', 'Plinko Pop', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_plinkoPop.png', 'PSE', '2025-08-28 14:46:16'),
(1578, 'SMG_bearsMakeBankPowerCombo', 'Bears Make Bank! Power Combo', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bearsMakeBankPowerCombo.png', 'PSE', '2025-08-28 14:46:16'),
(1579, 'SMG_jokerIceFrenzyEpicStrike', 'Joker Ice Frenzy Epic Strike', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_jokerIceFrenzyEpicStrike.png', 'PSE', '2025-08-28 14:46:16'),
(1580, 'SMG_chickenNightFever', 'Chicken Night Fever', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_chickenNightFever.png', 'PSE', '2025-08-28 14:46:16'),
(1581, 'SMG_minePop', 'Mine Pop', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_minePop.png', 'PSE', '2025-08-28 14:46:16'),
(1582, 'SMG_dicePop', 'Dice Pop', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_dicePop.png', 'PSE', '2025-08-28 14:46:16'),
(1583, 'SMG_moonlightRomanceTheAwakening', 'Moonlight Romance - The Awakening', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_moonlightRomanceTheAwakening.png', 'PSE', '2025-08-28 14:46:16'),
(1584, 'SMG_diamondInferno', 'Diamond Inferno', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_diamondInferno.png', 'PSE', '2025-08-28 14:46:16'),
(1585, 'P2_devilsfinger', 'Devil’s Finger', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/P2_devilsfinger.png', 'PSE', '2025-08-28 14:46:16'),
(1586, 'SMG_sugarMania8000', 'Sugar Mania 8000', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_sugarMania8000.png', 'PSE', '2025-08-28 14:46:16'),
(1587, 'SMG_luckyTwinsWilds', 'Lucky Twins Wilds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyTwinsWilds.png', 'PSE', '2025-08-28 14:46:16'),
(1588, 'SMG_almightyZeusEmpire', 'Almighty Zeus Empire', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_almightyZeusEmpire.png', 'PSE', '2025-08-28 14:46:16'),
(1589, 'SMG_candyRushWilds', 'Candy Rush Wilds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_candyRushWilds.png', 'PSE', '2025-08-28 14:46:16');
INSERT INTO `tb_gamelist` (`cuid`, `game_vendor`, `game_name`, `game_provider_original`, `game_provider`, `game_type`, `game_status`, `game_image`, `providerapi`, `created_at`) VALUES
(1590, 'SMG_pongPongMahjongJackpots', 'Pong Pong Mahjong Jackpots', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_pongPongMahjongJackpots.png', 'PSE', '2025-08-28 14:46:16'),
(1591, 'SMG_3BlazingVolcanoesPowerCombo', '3 Blazing Volcanoes Power Combo', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_3BlazingVolcanoesPowerCombo.png', 'PSE', '2025-08-28 14:46:16'),
(1592, 'SMG_almightyZeusWilds', 'Almighty Zeus Wilds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_almightyZeusWilds.png', 'PSE', '2025-08-28 14:46:16'),
(1593, 'SMG_sweetJarCombo', 'Sweet Jar Combo', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_sweetJarCombo.png', 'PSE', '2025-08-28 14:46:16'),
(1594, 'SMG_wildfireWins', 'Wildfire Wins', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_wildfireWins.png', 'PSE', '2025-08-28 14:46:16'),
(1595, 'SMG_pongPongMahjong', 'Pong Pong Mahjong', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_pongPongMahjong.png', 'PSE', '2025-08-28 14:46:16'),
(1596, 'SMG_10000Wishes', '10000 Wishes', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_10000Wishes.png', 'PSE', '2025-08-28 14:46:16'),
(1597, 'SMG_moneyOnReels', 'Money On Reels', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_moneyOnReels.png', 'PSE', '2025-08-28 14:46:16'),
(1598, 'SMG_ancientFortunesPoseidonMegaways', 'Ancient Fortunes: Poseidon Megaways ™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_ancientFortunesPoseidonMegaways.png', 'PSE', '2025-08-28 14:46:16'),
(1599, 'SMG_candyRushWilds2', 'Candy Rush Wilds 2', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_candyRushWilds2.png', 'PSE', '2025-08-28 14:46:16'),
(1600, 'SMG_gatesOfAsgardPowerCombo', 'Gates of Asgard Power Combo', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_gatesOfAsgardPowerCombo.png', 'PSE', '2025-08-28 14:46:16'),
(1601, 'SMG_broncoBigBounty', 'Bronco Big Bounty', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_broncoBigBounty.png', 'PSE', '2025-08-28 14:46:16'),
(1602, 'SMG_dragonsRhythmLinkAndWin', 'Dragon\'s Rhythm Link&Win', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_dragonsRhythmLinkAndWin.png', 'PSE', '2025-08-28 14:46:16'),
(1603, 'SMG_aztecTripleRichesPowerCombo', 'Aztec Triple Riches Power Combo', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_aztecTripleRichesPowerCombo.png', 'PSE', '2025-08-28 14:46:16'),
(1604, 'SMG_luckyTwinsPowerClusters', 'Lucky Twins PowerClusters', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyTwinsPowerClusters.png', 'PSE', '2025-08-28 14:46:16'),
(1605, 'SMG_goldBlitz', 'Gold Blitz', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_goldBlitz.png', 'PSE', '2025-08-28 14:46:16'),
(1606, 'SMG_ancientFortunesZeus', 'Ancient Fortunes: Zeus', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_ancientFortunesZeus.png', 'PSE', '2025-08-28 14:46:16'),
(1607, 'SMG_basketballStarWilds', 'Basketball Star Wilds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_basketballStarWilds.png', 'PSE', '2025-08-28 14:46:16'),
(1608, 'SMG_bountifulBirds', 'Bountiful Birds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bountifulBirds.png', 'PSE', '2025-08-28 14:46:16'),
(1609, 'SMG_luckyLittleDragons', 'Lucky Little Dragons', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyLittleDragons.png', 'PSE', '2025-08-28 14:46:16'),
(1610, 'SMG_andvariTheGoldenFish', 'Andvari The Golden Fish', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_andvariTheGoldenFish.png', 'PSE', '2025-08-28 14:46:16'),
(1611, 'SMG_queenOfCairo', 'Queen of Cairo', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_queenOfCairo.png', 'PSE', '2025-08-28 14:46:16'),
(1612, 'SMG_breakAwayDeluxe', 'Break Away Deluxe', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_breakAwayDeluxe.png', 'PSE', '2025-08-28 14:46:16'),
(1613, 'SMG_chroniclesOfOlympusIIZeus', 'Chronicles of Olympus II Zeus', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_chroniclesOfOlympusIIZeus.png', 'PSE', '2025-08-28 14:46:16'),
(1614, 'SMG_massiveGold', 'Massive Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_massiveGold.png', 'PSE', '2025-08-28 14:46:16'),
(1615, 'SMG_flyX', 'FlyX', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_flyX.png', 'PSE', '2025-08-28 14:46:16'),
(1616, 'SMG_starStashWild7S', 'Star Stash Wild 7\'s', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_starStashWild7S.png', 'PSE', '2025-08-28 14:46:16'),
(1617, 'SMG_dragonsLoot', 'Dragon’s Loot Link&Win 4Tune™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_dragonsLoot.png', 'PSE', '2025-08-28 14:46:16'),
(1618, 'SMG_breakAwayGold', 'Break Away Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_breakAwayGold.png', 'PSE', '2025-08-28 14:46:16'),
(1619, 'SMG_moneyDragon', 'Money Dragon', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_moneyDragon.png', 'PSE', '2025-08-28 14:46:16'),
(1620, 'SMG_goldInfinity', 'Gold Infinity', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_goldInfinity.png', 'PSE', '2025-08-28 14:46:16'),
(1621, 'SMG_diamondDivaOinkBonanza', 'Diamond Diva Oink Bonanza', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_diamondDivaOinkBonanza.png', 'PSE', '2025-08-28 14:46:16'),
(1622, 'SMG_treasureStacksWilds', 'Treasure Stacks Wilds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_treasureStacksWilds.png', 'PSE', '2025-08-28 14:46:16'),
(1623, 'SMG_goldBlitzExtreme', 'Gold Blitz Extreme™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_goldBlitzExtreme.png', 'PSE', '2025-08-28 14:46:16'),
(1624, 'SMG_mastersOfOlympus', 'Masters of Olympus', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_mastersOfOlympus.png', 'PSE', '2025-08-28 14:46:16'),
(1625, 'SMG_mrPiggEBank', 'Mr. Pigg E. Bank™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_mrPiggEBank.png', 'PSE', '2025-08-28 14:46:16'),
(1626, 'SMG_cashBlitz', 'Cash Blitz', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_cashBlitz.png', 'PSE', '2025-08-28 14:46:16'),
(1627, 'SMG_icePopParty', 'Ice Pop Party', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_icePopParty.png', 'PSE', '2025-08-28 14:46:16'),
(1628, 'SMG_monkeyBonanza', 'Monkey Bonanza', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_monkeyBonanza.png', 'PSE', '2025-08-28 14:46:16'),
(1629, 'SMG_mammothTripleRiches', 'Mammoth Triple Riches', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_mammothTripleRiches.png', 'PSE', '2025-08-28 14:46:16'),
(1630, 'SMG_wildfireWinsExtreme', 'Wildfire Wins Extreme', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_wildfireWinsExtreme.png', 'PSE', '2025-08-28 14:46:16'),
(1631, 'SMG_siennaSteele', 'Sienna Steele', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_siennaSteele.png', 'PSE', '2025-08-28 14:46:16'),
(1632, 'SMG_almightyPoseidonEmpire', 'Almighty Poseidon Empire', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_almightyPoseidonEmpire.png', 'PSE', '2025-08-28 14:46:16'),
(1633, 'SMG_luckyTwinsAnd9Lions', 'Lucky Twins & 9 Lions', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyTwinsAnd9Lions.png', 'PSE', '2025-08-28 14:46:16'),
(1634, 'SMG_luckyTwins', 'Lucky Twins', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyTwins.png', 'PSE', '2025-08-28 14:46:16'),
(1635, 'SMG_soccerStriker', 'Soccer Striker', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_soccerStriker.png', 'PSE', '2025-08-28 14:46:16'),
(1636, 'SMG_maskOfAmun', 'Mask of Amun', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_maskOfAmun.png', 'PSE', '2025-08-28 14:46:16'),
(1637, 'SMG_geniesMagicWishes', 'Genie\'s Magic Wishes', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_geniesMagicWishes.png', 'PSE', '2025-08-28 14:46:16'),
(1638, 'SMG_goFishingReelinFortunes', 'Go! Fishing: Reelin\' Fortunes', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_goFishingReelinFortunes.png', 'PSE', '2025-08-28 14:46:16'),
(1639, 'SMG_reignOfFire', 'Reign of Fire', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_reignOfFire.png', 'PSE', '2025-08-28 14:46:16'),
(1640, 'SMG_cashNRichesMegaways', 'Cash \'N Riches Megaways™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_cashNRichesMegaways.png', 'PSE', '2025-08-28 14:46:16'),
(1641, 'SMG_godsPyramidsPowerCombo', 'Gods & Pyramids Power Combo™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_godsPyramidsPowerCombo.png', 'PSE', '2025-08-28 14:46:16'),
(1642, 'SMG_breakAwayMax', 'Break Away Max', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_breakAwayMax.png', 'PSE', '2025-08-28 14:46:16'),
(1643, 'SMG_fruitBlast', 'Fruit Blast', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fruitBlast.png', 'PSE', '2025-08-28 14:46:16'),
(1644, 'SMG_bigTop', 'Big Top', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bigTop.png', 'PSE', '2025-08-28 14:46:16'),
(1645, 'SMG_sugarCrazeBonanza', 'Sugar Craze Bonanza', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_sugarCrazeBonanza.png', 'PSE', '2025-08-28 14:46:16'),
(1646, 'SMG_treasureStacks', 'Treasure Stacks', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_treasureStacks.png', 'PSE', '2025-08-28 14:46:16'),
(1647, 'SMG_mastersOfValhalla', 'Masters of Valhalla', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_mastersOfValhalla.png', 'PSE', '2025-08-28 14:46:16'),
(1648, 'SMG_playboyWilds', 'Playboy Wilds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_playboyWilds.png', 'PSE', '2025-08-28 14:46:16'),
(1649, 'SMG_mightyPanda', 'Mighty Panda', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_mightyPanda.png', 'PSE', '2025-08-28 14:46:16'),
(1650, 'SMG_hatchingGoldRoostersRiches', 'Hatching Gold! Rooster\'s Riches', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_hatchingGoldRoostersRiches.png', 'PSE', '2025-08-28 14:46:16'),
(1651, 'SMG_treasuresOfLionCity', 'Treasures of Lion City', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_treasuresOfLionCity.png', 'PSE', '2025-08-28 14:46:16'),
(1652, 'SMG_luckyKoi', 'Lucky Koi', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyKoi.png', 'PSE', '2025-08-28 14:46:16'),
(1653, 'SMG_fishinChristmasPotsOfGold', 'Fishin Christmas Pots of Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fishinChristmasPotsOfGold.png', 'PSE', '2025-08-28 14:46:16'),
(1654, 'SMG_jokerBurstFrenzy', 'Joker Burst Frenzy', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_jokerBurstFrenzy.png', 'PSE', '2025-08-28 14:46:16'),
(1655, 'SMG_fishinPotsOfGold', 'Fishin\' Pots of Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fishinPotsOfGold.png', 'PSE', '2025-08-28 14:46:16'),
(1656, 'SMG_777superBigBuildUpDeluxe', '777 Super BigBuildUp™ Deluxe™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_777superBigBuildUpDeluxe.png', 'PSE', '2025-08-28 14:46:16'),
(1657, 'SMG_amazonLostGold', 'Amazon - Lost Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_amazonLostGold.png', 'PSE', '2025-08-28 14:46:16'),
(1658, 'SMG_bonnysTreasures', 'Bonny\'s Treasures', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bonnysTreasures.png', 'PSE', '2025-08-28 14:46:16'),
(1659, 'SMG_queenofAlexandria', 'Queen of Alexandria™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_queenofAlexandria.png', 'PSE', '2025-08-28 14:46:16'),
(1660, 'SMG_mummyLockRiches', 'Mummy Lock Riches', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_mummyLockRiches.png', 'PSE', '2025-08-28 14:46:16'),
(1661, 'SMG_777MegaDeluxe', '777 Mega Deluxe™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_777MegaDeluxe.png', 'PSE', '2025-08-28 14:46:16'),
(1662, 'SMG_theIncredibleBalloonMachine', 'The Incredible Balloon Machine', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_theIncredibleBalloonMachine.png', 'PSE', '2025-08-28 14:46:16'),
(1663, 'SMG_fireAndRosesJoker', 'Fire and Roses Joker', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fireAndRosesJoker.png', 'PSE', '2025-08-28 14:46:16'),
(1664, 'SMG_fishinBiggerPots', 'Fishin\' Bigger Pots of Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fishinBiggerPots.png', 'PSE', '2025-08-28 14:46:16'),
(1665, 'SMG_romeFightForGold', 'Rome: Fight For Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_romeFightForGold.png', 'PSE', '2025-08-28 14:46:16'),
(1666, 'SMG_9masksOfFireHyperSpins', '9 Masks of Fire™ HyperSpins™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_9masksOfFireHyperSpins.png', 'PSE', '2025-08-28 14:46:16'),
(1667, 'SMG_breakAwayLuckyWilds', 'Break Away Lucky Wilds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_breakAwayLuckyWilds.png', 'PSE', '2025-08-28 14:46:16'),
(1668, 'SMG_wolfBlazeMegaways', 'Wolf Blaze™ Megaways™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_wolfBlazeMegaways.png', 'PSE', '2025-08-28 14:46:16'),
(1669, 'SMG_auroraWilds', 'Aurora Wilds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_auroraWilds.png', 'PSE', '2025-08-28 14:46:16'),
(1670, 'SMG_breakAwayUltra', 'Break Away Ultra', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_breakAwayUltra.png', 'PSE', '2025-08-28 14:46:16'),
(1671, 'SMG_hadesLostTreasures', 'Hades Lost Treasures', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_hadesLostTreasures.png', 'PSE', '2025-08-28 14:46:16'),
(1672, 'SMG_luckyTwinsLinkAndWin', 'Lucky Twins Link and Win', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyTwinsLinkAndWin.png', 'PSE', '2025-08-28 14:46:16'),
(1673, 'SMG_bigButtonBash', 'Big Button Bash', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bigButtonBash.png', 'PSE', '2025-08-28 14:46:16'),
(1674, 'SMG_yamiWarriors', 'Yami Warriors', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_yamiWarriors.png', 'PSE', '2025-08-28 14:46:16'),
(1675, 'SMG_arcticWolfTripleRiches', 'Arctic Wolf Triple Riches', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_arcticWolfTripleRiches.png', 'PSE', '2025-08-28 14:46:16'),
(1676, 'SMG_pizzaFiesta', 'Pizza Fiesta', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_pizzaFiesta.png', 'PSE', '2025-08-28 14:46:16'),
(1677, 'SMG_monkeysTreasureQuest', 'Monkey\'s Treasure Quest', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_monkeysTreasureQuest.png', 'PSE', '2025-08-28 14:46:16'),
(1678, 'SMG_luckyRumblePowerSurge', 'Lucky Rumble Power Surge', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyRumblePowerSurge.png', 'PSE', '2025-08-28 14:46:16'),
(1679, 'SMG_3rdBase', '3rd Base', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_3rdBase.png', 'PSE', '2025-08-28 14:46:16'),
(1680, 'SMG_heavenlyElephantFortune', 'Heavenly Elephant Fortune', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_heavenlyElephantFortune.png', 'PSE', '2025-08-28 14:46:16'),
(1681, 'SMG_splashOfRiches', 'Splash of Riches', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_splashOfRiches.png', 'PSE', '2025-08-28 14:46:16'),
(1682, 'SMG_kungPaoPanda', 'Kung Pao Panda', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_kungPaoPanda.png', 'PSE', '2025-08-28 14:46:16'),
(1683, 'SMG_royalThunderRiders', 'Royal Thunder Riders', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_royalThunderRiders.png', 'PSE', '2025-08-28 14:46:16'),
(1684, 'SMG_3AngelsPowerCombo', '3 Angels Power Combo', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_3AngelsPowerCombo.png', 'PSE', '2025-08-28 14:46:16'),
(1685, 'SMG_almightyDionysusEmpire', 'Almighty Dionysus Empire', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_almightyDionysusEmpire.png', 'PSE', '2025-08-28 14:46:16'),
(1686, 'SMG_frankenstein', 'Frankenstein', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_frankenstein.png', 'PSE', '2025-08-28 14:46:16'),
(1687, 'SMG_carnavalFiesta', 'Carnaval Fiesta', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_carnavalFiesta.png', 'PSE', '2025-08-28 14:46:16'),
(1688, 'SMG_bookOfWolves', 'Book of Wolves', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bookOfWolves.png', 'PSE', '2025-08-28 14:46:16'),
(1689, 'SMG_crazyBobBonanza', 'Crazy Bob Bonanza', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_crazyBobBonanza.png', 'PSE', '2025-08-28 14:46:16'),
(1690, 'SMG_3LaughingLionsPowerCombo', '3 Laughing Lions Power Combo™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_3LaughingLionsPowerCombo.png', 'PSE', '2025-08-28 14:46:16'),
(1691, 'SMG_almightyAthenaEmpire', 'Almighty Athena Empire', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_almightyAthenaEmpire.png', 'PSE', '2025-08-28 14:46:16'),
(1692, 'SFG_WDNezhaFishingLegend', 'WD Nezha Fishing Legend', 'MP', 'MP', 'FH', '1', 'https://img.55115515.com/MP/en-us/SFG_WDNezhaFishingLegend.png', 'PSE', '2025-08-28 14:46:16'),
(1693, 'SMG_sharkPlatinum', 'Shark Platinum', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_sharkPlatinum.png', 'PSE', '2025-08-28 14:46:16'),
(1694, 'SMG_108HeroesWaterMargin', '108 Heroes Water Margin', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_108HeroesWaterMargin.png', 'PSE', '2025-08-28 14:46:16'),
(1695, 'SFG_WDGoldenFuwaFishing', 'WD Golden Fuwa Fishing', 'MP', 'MP', 'FH', '1', 'https://img.55115515.com/MP/en-us/SFG_WDGoldenFuwaFishing.png', 'PSE', '2025-08-28 14:46:16'),
(1696, 'SMG_crazyRichTigers', 'Crazy Rich Tigers', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_crazyRichTigers.png', 'PSE', '2025-08-28 14:46:16'),
(1697, 'SMG_miningPotsOfGold', 'Mining Pots of Gold™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_miningPotsOfGold.png', 'PSE', '2025-08-28 14:46:16'),
(1698, 'SMG_fireAndRosesJollyJoker', 'Fire and Roses Jolly Joker™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fireAndRosesJollyJoker.png', 'PSE', '2025-08-28 14:46:16'),
(1699, 'SFG_WDMerryIslandFishing', 'WD Merry Island Fishing', 'MP', 'MP', 'FH', '1', 'https://img.55115515.com/MP/en-us/SFG_WDMerryIslandFishing.png', 'PSE', '2025-08-28 14:46:16'),
(1700, 'SMG_9EnchantedBeans', '9 Enchanted Beans', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_9EnchantedBeans.png', 'PSE', '2025-08-28 14:46:16'),
(1701, 'SMG_fishinPotsOfGoldGoldBlitz', 'Fishin\' Pots of Gold™: Gold Blitz™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fishinPotsOfGoldGoldBlitz.png', 'PSE', '2025-08-28 14:46:16'),
(1702, 'SMG_theEternalWidow', 'The Eternal Widow™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_theEternalWidow.png', 'PSE', '2025-08-28 14:46:16'),
(1703, 'SMG_legendaryTreasures', 'Legendary Treasures™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_legendaryTreasures.png', 'PSE', '2025-08-28 14:46:16'),
(1704, 'SMG_gemFireFrenzy', 'Gem Fire Frenzy', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_gemFireFrenzy.png', 'PSE', '2025-08-28 14:46:16'),
(1705, 'SMG_queensOfRa', 'Queens of Ra POWER COMBO', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_queensOfRa.png', 'PSE', '2025-08-28 14:46:16'),
(1706, 'SMG_unusualSuspects', 'Unusual Suspects™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_unusualSuspects.png', 'PSE', '2025-08-28 14:46:16'),
(1707, 'SMG_anvilAndOre', 'Anvil and Ore', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_anvilAndOre.png', 'PSE', '2025-08-28 14:46:16'),
(1708, 'SMG_tikiTikiBoom', 'Tiki Tiki Boom™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_tikiTikiBoom.png', 'PSE', '2025-08-28 14:46:16'),
(1709, 'SMG_asgardianFire', 'Asgardian Fire™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_asgardianFire.png', 'PSE', '2025-08-28 14:46:16'),
(1710, 'SFG_WDGoldenTyrantFishing', 'WD Golden Tyrant Fishing', 'MP', 'MP', 'FH', '1', 'https://img.55115515.com/MP/en-us/SFG_WDGoldenTyrantFishing.png', 'PSE', '2025-08-28 14:46:16'),
(1711, 'SMG_9PotsOfGoldMegaways', '9 Pots of Gold Megaways', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_9PotsOfGoldMegaways.png', 'PSE', '2025-08-28 14:46:16'),
(1712, 'SMG_championsOfOlympus', 'Champions of Olympus', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_championsOfOlympus.png', 'PSE', '2025-08-28 14:46:16'),
(1713, 'SMG_dogDays', 'Dog Days', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_dogDays.png', 'PSE', '2025-08-28 14:46:16'),
(1714, 'SMG_andvariTheMagicRing', 'Andvari: The Magic Ring', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_andvariTheMagicRing.png', 'PSE', '2025-08-28 14:46:16'),
(1715, 'SMG_magicJokers', 'Magic Jokers', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_magicJokers.png', 'PSE', '2025-08-28 14:46:16'),
(1716, 'SMG_fishEmUp', 'Fish Em Up', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fishEmUp.png', 'PSE', '2025-08-28 14:46:16'),
(1717, 'SMG_stormToRiches', 'Storm To Riches', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_stormToRiches.png', 'PSE', '2025-08-28 14:46:16'),
(1718, 'SMG_tippyTavern', 'Tippy Tavern', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_tippyTavern.png', 'PSE', '2025-08-28 14:46:16'),
(1719, 'SMG_grannyVsZombies', 'Granny Vs Zombies', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_grannyVsZombies.png', 'PSE', '2025-08-28 14:46:16'),
(1720, 'SMG_spinSpinSugar', 'Spin Spin Sugar', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_spinSpinSugar.png', 'PSE', '2025-08-28 14:46:16'),
(1721, 'SMG_amazingPharaoh', 'Amazing Pharaoh', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_amazingPharaoh.png', 'PSE', '2025-08-28 14:46:16'),
(1722, 'SMG_bubbleBeez', 'Bubble Beez', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bubbleBeez.png', 'PSE', '2025-08-28 14:46:16'),
(1723, 'SMG_fortunePikeGold', 'Fortune Pike Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fortunePikeGold.png', 'PSE', '2025-08-28 14:46:16'),
(1724, 'SFG_WDGoldenFortuneFishing', 'WD Golden Fortune Fishing', 'MP', 'MP', 'FH', '1', 'https://img.55115515.com/MP/en-us/SFG_WDGoldenFortuneFishing.png', 'PSE', '2025-08-28 14:46:16'),
(1725, 'SMG_chilliPepeHotStacks', 'Chilli Pepe™ Hot Stacks', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_chilliPepeHotStacks.png', 'PSE', '2025-08-28 14:46:16'),
(1726, 'SMG_galloGoldMegaways', 'Gallo Gold Bruno\'s™ Megaways™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_galloGoldMegaways.png', 'PSE', '2025-08-28 14:46:16'),
(1727, 'SMG_leprechaunStrike', 'Leprechaun Strike', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_leprechaunStrike.png', 'PSE', '2025-08-28 14:46:16'),
(1728, 'SMG_happyLuckyCats', 'Happy Lucky Cats', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_happyLuckyCats.png', 'PSE', '2025-08-28 14:46:16'),
(1729, 'SMG_chestsOfGold', 'Chests of Gold: Power Combo', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_chestsOfGold.png', 'PSE', '2025-08-28 14:46:16'),
(1730, 'SMG_dragonsKeep', 'Dragon\'s Keep', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_dragonsKeep.png', 'PSE', '2025-08-28 14:46:16'),
(1731, 'SMG_trojanKingdom', 'Trojan Kingdom', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_trojanKingdom.png', 'PSE', '2025-08-28 14:46:16'),
(1732, 'SMG_bisonMoon', 'Bison Moon', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bisonMoon.png', 'PSE', '2025-08-28 14:46:16'),
(1733, 'SMG_tigersIce', 'Tigers Ice', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_tigersIce.png', 'PSE', '2025-08-28 14:46:16'),
(1734, 'SFG_WPHilo', 'WP Hilo', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPHilo.png', 'PSE', '2025-08-28 14:46:16'),
(1735, 'SMG_thunderstruckStormchaser', 'Thunderstruck Stormchaser', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_thunderstruckStormchaser.png', 'PSE', '2025-08-28 14:46:16'),
(1736, 'SMG_fionasChristmasFortune', 'Fiona\'s Christmas Fortune', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fionasChristmasFortune.png', 'PSE', '2025-08-28 14:46:16'),
(1737, 'SMG_sonicLinks', 'Sonic Links', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_sonicLinks.png', 'PSE', '2025-08-28 14:46:16'),
(1738, 'SFG_WPRummy', 'WP Rummy', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPRummy.png', 'PSE', '2025-08-28 14:46:16'),
(1739, 'SFG_WPPaiKang', 'WP Pai Kang', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPPaiKang.png', 'PSE', '2025-08-28 14:46:16'),
(1740, 'SMG_robinHoodsHeroes', 'Robin Hood\'s Heroes', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_robinHoodsHeroes.png', 'PSE', '2025-08-28 14:46:16'),
(1741, 'SMG_aquanauts', 'Aquanauts', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_aquanauts.png', 'PSE', '2025-08-28 14:46:16'),
(1742, 'SMG_jadeShuriken', 'Jade Shuriken', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_jadeShuriken.png', 'PSE', '2025-08-28 14:46:16'),
(1743, 'SMG_kitsuneAdventure', 'Kitsune Adventure', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_kitsuneAdventure.png', 'PSE', '2025-08-28 14:46:16'),
(1744, 'SMG_amazonKingdom', 'Amazon Kingdom', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_amazonKingdom.png', 'PSE', '2025-08-28 14:46:16'),
(1745, 'SFG_WPPokDeng', 'WP Pok Deng', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPPokDeng.png', 'PSE', '2025-08-28 14:46:16'),
(1746, 'SMG_dokiDokiFireworks', 'Doki Doki Fireworks', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_dokiDokiFireworks.png', 'PSE', '2025-08-28 14:46:16'),
(1747, 'SMG_arkOfRa', 'Ark of Ra', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_arkOfRa.png', 'PSE', '2025-08-28 14:46:16'),
(1748, 'SMG_starliteFruits', 'Starlite Fruits™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_starliteFruits.png', 'PSE', '2025-08-28 14:46:16'),
(1749, 'SMG_luckyLeprechaunClusters', 'Lucky Leprechaun Clusters', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyLeprechaunClusters.png', 'PSE', '2025-08-28 14:46:16'),
(1750, 'SMG_divineRichesHelios', 'Divine Riches Helios', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_divineRichesHelios.png', 'PSE', '2025-08-28 14:46:16'),
(1751, 'SFG_WPGaple', 'WP Gaple', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPGaple.png', 'PSE', '2025-08-28 14:46:16'),
(1752, 'SMG_boltXUP', 'Bolt X UP', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_boltXUP.png', 'PSE', '2025-08-28 14:46:16'),
(1753, 'SMG_777Surge', '777 Surge', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_777Surge.png', 'PSE', '2025-08-28 14:46:16'),
(1754, 'SMG_lightningFortunes', 'Lightning Fortunes', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_lightningFortunes.png', 'PSE', '2025-08-28 14:46:16'),
(1755, 'SMG_circusJugglersJackpots', 'Circus Jugglers Jackpots', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_circusJugglersJackpots.png', 'PSE', '2025-08-28 14:46:16'),
(1756, 'SMG_wildWildRomance', 'Wild Wild Romance', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_wildWildRomance.png', 'PSE', '2025-08-28 14:46:16'),
(1757, 'SMG_abraCatDabra', 'AbraCatDabra', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_abraCatDabra.png', 'PSE', '2025-08-28 14:46:16'),
(1758, 'SMG_dungeonsAndDiamonds', 'Dungeons and Diamonds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_dungeonsAndDiamonds.png', 'PSE', '2025-08-28 14:46:16'),
(1759, 'SMG_dokiDokiParfait', 'Doki Doki Parfait', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_dokiDokiParfait.png', 'PSE', '2025-08-28 14:46:16'),
(1760, 'SMG_aztecFalls', 'Aztec Falls', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_aztecFalls.png', 'PSE', '2025-08-28 14:46:16'),
(1761, 'SFG_WPXocDia', 'WP Xoc Dia', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPXocDia.png', 'PSE', '2025-08-28 14:46:16'),
(1762, 'SMG_25000Talons', '25000 Talons', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_25000Talons.png', 'PSE', '2025-08-28 14:46:16'),
(1763, 'SMG_15Tridents', '15 Tridents', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_15Tridents.png', 'PSE', '2025-08-28 14:46:16'),
(1764, 'SMG_kingsOfCrystals', 'Kings of Crystals', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_kingsOfCrystals.png', 'PSE', '2025-08-28 14:46:16'),
(1765, 'SMG_oniHunterNightSakura', 'Oni Hunter Night Sakura', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_oniHunterNightSakura.png', 'PSE', '2025-08-28 14:46:16'),
(1766, 'SFG_WPFishPrawnCrab', 'WP Fish Prawn Crab', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPFishPrawnCrab.png', 'PSE', '2025-08-28 14:46:16'),
(1767, 'SMG_breakAwayShootout', 'Break Away Shootout', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_breakAwayShootout.png', 'PSE', '2025-08-28 14:46:16'),
(1768, 'SMG_5StarKnockout', '5 Star Knockout', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_5StarKnockout.png', 'PSE', '2025-08-28 14:46:16'),
(1769, 'SMG_kodiakKingdom', 'Kodiak Kingdom', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_kodiakKingdom.png', 'PSE', '2025-08-28 14:46:16'),
(1770, 'SMG_bigBoomRiches', 'Big Boom Riches', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bigBoomRiches.png', 'PSE', '2025-08-28 14:46:16'),
(1771, 'SMG_agentJaneBlondeMaxVolume', 'Agent Jane Blonde Max Volume', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_agentJaneBlondeMaxVolume.png', 'PSE', '2025-08-28 14:46:16'),
(1772, 'SMG_squealinRiches', 'Squealin\' Riches', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_squealinRiches.png', 'PSE', '2025-08-28 14:46:16'),
(1773, 'SMG_luckyClucks', 'Lucky Clucks', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyClucks.png', 'PSE', '2025-08-28 14:46:16'),
(1774, 'SMG_bookOfMrsClaus', 'Book Of Mrs Claus', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bookOfMrsClaus.png', 'PSE', '2025-08-28 14:46:16'),
(1775, 'SMG_catClans', 'Cat Clans', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_catClans.png', 'PSE', '2025-08-28 14:46:16'),
(1776, 'SMG_4DiamondBlues', '4 Diamond Blues™ - Megaways™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_4DiamondBlues.png', 'PSE', '2025-08-28 14:46:16'),
(1777, 'SMG_wweLegendsLinkWin', 'WWE Legends: Link & Win', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_wweLegendsLinkWin.png', 'PSE', '2025-08-28 14:46:16'),
(1778, 'SMG_fortuneRush', 'Fortune Rush', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fortuneRush.png', 'PSE', '2025-08-28 14:46:16'),
(1779, 'SMG_chroniclesOfOlympusXUP', 'Chronicles of Olympus X UP', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_chroniclesOfOlympusXUP.png', 'PSE', '2025-08-28 14:46:16'),
(1780, 'SMG_breakDaBankAgainMegaways', 'Break Da Bank Again™ MEGAWAYS™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_breakDaBankAgainMegaways.png', 'PSE', '2025-08-28 14:46:16'),
(1781, 'SFG_WDGoldBlastFishing', 'WD Gold Blast Fishing', 'MP', 'MP', 'FH', '1', 'https://img.55115515.com/MP/en-us/SFG_WDGoldBlastFishing.png', 'PSE', '2025-08-28 14:46:16'),
(1782, 'SMG_africaXUP', 'Africa X UP™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_africaXUP.png', 'PSE', '2025-08-28 14:46:16'),
(1783, 'SMG_thunderstruckWildLightning', 'Thunderstruck Wild Lightning', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_thunderstruckWildLightning.png', 'PSE', '2025-08-28 14:46:16'),
(1784, 'SMG_legacyOfOz', 'Legacy of Oz ™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_legacyOfOz.png', 'PSE', '2025-08-28 14:46:16'),
(1785, 'SMG_cricketStarScratch', 'Cricket Star Scratch', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_cricketStarScratch.png', 'PSE', '2025-08-28 14:46:16'),
(1786, 'SMG_hyperGold', 'Hyper Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_hyperGold.png', 'PSE', '2025-08-28 14:46:16'),
(1787, 'SMG_silverSeas', 'Silver Seas', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_silverSeas.png', 'PSE', '2025-08-28 14:46:16'),
(1788, 'SMG_oniHunterPlus', 'Oni Hunter Plus', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_oniHunterPlus.png', 'PSE', '2025-08-28 14:46:16'),
(1789, 'SMG_odinsRiches', 'Odin\'s Riches', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_odinsRiches.png', 'PSE', '2025-08-28 14:46:16'),
(1790, 'SMG_blazingMammoth', 'Blazing Mammoth', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_blazingMammoth.png', 'PSE', '2025-08-28 14:46:16'),
(1791, 'SMG_bookOfKingArthur', 'Book of King Arthur', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bookOfKingArthur.png', 'PSE', '2025-08-28 14:46:16'),
(1792, 'SMG_serengetiGold', 'Serengeti Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_serengetiGold.png', 'PSE', '2025-08-28 14:46:16'),
(1793, 'SMG_emeraldGold', 'Emerald Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_emeraldGold.png', 'PSE', '2025-08-28 14:46:16'),
(1794, 'SMG_oniHunter', 'Oni Hunter', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_oniHunter.png', 'PSE', '2025-08-28 14:46:16'),
(1795, 'SMG_goldCollector', 'Gold Collector', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_goldCollector.png', 'PSE', '2025-08-28 14:46:16'),
(1796, 'SMG_fireForge', 'Fire Forge', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fireForge.png', 'PSE', '2025-08-28 14:46:16'),
(1797, 'SMG_carnavalJackpot', 'Carnaval Jackpot', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_carnavalJackpot.png', 'PSE', '2025-08-28 14:46:16'),
(1798, 'SMG_goldenStallion', 'Golden Stallion', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_goldenStallion.png', 'PSE', '2025-08-28 14:46:16'),
(1799, 'SMG_adventuresOfDoubloonIsland', 'Adventures Of Doubloon Island', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_adventuresOfDoubloonIsland.png', 'PSE', '2025-08-28 14:46:16'),
(1800, 'SMG_forgottenIsland', 'Forgotten Island', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_forgottenIsland.png', 'PSE', '2025-08-28 14:46:16'),
(1801, 'SFG_ForestParty', 'Forest Party', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_ForestParty.png', 'PSE', '2025-08-28 14:46:16'),
(1802, 'SMG_silverbackMultiplierMountain', 'Silverback Multiplier Mountain', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_silverbackMultiplierMountain.png', 'PSE', '2025-08-28 14:46:16'),
(1803, 'SMG_shamrockHolmes', 'Shamrock Holmes Megaways™', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_shamrockHolmes.png', 'PSE', '2025-08-28 14:46:16'),
(1804, 'SMG_gemsAndDragons', 'Gems And Dragons', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_gemsAndDragons.png', 'PSE', '2025-08-28 14:46:16'),
(1805, 'SMG_emperorOfTheSeaDeluxe', 'Emperor of the Sea Deluxe', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_emperorOfTheSeaDeluxe.png', 'PSE', '2025-08-28 14:46:16'),
(1806, 'SMG_assassinMoon', 'Assassin Moon', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_assassinMoon.png', 'PSE', '2025-08-28 14:46:16'),
(1807, 'SMG_neptunesRichesOceanOfWilds', 'Neptune\'s Riches: Ocean of Wilds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_neptunesRichesOceanOfWilds.png', 'PSE', '2025-08-28 14:46:16'),
(1808, 'SMG_alchemyFortunes', 'Alchemy Fortunes', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_alchemyFortunes.png', 'PSE', '2025-08-28 14:46:16'),
(1809, 'SMG_aTaleOfElves', 'A Tale of Elves', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_aTaleOfElves.png', 'PSE', '2025-08-28 14:46:16'),
(1810, 'SMG_777RoyalWheel', '777 Royal Wheel', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_777RoyalWheel.png', 'PSE', '2025-08-28 14:46:16'),
(1811, 'SMG_wantedOutlaws', 'Wanted Outlaws', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_wantedOutlaws.png', 'PSE', '2025-08-28 14:46:16'),
(1812, 'SMG_basketballStaronFire', 'Basketball Star on Fire', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_basketballStaronFire.png', 'PSE', '2025-08-28 14:46:16'),
(1813, 'SFG_WP28Mahjong', 'WP 28 Mahjong', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WP28Mahjong.png', 'PSE', '2025-08-28 14:46:16'),
(1814, 'SMG_luckyTwinsCatcher', 'Lucky Twins Catcher', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyTwinsCatcher.png', 'PSE', '2025-08-28 14:46:16'),
(1815, 'SMG_westernGold', 'Western Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_westernGold.png', 'PSE', '2025-08-28 14:46:16'),
(1816, 'SMG_reelGemsDeluxe', 'Reel Gems Deluxe', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_reelGemsDeluxe.png', 'PSE', '2025-08-28 14:46:16'),
(1817, 'SFG_WPGoldenPigRace', 'WP Golden Pig Race', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPGoldenPigRace.png', 'PSE', '2025-08-28 14:46:16'),
(1818, 'SMG_wildCatchNew', 'Wild Catch (New)', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_wildCatchNew.png', 'PSE', '2025-08-28 14:46:16'),
(1819, 'SMG_monsterBlast', 'Monster Blast', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_monsterBlast.png', 'PSE', '2025-08-28 14:46:16'),
(1820, 'SMG_boomPirates', 'Boom Pirates', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_boomPirates.png', 'PSE', '2025-08-28 14:46:16'),
(1821, 'SMG_luckyRichesHyperspins', 'Lucky Riches Hyperspins', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyRichesHyperspins.png', 'PSE', '2025-08-28 14:46:16'),
(1822, 'SFG_WPChuhanTexas', 'WP Chuhan Texas', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPChuhanTexas.png', 'PSE', '2025-08-28 14:46:16'),
(1823, 'SMG_9potsOfGold', '9 Pots of Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_9potsOfGold.png', 'PSE', '2025-08-28 14:46:16'),
(1824, 'SMG_playboyFortunes', 'Playboy Fortunes', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_playboyFortunes.png', 'PSE', '2025-08-28 14:46:16'),
(1825, 'SFG_WPCaiShenFruitMario', 'WP CaiShen Fruit Mario (Arcade Edition)', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPCaiShenFruitMario.png', 'PSE', '2025-08-28 14:46:16'),
(1826, 'SFG_WPBankerNiuNiu_3cards', 'WP Banker Niu Niu (3 Open cards)', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPBankerNiuNiu_3cards.png', 'PSE', '2025-08-28 14:46:16'),
(1827, 'SFG_WPBankerNiuNiu_4cards', 'WP Banker Niu Niu (4 Open cards)', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPBankerNiuNiu_4cards.png', 'PSE', '2025-08-28 14:46:16'),
(1828, 'SMG_footballStarDeluxe', 'Football Star Deluxe', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_footballStarDeluxe.png', 'PSE', '2025-08-28 14:46:16'),
(1829, 'SMG_incanAdventure', 'Incan Adventure', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_incanAdventure.png', 'PSE', '2025-08-28 14:46:16'),
(1830, 'SMG_boatofFortune', 'Boat of Fortune', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_boatofFortune.png', 'PSE', '2025-08-28 14:46:16'),
(1831, 'SFG_WPMahjong_2P', 'WP Mahjong (2P Arcade)', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPMahjong_2P.png', 'PSE', '2025-08-28 14:46:16'),
(1832, 'SMG_rugbyStarDeluxe', 'Rugby Star Deluxe', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_rugbyStarDeluxe.png', 'PSE', '2025-08-28 14:46:16'),
(1833, 'SFG_WDFuWaFishing', 'WD FuWa Fishing', 'MP', 'MP', 'FH', '1', 'https://img.55115515.com/MP/en-us/SFG_WDFuWaFishing.png', 'PSE', '2025-08-28 14:46:16'),
(1834, 'SMG_aDarkMatter', 'A Dark Matter', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_aDarkMatter.png', 'PSE', '2025-08-28 14:46:16'),
(1835, 'SFG_WPInstantGoldenFlower', 'WP Instant Golden Flower', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPInstantGoldenFlower.png', 'PSE', '2025-08-28 14:46:16'),
(1836, 'SMG_longMuFortunes', 'Long Mu Fortunes', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_longMuFortunes.png', 'PSE', '2025-08-28 14:46:16'),
(1837, 'SFG_WPBonusTexas', 'WP Bonus Texas', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPBonusTexas.png', 'PSE', '2025-08-28 14:46:16'),
(1838, 'SMG_luckyTwinsJackpot', 'Lucky Twins Jackpot', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyTwinsJackpot.png', 'PSE', '2025-08-28 14:46:16'),
(1839, 'SMG_pingPongStar', 'Ping Pong Star', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_pingPongStar.png', 'PSE', '2025-08-28 14:46:16'),
(1840, 'SMG_treasureDash', 'Treasure Dash', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_treasureDash.png', 'PSE', '2025-08-28 14:46:16'),
(1841, 'SFG_WPGoldenShark', 'WP Golden Shark', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPGoldenShark.png', 'PSE', '2025-08-28 14:46:16'),
(1842, 'SMG_jungleJimAndTheLostSphinx', 'Jungle Jim and the Lost Sphinx', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_jungleJimAndTheLostSphinx.png', 'PSE', '2025-08-28 14:46:16'),
(1843, 'SFG_WPBankerNiuNiu', 'WP Banker Niu Niu', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPBankerNiuNiu.png', 'PSE', '2025-08-28 14:46:16'),
(1844, 'SFG_WP5PK', 'WP 5PK', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WP5PK.png', 'PSE', '2025-08-28 14:46:16'),
(1845, 'SFG_WPTavern', 'WP Tavern', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPTavern.png', 'PSE', '2025-08-28 14:46:16'),
(1846, 'SFG_WPForestPartyJP', 'WP Forest Party JP', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WPForestPartyJP.png', 'PSE', '2025-08-28 14:46:16'),
(1847, 'SFG_GoldenFlower', 'WP Golden Flower', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_GoldenFlower.png', 'PSE', '2025-08-28 14:46:16'),
(1848, 'SMG_laraCroftTemplesAndTombs', 'Lara Croft: Temples and Tombs', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_laraCroftTemplesAndTombs.png', 'PSE', '2025-08-28 14:46:16'),
(1849, 'SMG_relicSeekers', 'Relic Seekers', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_relicSeekers.png', 'PSE', '2025-08-28 14:46:16'),
(1850, 'SMG_queenOfTheCrystalRays', 'Queen of the Crystal Rays', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_queenOfTheCrystalRays.png', 'PSE', '2025-08-28 14:46:16'),
(1851, 'SMG_magicOfSahara', 'Magic of Sahara', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_magicOfSahara.png', 'PSE', '2025-08-28 14:46:16'),
(1852, 'SMG_happyMonsterClaw', 'Happy Monster Claw', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_happyMonsterClaw.png', 'PSE', '2025-08-28 14:46:16'),
(1853, 'SMG_shogunofTime', 'Shogun of Time', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_shogunofTime.png', 'PSE', '2025-08-28 14:46:16'),
(1854, 'SMG_ReelTalent', 'Reel Talent', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_ReelTalent.png', 'PSE', '2025-08-28 14:46:16'),
(1855, 'SMG_basketballStarDeluxe', 'Basketball Star Deluxe', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_basketballStarDeluxe.png', 'PSE', '2025-08-28 14:46:16'),
(1856, 'SMG_dragonShard', 'Dragon Shard', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_dragonShard.png', 'PSE', '2025-08-28 14:46:16'),
(1857, 'SMG_bananaOdyssey', 'Banana Odyssey', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bananaOdyssey.png', 'PSE', '2025-08-28 14:46:16'),
(1858, 'SMG_breakDaBankAgainRespin', 'Break da Bank Again Respin', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_breakDaBankAgainRespin.png', 'PSE', '2025-08-28 14:46:16'),
(1859, 'SMG_bookieOfOdds', 'Bookie of Odds', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bookieOfOdds.png', 'PSE', '2025-08-28 14:46:16'),
(1860, 'SMG_playboyGoldJackpots', 'Playboy Gold Jackpots', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_playboyGoldJackpots.png', 'PSE', '2025-08-28 14:46:16'),
(1861, 'SMG_bookOfOzLockNSpin', 'Book of Oz Lock \'N Spin', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bookOfOzLockNSpin.png', 'PSE', '2025-08-28 14:46:16'),
(1862, 'SMG_maxDamageArcade', 'Max Damage and the Alien Attack', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_maxDamageArcade.png', 'PSE', '2025-08-28 14:46:16'),
(1863, 'SMG_showdownSaloon', 'Showdown Saloon', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_showdownSaloon.png', 'PSE', '2025-08-28 14:46:16'),
(1864, 'SMG_astroLegendsLyraandErion', 'Astro Legends: Lyra and Erion', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_astroLegendsLyraandErion.png', 'PSE', '2025-08-28 14:46:16'),
(1865, 'SMG_bookOfOz', 'Book of Oz', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bookOfOz.png', 'PSE', '2025-08-28 14:46:16'),
(1866, 'SMG_actionOpsSnowAndSable', 'ActionOps Snow and Sable', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_actionOpsSnowAndSable.png', 'PSE', '2025-08-28 14:46:16'),
(1867, 'SMG_ourDaysA', 'Our Days', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_ourDaysA.png', 'PSE', '2025-08-28 14:46:16'),
(1868, 'SMG_luchaLegends', 'Lucha Legends', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luchaLegends.png', 'PSE', '2025-08-28 14:46:16'),
(1869, 'SMG_cashOfKingdoms', 'Cash of Kingdoms', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_cashOfKingdoms.png', 'PSE', '2025-08-28 14:46:16'),
(1870, 'SMG_fortunium', 'Fortunium', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fortunium.png', 'PSE', '2025-08-28 14:46:16'),
(1871, 'SMG_wildScarabs', 'Wild Scarabs', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_wildScarabs.png', 'PSE', '2025-08-28 14:46:16'),
(1872, 'SMG_exoticCats', 'Exotic Cats', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_exoticCats.png', 'PSE', '2025-08-28 14:46:16'),
(1873, 'SMG_badmintonHero', 'Badminton Hero', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_badmintonHero.png', 'PSE', '2025-08-28 14:46:16'),
(1874, 'SMG_diamondEmpire', 'Diamond Empire', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_diamondEmpire.png', 'PSE', '2025-08-28 14:46:16'),
(1875, 'SMG_dreamDate', 'Dream Date', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_dreamDate.png', 'PSE', '2025-08-28 14:46:16'),
(1876, 'SMG_wickedTalesDarkRed', 'Wicked Tales: Dark Red', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_wickedTalesDarkRed.png', 'PSE', '2025-08-28 14:46:16'),
(1877, 'SMG_playboyGold', 'Playboy Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_playboyGold.png', 'PSE', '2025-08-28 14:46:16'),
(1878, 'SMG_bustTheBank', 'Bust the Bank', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bustTheBank.png', 'PSE', '2025-08-28 14:46:16'),
(1879, 'SMG_luckyLittleGods', 'Lucky Little Gods', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyLittleGods.png', 'PSE', '2025-08-28 14:46:16'),
(1880, 'SMG_hollyJollyPenguins', 'Holly Jolly Penguins', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_hollyJollyPenguins.png', 'PSE', '2025-08-28 14:46:16'),
(1881, 'SMG_santasWildRide', 'Santa\'s Wild Ride', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_santasWildRide.png', 'PSE', '2025-08-28 14:46:16'),
(1882, 'SMG_wackyPanda', 'Wacky Panda', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_wackyPanda.png', 'PSE', '2025-08-28 14:46:16'),
(1883, 'SMG_scrooge', 'Scrooge', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_scrooge.png', 'PSE', '2025-08-28 14:46:16'),
(1884, 'SMG_kingTusk', 'King Tusk', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_kingTusk.png', 'PSE', '2025-08-28 14:46:16'),
(1885, 'SMG_playboy', 'Playboy', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_playboy.png', 'PSE', '2025-08-28 14:46:16'),
(1886, 'SMG_retroReelsDiamondGlitz', 'Retro Reels - Diamond Glitz', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_retroReelsDiamondGlitz.png', 'PSE', '2025-08-28 14:46:16'),
(1887, 'SMG_gopherGold', 'Gopher Gold', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_gopherGold.png', 'PSE', '2025-08-28 14:46:16'),
(1888, 'SMG_108Heroes', '108 Heroes', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_108Heroes.png', 'PSE', '2025-08-28 14:46:16'),
(1889, 'SMG_beautifulBones', 'Beautiful Bones', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_beautifulBones.png', 'PSE', '2025-08-28 14:46:16'),
(1890, 'SMG_fortuneGirl', 'Fortune Girl', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fortuneGirl.png', 'PSE', '2025-08-28 14:46:16'),
(1891, 'SMG_rhymingReelsHeartsAndTarts', 'Rhyming Reels Hearts And Tarts', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_rhymingReelsHeartsAndTarts.png', 'PSE', '2025-08-28 14:46:16');
INSERT INTO `tb_gamelist` (`cuid`, `game_vendor`, `game_name`, `game_provider_original`, `game_provider`, `game_type`, `game_status`, `game_image`, `providerapi`, `created_at`) VALUES
(1892, 'SMG_retroReelsExtremeHeat', 'Retro Reels - Extreme Heat', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_retroReelsExtremeHeat.png', 'PSE', '2025-08-28 14:46:16'),
(1893, 'SMG_retroReels', 'Retro Reels', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_retroReels.png', 'PSE', '2025-08-28 14:46:16'),
(1894, 'SMG_coolBuck5Reel', 'Cool Buck - 5 Reel', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_coolBuck5Reel.png', 'PSE', '2025-08-28 14:46:16'),
(1895, 'SMG_megaMoneyMultiplier', 'Mega Money Multiplier', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_megaMoneyMultiplier.png', 'PSE', '2025-08-28 14:46:16'),
(1896, 'SMG_goldenPrincess', 'Golden Princess', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_goldenPrincess.png', 'PSE', '2025-08-28 14:46:16'),
(1897, 'SMG_emperorOfTheSea', 'Emperor Of The Sea', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_emperorOfTheSea.png', 'PSE', '2025-08-28 14:46:16'),
(1898, 'SMG_fruitVSCandy', 'Fruit vs Candy', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fruitVSCandy.png', 'PSE', '2025-08-28 14:46:16'),
(1899, 'SMG_secretRomance', 'Secret Romance', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_secretRomance.png', 'PSE', '2025-08-28 14:46:16'),
(1900, 'SMG_lifeOfRiches', 'Life Of Riches', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_lifeOfRiches.png', 'PSE', '2025-08-28 14:46:16'),
(1901, 'SMG_reelGems', 'Reel Gems', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_reelGems.png', 'PSE', '2025-08-28 14:46:16'),
(1902, 'SMG_dragonz', 'Dragonz', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_dragonz.png', 'PSE', '2025-08-28 14:46:16'),
(1903, 'SMG_lostVegas', 'Lost Vegas', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_lostVegas.png', 'PSE', '2025-08-28 14:46:16'),
(1904, 'SMG_jungleJimElDorado', 'Jungle Jim - El Dorado', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_jungleJimElDorado.png', 'PSE', '2025-08-28 14:46:16'),
(1905, 'SMG_reelSpinner', 'Reel Spinner', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_reelSpinner.png', 'PSE', '2025-08-28 14:46:16'),
(1906, 'SMG_winSumDimSum', 'Win Sum Dim Sum', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_winSumDimSum.png', 'PSE', '2025-08-28 14:46:16'),
(1907, 'SMG_barBarBlackSheep5Reel', 'Bar Bar Black Sheep 5 Reel', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_barBarBlackSheep5Reel.png', 'PSE', '2025-08-28 14:46:16'),
(1908, 'SMG_wildOrient', 'Wild Orient', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_wildOrient.png', 'PSE', '2025-08-28 14:46:16'),
(1909, 'SMG_sunTide', 'SunTide', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_sunTide.png', 'PSE', '2025-08-28 14:46:16'),
(1910, 'SMG_bikiniParty', 'Bikini Party', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bikiniParty.png', 'PSE', '2025-08-28 14:46:16'),
(1911, 'SMG_dragonDance', 'Dragon Dance', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_dragonDance.png', 'PSE', '2025-08-28 14:46:16'),
(1912, 'SMG_untamedGiantPanda', 'Untamed - Giant Panda', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_untamedGiantPanda.png', 'PSE', '2025-08-28 14:46:16'),
(1913, 'SMG_HappyHolidays', 'Happy Holidays', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_HappyHolidays.png', 'PSE', '2025-08-28 14:46:16'),
(1914, 'SMG_basketballStar', 'Basketball Star', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_basketballStar.png', 'PSE', '2025-08-28 14:46:16'),
(1915, 'SMG_goldenEra', 'Golden Era', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_goldenEra.png', 'PSE', '2025-08-28 14:46:16'),
(1916, 'SMG_rugbyStar', 'Rugby Star', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_rugbyStar.png', 'PSE', '2025-08-28 14:46:16'),
(1917, 'SMG_sterlingSilver', 'Sterling Silver', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_sterlingSilver.png', 'PSE', '2025-08-28 14:46:16'),
(1918, 'SMG_asianBeauty', 'Asian Beauty', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_asianBeauty.png', 'PSE', '2025-08-28 14:46:16'),
(1919, 'SMG_fishParty', 'Fish Party', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fishParty.png', 'PSE', '2025-08-28 14:46:16'),
(1920, 'SMG_coolWolf', 'Cool Wolf', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_coolWolf.png', 'PSE', '2025-08-28 14:46:16'),
(1921, 'SMG_ariana', 'Ariana', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_ariana.png', 'PSE', '2025-08-28 14:46:16'),
(1922, 'SMG_luckyLeprechaun', 'Lucky Leprechaun', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyLeprechaun.png', 'PSE', '2025-08-28 14:46:16'),
(1923, 'SMG_secretAdmirer', 'Secret Admirer', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_secretAdmirer.png', 'PSE', '2025-08-28 14:46:16'),
(1924, 'SMG_cricketStar', 'Cricket Star', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_cricketStar.png', 'PSE', '2025-08-28 14:46:16'),
(1925, 'SMG_sureWin', 'Sure Win', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_sureWin.png', 'PSE', '2025-08-28 14:46:16'),
(1926, 'SMG_bigKahuna', 'Big Kahuna', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bigKahuna.png', 'PSE', '2025-08-28 14:46:16'),
(1927, 'SMG_ageOfDiscovery', 'Age Of Discovery', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_ageOfDiscovery.png', 'PSE', '2025-08-28 14:46:16'),
(1928, 'SMG_BarsAndStripes', 'Bars And Stripes', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_BarsAndStripes.png', 'PSE', '2025-08-28 14:46:16'),
(1929, 'SMG_silverFang', 'Silver Fang', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_silverFang.png', 'PSE', '2025-08-28 14:46:16'),
(1930, 'SMG_bushTelegraph', 'Bush Telegraph', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_bushTelegraph.png', 'PSE', '2025-08-28 14:46:16'),
(1931, 'SMG_luckyBachelors', 'Lucky Bachelors', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyBachelors.png', 'PSE', '2025-08-28 14:46:16'),
(1932, 'SMG_kathmandu', 'Kathmandu', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_kathmandu.png', 'PSE', '2025-08-28 14:46:16'),
(1933, 'SMG_summertime', 'Summertime', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_summertime.png', 'PSE', '2025-08-28 14:46:16'),
(1934, 'SMG_LegendOftheMoonLovers', 'Legend of the Moon Lovers', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_LegendOftheMoonLovers.png', 'PSE', '2025-08-28 14:46:16'),
(1935, 'SMG_treasurePalace', 'Treasure Palace', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_treasurePalace.png', 'PSE', '2025-08-28 14:46:16'),
(1936, 'SMG_footballStar', 'Football Star', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_footballStar.png', 'PSE', '2025-08-28 14:46:16'),
(1937, 'SMG_highSociety', 'High Society', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_highSociety.png', 'PSE', '2025-08-28 14:46:16'),
(1938, 'SMG_eaglesWings', 'Eagle\'s Wings', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_eaglesWings.png', 'PSE', '2025-08-28 14:46:16'),
(1939, 'SMG_tigersEye', 'Tiger\'s Eye', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_tigersEye.png', 'PSE', '2025-08-28 14:46:16'),
(1940, 'SMG_theTwistedCircus', 'The Twisted Circus', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_theTwistedCircus.png', 'PSE', '2025-08-28 14:46:16'),
(1941, 'SMG_starlightKiss', 'Starlight Kiss', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_starlightKiss.png', 'PSE', '2025-08-28 14:46:16'),
(1942, 'SMG_centreCourt', 'Centre Court', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_centreCourt.png', 'PSE', '2025-08-28 14:46:16'),
(1943, 'SMG_reelThunder', 'Reel Thunder', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_reelThunder.png', 'PSE', '2025-08-28 14:46:16'),
(1944, 'SMG_thunderstruck2', 'ThunderStruck II', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_thunderstruck2.png', 'PSE', '2025-08-28 14:46:16'),
(1945, 'SMG_whatAHoot', 'What A Hoot', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_whatAHoot.png', 'PSE', '2025-08-28 14:46:16'),
(1946, 'SMG_halloweenies', 'Halloweenies', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_halloweenies.png', 'PSE', '2025-08-28 14:46:16'),
(1947, 'SMG_purePlatinum', 'Pure Platinum', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_purePlatinum.png', 'PSE', '2025-08-28 14:46:16'),
(1948, 'SMG_breakDaBank', 'Break da Bank', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_breakDaBank.png', 'PSE', '2025-08-28 14:46:16'),
(1949, 'SMG_carnaval', 'Carnaval', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_carnaval.png', 'PSE', '2025-08-28 14:46:16'),
(1950, 'SMG_alaskanFishing', 'Alaskan Fishing', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_alaskanFishing.png', 'PSE', '2025-08-28 14:46:16'),
(1951, 'SMG_cashapillar', 'Cashapillar', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_cashapillar.png', 'PSE', '2025-08-28 14:46:16'),
(1952, 'SMG_breakDaBankAgain', 'Break da Bank Again', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_breakDaBankAgain.png', 'PSE', '2025-08-28 14:46:16'),
(1953, 'SMG_loaded', 'Loaded', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_loaded.png', 'PSE', '2025-08-28 14:46:16'),
(1954, 'SMG_tallyHo', 'Tally Ho', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_tallyHo.png', 'PSE', '2025-08-28 14:46:16'),
(1955, 'SMG_deckTheHalls', 'Deck the Halls', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_deckTheHalls.png', 'PSE', '2025-08-28 14:46:16'),
(1956, 'SMG_adventurePalace', 'Adventure Palace', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_adventurePalace.png', 'PSE', '2025-08-28 14:46:16'),
(1957, 'SMG_burningDesire', 'Burning Desire', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_burningDesire.png', 'PSE', '2025-08-28 14:46:16'),
(1958, 'SMG_agentJaneBlonde', 'Agent Jane Blonde', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_agentJaneBlonde.png', 'PSE', '2025-08-28 14:46:16'),
(1959, 'SMG_avalon', 'Avalon', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_avalon.png', 'PSE', '2025-08-28 14:46:16'),
(1960, 'SMG_breakAway', 'Break Away', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_breakAway.png', 'PSE', '2025-08-28 14:46:16'),
(1961, 'SMG_springBreak', 'Spring Break', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_springBreak.png', 'PSE', '2025-08-28 14:46:16'),
(1962, 'SMG_ladiesNite', 'Ladies Nite', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_ladiesNite.png', 'PSE', '2025-08-28 14:46:16'),
(1963, 'SMG_mermaidsMillions', 'Mermaids Millions', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_mermaidsMillions.png', 'PSE', '2025-08-28 14:46:16'),
(1964, 'SMG_thunderstruck', 'Thunderstruck', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_thunderstruck.png', 'PSE', '2025-08-28 14:46:16'),
(1965, 'SMG_kingsOfCash', 'Kings Of Cash', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_kingsOfCash.png', 'PSE', '2025-08-28 14:46:16'),
(1966, 'SMG_5ReelDrive', '5 Reel Dri', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_5ReelDrive.png', 'PSE', '2025-08-28 14:46:16'),
(1967, 'SMG_12SkullsOfTheDead', '12 Skulls of the Dead', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_12SkullsOfTheDead.png', 'PSE', '2025-08-28 14:46:16'),
(1968, 'SMG_fireAndDiamondJoker', 'Fire & Diamond Joker', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_fireAndDiamondJoker.png', 'PSE', '2025-08-28 14:46:16'),
(1969, 'SMG_drWattsUp', 'Dr Watts Up', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_drWattsUp.png', 'PSE', '2025-08-28 14:46:16'),
(1970, 'SMG_9masksOfFire', '9 Masks Of Fire', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_9masksOfFire.png', 'PSE', '2025-08-28 14:46:16'),
(1971, 'SMG_luckyfirecracker', 'Lucky Firecracker', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_luckyfirecracker.png', 'PSE', '2025-08-28 14:46:16'),
(1972, 'SFG_undefined', 'Undefined', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_undefined.png', 'PSE', '2025-08-28 14:46:16'),
(1973, 'SMG_undefined', 'Undefined', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SMG_undefined.png', 'PSE', '2025-08-28 14:46:16'),
(1974, 'SFG_WP100NiuNiu', 'WP 100+ Players NiuNiu', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_WP100NiuNiu.png', 'PSE', '2025-08-28 14:46:16'),
(1975, 'SFG_Doudizhu', 'WP Doudizhu', 'MP', 'MP', 'SL', '1', 'https://img.55115515.com/MP/en-us/SFG_Doudizhu.png', 'PSE', '2025-08-28 14:46:16'),
(1976, 'S-LK03', 'Legacy Of Kong Maxways', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-LK03.jpg', 'PSE', '2025-08-28 14:47:05'),
(1977, 'S-RH02', 'Royale House', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-RH02.jpg', 'PSE', '2025-08-28 14:47:05'),
(1978, 'S-CG02', 'Clash of the Giants', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-CG02.jpg', 'PSE', '2025-08-28 14:47:05'),
(1979, 'F-SF01', 'Fishing God', 'SG', 'SG', 'FH', '1', 'http://api-egame-staging.sgplay.net/thumbnail/F-SF01.jpg', 'PSE', '2025-08-28 14:47:05'),
(1980, 'F-SF02', 'Fishing War', 'SG', 'SG', 'FH', '1', 'http://api-egame-staging.sgplay.net/thumbnail/F-SF02.jpg', 'PSE', '2025-08-28 14:47:05'),
(1981, 'S-RV01', 'Royale Vegas', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-RV01.jpg', 'PSE', '2025-08-28 14:47:05'),
(1982, 'S-RK02', 'Royal Katt', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-RK02.jpg', 'PSE', '2025-08-28 14:47:05'),
(1983, 'S-GK01', 'Brothers Kingdom', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-GK01.jpg', 'PSE', '2025-08-28 14:47:05'),
(1984, 'F-ZP01', 'Zombie Party', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/F-ZP01.jpg', 'PSE', '2025-08-28 14:47:05'),
(1985, 'S-BA01', '888', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-BA01.jpg', 'PSE', '2025-08-28 14:47:05'),
(1986, 'S-PW03', 'Poker Ways', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-PW03.jpg', 'PSE', '2025-08-28 14:47:05'),
(1987, 'S-MR02', 'Mahjong Riches', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-MR02.jpg', 'PSE', '2025-08-28 14:47:05'),
(1988, 'S-GP03', 'Gold Panther Maxways', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-GP03.jpg', 'PSE', '2025-08-28 14:47:05'),
(1989, 'F-FL01', 'Fishing Legend', 'SG', 'SG', 'FH', '1', 'http://api-egame-staging.sgplay.net/thumbnail/F-FL01.jpg', 'PSE', '2025-08-28 14:47:05'),
(1990, 'S-WW02', 'Wild Wet Win', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-WW02.jpg', 'PSE', '2025-08-28 14:47:05'),
(1991, 'S-CS02', 'Caishen', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-CS02.jpg', 'PSE', '2025-08-28 14:47:05'),
(1992, 'S-DW01', 'Dragon Wish', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-DW01.jpg', 'PSE', '2025-08-28 14:47:05'),
(1993, 'S-DF02', 'Dancing Fever', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-DF02.jpg', 'PSE', '2025-08-28 14:47:05'),
(1994, 'S-GR01', 'Gold Rush Cowboys', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-GR01.jpg', 'PSE', '2025-08-28 14:47:05'),
(1995, 'F-AH01', 'Alien Hunter', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/F-AH01.jpg', 'PSE', '2025-08-28 14:47:05'),
(1996, 'S-GL02', 'Golden Lotus SE', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-GL02.jpg', 'PSE', '2025-08-28 14:47:05'),
(1997, 'S-FD01', '5 Fortune Dragons', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FD01.jpg', 'PSE', '2025-08-28 14:47:05'),
(1998, 'S-JM01', 'Juicy Market', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-JM01.jpg', 'PSE', '2025-08-28 14:47:05'),
(1999, 'S-FS01', 'Fiery Sevens', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FS01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2000, 'S-HT02', 'Hammer of Thunder', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-HT02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2001, 'S-RM01', 'Roma', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-RM01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2002, 'S-ZE01', 'ZEUS', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-ZE01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2003, 'S-FM03', 'Fruits Mania', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FM03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2004, 'S-CS03', 'Caishen Deluxe Maxways', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-CS03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2005, 'S-LS03', 'Lucky Snake Wheel', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-LS03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2006, 'S-FS02', 'Fiery Sevens Exclusive', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FS02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2007, 'S-BK01', 'Brothers Kingdom 2', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-BK01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2008, 'S-SW02', 'Santa Wild Drop', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-SW02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2009, 'S-HN01', 'Happy Neko', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-HN01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2010, 'S-GP04', 'Golden Pixiu', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-GP04.jpg', 'PSE', '2025-08-28 14:47:05'),
(2011, 'S-TD01', 'Tiger Dance', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-TD01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2012, 'S-FF01', 'Farmland Frenzy Maxways', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FF01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2013, 'S-SP04', 'Sugar Party', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-SP04.jpg', 'PSE', '2025-08-28 14:47:05'),
(2014, 'S-SA03', 'Secrets of Anubis', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-SA03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2015, 'S-FM04', 'Fury Max Lucky Road', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FM04.jpg', 'PSE', '2025-08-28 14:47:05'),
(2016, 'S-MT01', 'Muay Thai Fighter', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-MT01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2017, 'S-SC01', 'Space Conquest', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-SC01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2018, 'S-FL02', 'First Love', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FL02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2019, 'S-PW02', 'Princess Wang', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-PW02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2020, 'S-GR02', 'Gemstone Rush', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-GR02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2021, 'S-GW03', 'Gold West', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-GW03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2022, 'S-GG02', 'Galaxy Guardian', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-GG02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2023, 'S-VB01', 'Sexy Vegas', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-VB01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2024, 'S-LK01', 'Lucky Koi', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-LK01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2025, 'S-MG02', 'Mayan Gems', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-MG02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2026, 'S-GP01', 'Gold Panther', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-GP01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2027, 'S-RC01', 'Rich Cai Shen', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-RC01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2028, 'S-FN01', 'Fruit Ninja Fury', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FN01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2029, 'S-AL02', 'Alchemy Quest Level Up', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-AL02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2030, 'S-JT02', 'Jokers Treasure', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-JT02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2031, 'S-LK02', 'Lucky Koi Exclusive', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-LK02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2032, 'S-CS01', 'Cai Shen 888', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-CS01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2033, 'S-MM03', 'Moji Mania', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-MM03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2034, 'S-CB02', 'Sugar Bonanza', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-CB02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2035, 'S-CP03', 'Candy Pop 2', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-CP03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2036, 'S-JW01', 'Journey to the Wild', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-JW01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2037, 'S-LY01', 'FaFaFa', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-LY01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2038, 'S-CG01', 'Captain Golds Fortune', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-CG01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2039, 'S-FH04', 'Fiery Sevens Hot 100', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FH04.jpg', 'PSE', '2025-08-28 14:47:05'),
(2040, 'S-JT03', 'Jokers Treasure Exclusive', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-JT03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2041, 'S-LT01', 'Lucky Twin Sea', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-LT01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2042, 'S-FM02', 'Golden Monkey', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FM02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2043, 'S-MG01', 'Mega 7', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-MG01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2044, 'S-BM01', 'Book of Myth', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-BM01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2045, 'S-MK01', 'Magic Kitty', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-MK01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2046, 'S-LM01', 'Lucky Meow', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-LM01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2047, 'S-LY02', 'FaFaFa2', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-LY02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2048, 'S-DG04', 'Dragon Gold SA', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-DG04.jpg', 'PSE', '2025-08-28 14:47:05'),
(2049, 'S-LS02', 'Three Lucky Stars', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-LS02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2050, 'S-WP02', 'Wow Prosperity', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-WP02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2051, 'S-CB01', 'Crazy Bomber', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-CB01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2052, 'S-TZ01', 'Jungle King', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-TZ01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2053, 'S-PH02', 'King Pharaoh', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-PH02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2054, 'S-CP01', 'Candy Pop', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-CP01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2055, 'S-RW01', 'Rise Of Werewolves', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-RW01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2056, 'S-FH03', 'Fiery Sevens Hot 50', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FH03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2057, 'S-HV01', 'Halloween Vacation', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-HV01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2058, 'S-ML01', 'Magical Lamp', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-ML01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2059, 'S-TP02', 'Triple Panda', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-TP02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2060, 'S-TW01', 'Tiger Warrior', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-TW01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2061, 'S-CP02', 'Candy Candy', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-CP02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2062, 'S-PG01', 'Prosperity Gods', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-PG01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2063, 'S-FH01', 'Fiery Sevens Hot 5', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FH01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2064, 'S-HQ01', 'Hugon Quest', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-HQ01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2065, 'S-DF03', 'Double Flame', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-DF03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2066, 'S-HF01', 'Highway Fortune', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-HF01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2067, 'S-DX01', 'Da Fu Xiao Fu', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-DX01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2068, 'S-SB01', 'Sweet Bakery', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-SB01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2069, 'S-MM01', 'Money Mouse', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-MM01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2070, 'S-HE01', 'Heroes', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-HE01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2071, 'S-FC03', 'Big Prosperity SA', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FC03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2072, 'S-HY01', 'Ho Yeah Monkey', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-HY01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2073, 'S-DF01', 'Double Fortunes', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-DF01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2074, 'S-BC01', 'Baby Cai Shen', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-BC01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2075, 'S-LI03', 'Love Idol', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-LI03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2076, 'S-RR01', 'Rabbit Riches', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-RR01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2077, 'S-CH01', 'Mr Chu Tycoon', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-CH01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2078, 'S-FH02', 'Fiery Sevens Hot 20', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-FH02.jpg', 'PSE', '2025-08-28 14:47:05'),
(2079, 'S-IL03', 'Iceland SA', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-IL03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2080, 'S-LF01', 'Lucky Feng Shui', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-LF01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2081, 'S-GW01', 'Golden Whale', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-GW01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2082, 'A-SC01', 'Space Crasher', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/A-SC01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2083, 'S-LR01', 'Legacy of Ramakien', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-LR01.jpg', 'PSE', '2025-08-28 14:47:05'),
(2084, 'S-GC03', 'Golden Chicken', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-GC03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2085, 'S-WM03', '5 Fortune SA', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-WM03.jpg', 'PSE', '2025-08-28 14:47:05'),
(2086, 'S-GS04', 'Great Stars SA', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-GS04.jpg', 'PSE', '2025-08-28 14:47:05'),
(2087, 'S-CM02', 'Christmas Miracles', 'SG', 'SG', 'SL', '1', 'http://api-egame-staging.sgplay.net/thumbnail/S-CM02.jpg', 'PSE', '2025-08-28 14:47:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_game_list`
--

CREATE TABLE `tb_game_list` (
  `id` int(11) NOT NULL,
  `game_image` varchar(500) NOT NULL,
  `name_game` varchar(255) NOT NULL,
  `provider` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_game_list`
--

INSERT INTO `tb_game_list` (`id`, `game_image`, `name_game`, `provider`) VALUES
(1, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/GatesOfOlympusM.jpg', 'GatesOfOlympusM', 'pragmaticplay'),
(2, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/StarlightPrincessM.jpg', 'StarlightPrincessM', 'pragmaticplay'),
(3, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/SantasGreatGiftsM.jpg', 'SantasGreatGiftsM', 'pragmaticplay'),
(4, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/AncientEgyptPMM.jpg', 'AncientEgyptPMM', 'pragmaticplay'),
(5, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/AztecGemsPMM.jpg', 'AztecGemsPMM', 'pragmaticplay'),
(6, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/Dragons888PMM.jpg', 'Dragons888PMM', 'pragmaticplay'),
(7, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/GreatRhinoPMM.jpg', 'GreatRhinoPMM', 'pragmaticplay'),
(8, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/JokersJewelPMM.jpg', 'JokersJewelPMM', 'pragmaticplay'),
(9, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/PekingLuckPMM.jpg', 'PekingLuckPMM', 'pragmaticplay'),
(10, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/SweetBonanzaM.jpg', 'SweetBonanzaM', 'pragmaticplay'),
(11, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/DazzleMeNET.jpg', 'DazzleMeNET', 'netent'),
(12, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/FlowersChristmasNET.jpg', 'FlowersChristmasNET', 'netent'),
(13, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/FlowersNET.jpg', 'FlowersNET', 'netent'),
(21, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/FruitShopNET.jpg', 'FruitShopNET', 'netent'),
(22, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/FruitShopChristmasNET.jpg', 'FruitShopChristmasNET', 'netent'),
(23, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/GoBananasNET.jpg', 'GoBananasNET', 'netent'),
(24, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/LightsNET.jpg', 'LightsNET', 'netent'),
(25, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/SpaceWarsNET.jpg', 'SpaceWarsNET', 'netent'),
(26, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/StarBurstNET.jpg', 'StarBurstNET', 'netent'),
(27, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/WildWaterNET.jpg', 'WildWaterNET', 'netent'),
(28, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/VikingsNET.jpg', 'VikingsNET', 'netent'),
(29, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/NarcosNET.jpg', 'NarcosNET', 'netent'),
(30, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/JumanjiNET.jpg', 'JumanjiNET', 'netent'),
(31, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/TurnYourFortuneNET.jpg', 'TurnYourFortuneNET', 'netent'),
(32, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/GrandSpinnSuperpotNET.jpg', 'GrandSpinnSuperpotNET', 'netent'),
(33, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/TheWolfsBaneNET.jpg', 'TheWolfsBaneNET', 'netent'),
(34, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/ReelRush2NET.jpg', 'ReelRush2NET', 'netent'),
(35, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/WingsOfRichesNET.jpg', 'WingsOfRichesNET', 'netent'),
(36, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/CreatureFromTheBlackLagoonNET.jpg', 'CreatureFromTheBlackLagoonNET', 'netent'),
(37, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/FortuneRangersNET.jpg', 'FortuneRangersNET', 'netent'),
(38, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/GoldenGrimoireNET.jpg', 'GoldenGrimoireNET', 'netent'),
(39, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/HalloweenJackNET.jpg', 'HalloweenJackNET', 'netent'),
(40, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/SantaVSRudolphNET.jpg', 'SantaVSRudolphNET', 'netent'),
(41, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/CasinoHoldemPG.jpg', 'CasinoHoldemPG', 'playngo'),
(42, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/LeprechaunGoesWildPG.jpg', 'LeprechaunGoesWildPG', 'playngo'),
(43, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/RichesOfRobinPG.jpg', 'RichesOfRobinPG', 'playngo'),
(44, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/RichWildeAndTheShieldOfAthenaPG.jpg', 'RichWildeAndTheShieldOfAthenaPG', 'playngo'),
(45, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/RingOfOdinPG.jpg', 'RingOfOdinPG', 'playngo'),
(46, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/SuperWheelPG.jpg', 'SuperWheelPG', 'playngo'),
(47, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/SweetAlchemyBingoPG.jpg', 'SweetAlchemyBingoPG', 'playngo'),
(48, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/TrollHunters2PG.jpg', 'TrollHunters2PG', 'playngo'),
(49, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/TheDogHouseM.jpg', 'TheDogHouseM', 'pragmaticplay'),
(50, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/SugarRushM.jpg', 'SugarRushM', 'pragmaticplay'),
(51, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/TweetyHouseM.jpg', 'TweetyHouseM', 'pragmaticplay'),
(52, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/SweetBonanzaXmasM.jpg', 'SweetBonanzaXmasM', 'pragmaticplay'),
(53, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/StarlightChristmasM.jpg', 'StarlightChristmasM', 'pragmaticplay'),
(54, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/BigBassBonanzaM.jpg', 'BigBassBonanzaM', 'pragmaticplay'),
(55, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/WolfGoldM.jpg', 'WolfGoldM', 'pragmaticplay'),
(56, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/CandyVillageM.jpg', 'CandyVillageM', 'pragmaticplay'),
(57, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/DayOfDeadM.jpg', 'DayOfDeadM', 'pragmaticplay'),
(58, 'https://cxfteams-games-cloning-slots-gambling.top/frontend/Default/ico/PyramidBonanzaM.jpg', 'PyramidBonanzaM', 'pragmaticplay'),
(59, 'https://cxfteams.sbs/pgsoft/bikini-paradise.jpg', 'BikiniParadise', 'pgsoft'),
(60, 'https://cxfteams.sbs/pgsoft/fortune-mouse.jpg', 'FortuneMouse', 'pgsoft'),
(61, 'https://cxfteams.sbs/pgsoft/fortune-ox.jpg', 'FortuneOx', 'pgsoft'),
(62, 'https://cxfteams.sbs/pgsoft/fortune-panda.jpg', 'FortunePanda', 'pgsoft'),
(63, 'https://cxfteams.sbs/pgsoft/fortune-rabbit.jpg', 'FortuneRabbit', 'pgsoft'),
(64, 'https://cxfteams.sbs/pgsoft/fortune-tiger.jpg', 'FortuneTiger', 'pgsoft'),
(65, 'https://cxfteams.sbs/pgsoft/hood-wolf.jpg', 'HoodvsWoolf', 'pgsoft'),
(66, 'https://cxfteams.sbs/pgsoft/jack-frosts.jpg', 'JackFrost', 'pgsoft'),
(67, 'https://cxfteams.sbs/pgsoft/phoenix-rises.jpg', 'PhoenixRises', 'pgsoft'),
(68, 'https://cxfteams.sbs/pgsoft/queen-bounty.jpg', 'QueenofBounty', 'pgsoft'),
(69, 'https://cxfteams.sbs/pgsoft/songkran-party.jpg', 'SongkranParty', 'pgsoft'),
(70, 'https://cxfteams.sbs/pgsoft/treasures-aztec.jpg', 'TreasuresofAztec', 'pgsoft'),
(71, 'https://cxfteams.sbs/pgsoft/mahjong-ways.jpg', 'MahjongWays', 'pgsoft'),
(72, 'https://cxfteams.sbs/pgsoft/mahjong-ways2.jpg', 'MahjongWays2', 'pgsoft');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_notif`
--

CREATE TABLE `tb_notif` (
  `cuid` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `note` text NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_other_upload`
--

CREATE TABLE `tb_other_upload` (
  `cuid` int(11) NOT NULL,
  `image_link` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_popup`
--

CREATE TABLE `tb_popup` (
  `cuid` int(11) NOT NULL,
  `image_link` text NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_popup`
--

INSERT INTO `tb_popup` (`cuid`, `image_link`, `status`) VALUES
(1, 'http://172.20.10.4/backend/logoengine.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_post`
--

CREATE TABLE `tb_post` (
  `cuid` int(11) NOT NULL,
  `slug` text NOT NULL,
  `title` text NOT NULL,
  `meta_desc` text NOT NULL,
  `keyword` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `video` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `author` text NOT NULL,
  `kategori` text NOT NULL,
  `created_date` date NOT NULL,
  `last_update` date NOT NULL,
  `user` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_post`
--

INSERT INTO `tb_post` (`cuid`, `slug`, `title`, `meta_desc`, `keyword`, `image`, `video`, `content`, `author`, `kategori`, `created_date`, `last_update`, `user`, `status`) VALUES
(13, 'x', 'x', '', '', 'blog_cxfteamsv2_20252001030500.png', '', 'x', 'Administrator', '0', '2025-01-20', '2025-01-20', 'cxfteamsv2', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_seo`
--

CREATE TABLE `tb_seo` (
  `cuid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'logo.png',
  `instansi` text NOT NULL,
  `keyword` text NOT NULL,
  `deskripsi` text NOT NULL,
  `news` text NOT NULL,
  `coin` int(11) NOT NULL,
  `urlweb` text NOT NULL,
  `user` text NOT NULL,
  `date` datetime NOT NULL,
  `pengumuman` text NOT NULL,
  `unik` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_seo`
--

INSERT INTO `tb_seo` (`cuid`, `image`, `instansi`, `keyword`, `deskripsi`, `news`, `coin`, `urlweb`, `user`, `date`, `pengumuman`, `unik`) VALUES
(1, 'logo_cxfteamsv3_20252612100521.png', 'LUXINO77', '#slotgacorhariini #slotergacor', 'SITUS TERGACOR DAN PALING MUDAH DI ASIA', 'akses game di lock silahkan hubungin admin livechat !', 745310001, 'https://megacuan168.websitex.sbs', 'adminmaster', '2020-01-10 20:55:37', 'Selamat Datang di LUXINO77, Situs Terbukti Aman Terpercaya 2025', 'Wajib Menggunakan Kode Unik 777/888 saat melakukan deposit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slide`
--

CREATE TABLE `tb_slide` (
  `cuid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `sort` int(11) NOT NULL,
  `user` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_slide`
--

INSERT INTO `tb_slide` (`cuid`, `image`, `deskripsi`, `sort`, `user`, `status`) VALUES
(43, 'slide_cxfteamsv_20250829110102.jpg', '', 1, 'cxfteamsv', 1),
(44, 'slide_cxfteamsv_20250829110140.jpg', '', 2, 'cxfteamsv', 1),
(45, 'slide_cxfteamsv_20250829110206.jpg', '', 3, 'cxfteamsv', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_social`
--

CREATE TABLE `tb_social` (
  `cuid` int(11) NOT NULL,
  `livechat` text NOT NULL,
  `wa` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `user` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_social`
--

INSERT INTO `tb_social` (`cuid`, `livechat`, `wa`, `date`, `user`) VALUES
(1, 'https://direct.lc.chat/19431394/', '+629373936393739', '0000-00-00 00:00:00', 'master');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_stat`
--

CREATE TABLE `tb_stat` (
  `cuid` int(11) NOT NULL,
  `ip` text NOT NULL,
  `date` date NOT NULL,
  `hits` int(11) NOT NULL,
  `page` text NOT NULL,
  `user` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_testi`
--

CREATE TABLE `tb_testi` (
  `cuid` int(11) NOT NULL,
  `kd_transaksi` text NOT NULL,
  `produkID` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `content` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_token`
--

CREATE TABLE `tb_token` (
  `cuid` int(11) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_token`
--

INSERT INTO `tb_token` (`cuid`, `token`) VALUES
(1, '$2y$10$1CtQlqIgo4hLkxhr.VEsKOfjjZOFbP8L.chHC1jP3M1X97LFMm.oC'),
(2, '8cc036561487ee2eaff82677303c3e70'),
(3, '7f9fcbf392d9ad67446f01e04731d1fc'),
(4, 'ff5e19eb724bb7100c9dba85cd96388d'),
(5, '$2y$10$raRxiwaO9WPVv7GqRgQTQeVYvyXbOorh1px/3.bYJSw15MFfav1k2'),
(6, '26d7f51b3ced09ba52b22ffb935da81d'),
(7, '$2y$10$Bn0oaXTKGleLXAJrWn2Nse8uaOwGkp3Ky3qegrwH5tm0ignGyat4S'),
(8, 'afa4478a9bf69b459a935597220ef7da'),
(9, 'e8fbb047242fb9be6a0ab34fed75295f'),
(10, '63d4672723f274a9895f3b500c714be4'),
(11, '$2y$10$OVMeOc.yBuu4IU/6f/9.6.z1Z1BnAa4WkIu6BqrZ4vRuCat/PsNZi'),
(12, 'ec1c51f1a17256eca5f03a5c2b1f04b2'),
(13, '$2y$10$QFgP2CHy2yyiEkse4eAG7utdqb5F2n4f/XjS7ufl4Dvu/PvxqfxzK'),
(14, '$2y$10$p8b/pHMZtxzFm3Wws/zL9OxhTOx5UM7uq9g/QbvtQlkuzvbEKIQ02'),
(15, 'ac08ef630c228083118110366fd9ec43'),
(16, '$2y$10$udKn9shpL6b0aNrEqTZ05.HdB4vISWMFGC/gmfPdG8YM84CEr5TCu'),
(17, '8cac7140b8a4c484dba998432f910523'),
(18, '80d9d873725b7a7fde32a3213c11bd1f'),
(19, 'dedbaf2118c6e9cf7485b4a3076206d4'),
(20, '$2y$10$wxLs1Vzqq5qPu4w5tzilC.mV10aiIyFEu7YC3tKjg5dBK8lrh6v4O'),
(21, '2d40e08dace6898788136528af505d6d'),
(22, '19d74211a28258ca7ddec657c0c1acf2'),
(23, '429c4c3e223f1398b244699f30ee0918'),
(24, 'fa610fc2d98217ba6df41c80f6f0e50f'),
(25, 'b1b2f9c2b6d033539d62bbb67cc4f991'),
(26, '45bab96e9a35411013859c67d59acc1b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `cuid` int(11) NOT NULL,
  `kd_transaksi` text NOT NULL,
  `date` datetime NOT NULL,
  `transaksi` text NOT NULL,
  `total` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `note` text NOT NULL,
  `gameid` text NOT NULL,
  `providerID` int(2) NOT NULL,
  `jenis` text NOT NULL COMMENT '1:Deposit,2:Withdraw,3:Refferal,4:Rabate,5:Transfer,6:TransferBack',
  `metode` text NOT NULL,
  `pay_from` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`cuid`, `kd_transaksi`, `date`, `transaksi`, `total`, `saldo`, `note`, `gameid`, `providerID`, `jenis`, `metode`, `pay_from`, `userID`, `status`) VALUES
(1, '2026012236691', '2026-01-22 13:11:36', 'Top Up', 50000, 0, '', '', 0, '1', '9', 9, 1, 1),
(2, '2026012221576', '2026-01-22 13:13:21', 'Top Up', 500000, 0, '', '', 0, '1', '9', 8, 809, 1),
(3, '2026021117715', '2026-02-11 23:14:17', 'Top Up', 50888, 0, '', '', 0, '1', '9', 15, 815, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `cuid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `extplayer` text NOT NULL,
  `user` text NOT NULL,
  `pass` varchar(100) NOT NULL,
  `token_id` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'avatar5.png',
  `full_name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` text NOT NULL,
  `level` text NOT NULL,
  `pinTrx` varchar(255) NOT NULL,
  `reff` int(11) NOT NULL,
  `uplineID` int(255) NOT NULL,
  `join_date` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `statusGame` int(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`cuid`, `userid`, `extplayer`, `user`, `pass`, `token_id`, `image`, `full_name`, `email`, `no_hp`, `level`, `pinTrx`, `reff`, `uplineID`, `join_date`, `last_login`, `status`, `statusGame`) VALUES
(1, 0, 'pxNFB4OqFLpCmtfNoZtK', 'cxfteamsv3', '$2y$10$FGnOFARaSHF4FqR8SyM3aOFkeS4a3lffl6.thT7ZXCfIrVuAPwr5W', 20, 'avatar5.png', 'Administrator', 'email@gmail.com', '620', 'superadmin', '1', 617, 1, '2020-07-10 00:00:00', '2026-01-22 13:13:32', 1, 1),
(815, 0, '6hm1hVK1oOgWclfbL1Qi', 'ipinwali', '$2y$10$8sT3wZKBw1Zi5xtOd/qVrOzhQwq84MhFOdwR7fopdXZiUYqC9USyi', 0, 'avatar5.png', 'Deni', 'ipinhadam9@gmail.com', '081234216779', 'user', '', 0, 1, '2026-02-11 15:50:00', '2026-02-11 15:50:00', 1, 0),
(814, 0, '7k7h93Xomr3dWNcJqxqx', 'yusman', '$2y$10$KNICnXoG/CxjPMwEeN5XTuC9o3yV5XWUe5q9HIaFu9IVQSZZjwNOC', 0, 'avatar5.png', 'Bi', 'yusman123@gmail.com', '084646464', 'user', '', 0, 1, '2026-02-10 11:05:52', '2026-02-10 11:05:52', 1, 0),
(813, 0, 'JCYBcmZ29P12iOeEFm9m', 'kanian12', '$2y$10$zqQ2UsaRv6I2RR1eGUFlXepl.qDkBcWr4lL5Cg2CB3o14Qi0W844y', 0, 'avatar5.png', 'urmanasaj', 'hwhshskssshsksh@gmail.com', '0875754646343', 'user', '', 0, 1, '2026-02-07 00:28:15', '2026-02-07 00:28:15', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_apigames`
--
ALTER TABLE `tb_apigames`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_apitelegram`
--
ALTER TABLE `tb_apitelegram`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_balance`
--
ALTER TABLE `tb_balance`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_bank`
--
ALTER TABLE `tb_bank`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_banner_tambahan`
--
ALTER TABLE `tb_banner_tambahan`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_depositpromosi`
--
ALTER TABLE `tb_depositpromosi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_gamelist`
--
ALTER TABLE `tb_gamelist`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_game_list`
--
ALTER TABLE `tb_game_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_notif`
--
ALTER TABLE `tb_notif`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_other_upload`
--
ALTER TABLE `tb_other_upload`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_popup`
--
ALTER TABLE `tb_popup`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_seo`
--
ALTER TABLE `tb_seo`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_slide`
--
ALTER TABLE `tb_slide`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_social`
--
ALTER TABLE `tb_social`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_stat`
--
ALTER TABLE `tb_stat`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_testi`
--
ALTER TABLE `tb_testi`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_token`
--
ALTER TABLE `tb_token`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`cuid`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`cuid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_apigames`
--
ALTER TABLE `tb_apigames`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_apitelegram`
--
ALTER TABLE `tb_apitelegram`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_balance`
--
ALTER TABLE `tb_balance`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_bank`
--
ALTER TABLE `tb_bank`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_banner_tambahan`
--
ALTER TABLE `tb_banner_tambahan`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_depositpromosi`
--
ALTER TABLE `tb_depositpromosi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_gamelist`
--
ALTER TABLE `tb_gamelist`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2088;

--
-- AUTO_INCREMENT untuk tabel `tb_game_list`
--
ALTER TABLE `tb_game_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `tb_notif`
--
ALTER TABLE `tb_notif`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_other_upload`
--
ALTER TABLE `tb_other_upload`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_popup`
--
ALTER TABLE `tb_popup`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_seo`
--
ALTER TABLE `tb_seo`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_slide`
--
ALTER TABLE `tb_slide`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `tb_social`
--
ALTER TABLE `tb_social`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_stat`
--
ALTER TABLE `tb_stat`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_testi`
--
ALTER TABLE `tb_testi`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_token`
--
ALTER TABLE `tb_token`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `cuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=816;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
