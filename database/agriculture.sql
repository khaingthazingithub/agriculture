-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2018 at 05:28 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agriculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `image`, `type`, `link`, `created_at`, `updated_at`) VALUES
(1, '5ba29f0f39d59_main-adv1.jpg', 'main', 'https://websitedesign.com.mm/', '2018-09-18 11:50:52', '2018-09-19 12:40:07'),
(3, '5ba14377a54b1_5b8fade483dbe_5b8ccd4971d9e_adv3.jpg', 'interrupt', 'https://www.theclockdepot.com/', '2018-09-18 11:57:03', '2018-09-18 11:57:03'),
(4, '5ba143e300520_5b8fb03759765_5b8ccd33a984a_adv2.jpg', 'interrupt', 'https://www.hayneedle.com/', '2018-09-18 11:58:51', '2018-09-18 11:58:51'),
(5, '5ba1442d3cd4b_5b8fadc274e0f_5b8cbbfea9da2_adv1.jpg', 'interrupt', 'https://www.invaluable.com/', '2018-09-18 12:00:05', '2018-09-18 12:00:05'),
(6, '5ba1446e832f1_5b8e196579bb2_adv4.jpg', 'interrupt', 'https://www.preloved.co.uk', '2018-09-18 12:01:10', '2018-09-18 12:01:10'),
(7, '5ba144e2d97d1_5b90e8eaef209_5b8ccdeaf35d5_right-adv2.png', 'right-side', 'https://shop.chooseenergy.com/', '2018-09-18 12:03:06', '2018-09-18 12:03:06'),
(8, '5ba1451d6d3d0_5b8fadae560f9_5b8cce182cce7_right-adv5.jpg', 'right-side', 'http://newindu.com/', '2018-09-18 12:04:05', '2018-09-18 12:04:05'),
(9, '5ba1456d53b38_5b8fada31ec6b_5b8cce55d7666_right-adv14.jpg', 'right-side', 'http://www.whglove.com/', '2018-09-18 12:05:25', '2018-09-18 12:05:25'),
(10, '5ba145b225fd1_5b8e19931ecf2_right-adv3.jpg', 'right-side', 'https://ecow.co.uk', '2018-09-18 12:06:34', '2018-09-18 12:06:34'),
(12, '5ba14fc3516f2_right-adv11.jpg', 'right-side', 'https://shop.chooseenergy.com/', '2018-09-18 12:49:31', '2018-09-18 12:49:31'),
(13, '5ba14fe74b77f_right-adv1.png', 'right-side', 'http://newindu.com/', '2018-09-18 12:50:07', '2018-09-18 12:50:07'),
(14, '5ba150056c577_right-adv10.png', 'right-side', 'http://www.whglove.com/', '2018-09-18 12:50:37', '2018-09-18 12:50:37'),
(15, '5ba1502a7397e_right-adv4.jpg', 'right-side', 'https://ecow.co.uk', '2018-09-18 12:51:14', '2018-09-18 12:51:14'),
(16, '5ba150451b57a_right-adv7.jpg', 'right-side', 'https://www.theclockdepot.com/', '2018-09-18 12:51:41', '2018-09-18 12:51:41'),
(17, '5ba15054ec409_right-adv17.jpg', 'right-side', 'https://shop.chooseenergy.com/', '2018-09-18 12:51:56', '2018-09-18 12:51:56'),
(18, '5ba29ea273f2a_adv2.jpg', 'main', 'https://websitedesign.com.mm/', '2018-09-19 12:38:18', '2018-09-19 12:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'မိုးတြင္းမွာ စိုက္ပ်ိဳးတာက ပိုေကာင္းမယ္လုိ႔ ထင္ပါတယ္ ခင္ဗ ်', '2018-09-19 04:59:41', '2018-09-19 04:59:41'),
(2, 1, 3, 'ကြ ်န္ေတာ္လဲ အဲ့ဒီလုိပဲ စိုက္ပ ်ိဳးေတာ့မလုိ့ပါ ေက ်းဇူးပါ ခင္ဗ ်', '2018-09-19 05:08:11', '2018-09-19 05:08:11'),
(3, 1, 3, 'thanks', '2018-09-26 18:59:55', '2018-09-26 18:59:55'),
(4, 1, 2, 'thanks', '2018-09-26 19:10:02', '2018-09-26 19:10:02'),
(5, 1, 2, 'thanks', '2018-09-26 19:20:20', '2018-09-26 19:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author`, `title`, `image`, `book`, `created_at`, `updated_at`) VALUES
(1, 'ဆင္းသီဟ', 'မိုးစပါးႏွင့္ေႏြစပါးအေၾကာင္းသိေကာင္းစရာ', '5ba2a318d64e4_book1.jpg', '5ba2a318d6829_Fertilizer and nutrient management.pdf', '2018-09-19 10:32:17', '2018-09-19 12:57:20'),
(2, 'စိုက္ပ ်ိဳးေရးဦးစီးဌာန', 'သီးႏွံမ ်ားတြင္က ်ေရာက္တတ္ေသာေရာပါမ ်ား', '5ba2a2c7aa003_book2.jpg', '5ba2a2c7aa3f2_Fertilizer and nutrient management.pdf', '2018-09-19 10:37:14', '2018-09-19 12:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `priority`, `created_at`, `updated_at`) VALUES
(7, 'စိုက္ပ ်ိဴးေရး', '1', '2018-09-17 11:38:17', '2018-09-17 11:50:19'),
(8, 'ေမြးျမဴေရး', '2', '2018-09-17 11:51:20', '2018-09-17 11:51:20'),
(9, 'ဗဟုသုတ', '3', '2018-09-17 11:51:58', '2018-09-17 11:51:58'),
(10, 'သတင္း', '4', '2018-09-17 11:52:16', '2018-09-17 11:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ရန္ကုန္', '2018-09-19 11:33:37', '2018-09-19 12:32:50'),
(2, 'ျပည္', '2018-09-19 11:34:28', '2018-09-19 11:34:28'),
(3, 'ျပင္ဦးလြင္', '2018-09-19 11:34:44', '2018-09-19 11:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2018_09_17_114450_create_users_table', 3),
(7, '2018_09_17_154602_create_categories_table', 4),
(9, '2018_09_18_032345_create_sublists_table', 5),
(10, '2018_09_18_035959_create_posts_table', 6),
(11, '2018_09_18_173642_create_advertisements_table', 7),
(13, '2018_09_19_095110_create_questions_table', 8),
(14, '2018_09_19_105427_create_answers_table', 9),
(15, '2018_09_19_163756_create_books_table', 10),
(16, '2018_09_19_175439_create_cities_table', 11),
(17, '2018_09_19_175534_create_prices_table', 12),
(18, '2018_09_20_075943_add_title_column_to_posts', 13);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `sublist_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `sublist_id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(3, 7, 1, 'ျငဳပ္ပင္စိုက္ပ်ိဳးျခင္း', '5ba35b044c58e_list6.png', 'ေတာင္သူမ်ား၏ ထြက္ကုန္သီးႏွံမ်ားအတြက္ ေစ်းကြက္သည္ တည္ျငိမ္ခိုင္မႈ မရွိျခင္းေၾကာင့္ ေတာင္သူမ်ားအေနျဖင့္ နစ္နာဆံုးရံႈးနစ္နာမႈမ်ား ႀကံဳေတြ႔ရပါေၾကာင္း၊ ထုိ႔အျပင္ ရာသီဥတု ေဖာက္ျပန္ျခင္း၊ ပိုးမႊားက်ျခင္း၊ သဘာဝေဘးမ်ားဖ်က္ဆီးျခင္း၊ အရင္းအႏွီးႏွင့္ နည္းပညာ ခ်ိဳ႕တဲ့ျခင္း၊ စပါးေပၚခ်ိန္တြင္ စပါးေဈးက်ျခင္း၊ ပဲေပၚခ်ိန္တြင္ ပဲေစ်းက်ျခင္းစသည့္ အေၾကာင္းမ်ား ေၾကာင့္ ေတာင္သူမ်ားအခက္အခဲႀကံဳေတြ႔ရပါေၾကာင္း၊\r\n\r\nဖြဲ႕စည္းပုံအေျခခံဥပေဒအခန္း(၁) ပုဒ္မ ၂၃ ပုဒ္မခြဲ(ခ)တြင္ ႏိုင္ငံေတာ္သည္ ေတာင္သူ လယ္သမားမ်ား၏ စိုက္ပ်ိဳးထုတ္လုပ္သည့္ ေကာက္ပဲသီးႏွံမ်ားကို သင့္တင့္မၽွတသည့္ တန္ဖိုး ရရွိရန္ ကူညီေဆာင္႐ြက္မည္ဟု ပါရွိပါေၾကာင္း၊ ေတာင္သူမ်ား၏ ထြက္ကုန္သီးႏွံမ်ားကို ေဈးေကာင္း ရရွိေစရန္ ေဈးကြက္တစ္ခုကိုသာ မီွခိုအားထားျခင္း မျပဳဘဲ ပိုမိုက်ယ္ျပန္႔ခိုင္မာေသာ၊ ပိုမိုအက်ိဳးရွိမည့္ေဈးကြက္မ်ားႏွင့္ ခ်ိတ္ဆက္ေရာင္းဝယ္ရန္လိုအပ္ပါေၾကာင္း၊ ထို႔ေၾကာင့္ ႏိုင္ငံ အဝန္းရွိ ေတာင္သူလယ္သမားမ်ား၏ ထြက္ကုန္သီးႏွံမ်ား ေဈးေကာင္းရရွိေရးအတြက္ ႏိုင္ငံေတာ္ အစိုးရမွ ခိုင္မာေသာႏိုင္ငံျခားေဈးကြက္ရွာေဖြေပးရန္အစီအစဥ္ရွိ/မရွိႏွင့္ အစီအစဥ္ရွိပါက မည္ကဲ့သို႔ေဆာင္႐ြက္ထားသည္ကိုသိရွိပါေၾကာင္း ေမးျမန္းပါသည္။', '2018-09-18 09:02:39', '2018-09-20 02:02:04'),
(4, 7, 2, 'ေရာ္ဘာပင္ပိုးက ်ျခင္း', '5ba11aba1b535_list8.jpg', 'ေရာဂါပိုးမႊား ၂၀၀ ေက်ာ္ဟာ ေန႔စဥ္စားေသာက္ကုန္ေတြထဲမွာ ပ်ံ႕ႏွံ႔ေနႏိုင္ပါတယ္။ \r\n\r\nတစ္ႏွစ္မွာ လူဦးေရ ၄၂၀,၀၀၀ ေက်ာ္က မသန္႔ရွင္းတဲ႔ စားေသာက္ကုန္ေတြေၾကာင့္ အသက္ဆံုးရံႈးေနရေၾကာင္း WHO ရဲ႕စစ္တမ္းေတြအရသိရွိရပါတယ္။\r\n\r\nမသန္႔ရွင္းတဲ့အစားအေသာက္ေတြကိုစားသံုးျခင္းဟာမိတ္ေဆြတို႔အတြက္နာတာရွည္ ေရာဂါမ်ားကိုျဖစ္ေစႏိုင္ျခင္းေၾကာင့္ သန္႔ရွင္းလတ္ဆတ္ေသာအစားအေသာက္မ်ားကိုသာေရြးခ်ယ္စားေသာက္သင့္ပါတယ္။ :)', '2018-09-18 09:03:14', '2018-09-18 09:03:14'),
(5, 7, 3, 'သီးႏွံေရာင္းခ်ျခင္း', '5ba11aec7b72b_list7.jpg', 'ႏိုင္ငံအဝန္းရွိ ေတာင္သူလယ္သမားမ်ား၏ ထြက္ကုန္သီးႏွံမ်ား ေဈးေကာင္းရရွိႏိုင္ေရးအတြက္ သတင္းအခ်က္အလက္ရရွိႏိုင္ေရးသည္ အေရးႀကီးသည့္အတြက္ စီးပြားေရးႏွင့္ ကူးသန္း ေရာင္းဝယ္ေရးဝန္ႀကီးဌာနအေနျဖင့္ လယ္ယာထြက္ကုန္သီးႏွံမ်ား၏ ေန႔စဥ္ကုန္စည္ ဒိုင္ေပါက္ ေဈးမ်ား၊ ႏိုင္ငံတကာ ေပါက္ေဈးမ်ားကို ျမန္မာ့အသံႏွင္‌့႐ုပ္ျမင္သံၾကားအစီအစဥ္မ်ားတြင္လည္း ေကာင္း၊ FM ေရဒီယို အစီအစဥ္မ်ားတြင္လည္းေကာင္း၊ Commerce Journal အပါအဝင္ ဂ်ာနယ္၊ စာေစာင္မ်ားတြင္လည္းေကာင္း ေဖာ္ျပေပးလ်က္ရွိသည့္အျပင္ ဝန္ႀကီးဌာန၏ Website မ်ားျဖစ္သည့္ Commerce Website, Myanmar Trade Website, Trade Promotion Website စသည့္ Website မ်ားတြင္လည္း ထည့္သြင္းေဖာ္ျပေပးလ်က္ရွိပါေၾကာင္း၊\n\nတိုင္းေဒသႀကီး/ျပည္နယ္မ်ားတြင္ ပို႔ကုန္ပိုမိုျမႇင့္တင္ႏိုင္ရန္ ျမန္မာ့ကုန္သြယ္မႈဗဟိုဌာန ၁၂ ခုကို ဖြင့္လွစ္ထားရွိသည့္အျပင္ ေတာင္သူမ်ား၏ ထုတ္ကုန္မ်ား ေဈးႏႈန္းမွန္ကန္စြာ ရရွိႏိုင္ေရး အတြက္ ထုတ္ကုန္ေရာင္းခ်သူအသင္းအဖြဲ႔မ်ား၊ ကုန္စည္ဒိုင္မ်ား၊ သီးႏွံစိုက္ပ်ိဳးထုတ္လုပ္မႈ ဇုန္မ်ားကို တိုးခ်ဲ႔ေဆာင္႐ြက္လ်က္ရွိပါၾကာင္း၊ (၈)ႀကိမ္ေျမာက္ ကမၻာ့ဆန္စပါးညီလာခံသို႔ ျမန္မာ ကိုယ္စားလွယ္အဖြဲ႕ တက္ေရာက္ခဲ့ၿပီးေနာက္ ကမၻာ့ဆန္ေဈးကြက္သို႔ ျပန္လည္ ခ်ိတ္ဆက္ႏိုင္ခဲ့ၿပီး EU ႏိုင္ငံမ်ား၊ အာဖရိကႏိုင္ငံမ်ားအပါအဝင္ ႏိုင္ငံေပါင္း ၅၃ ႏိုင္ငံသို႔ ေဈးကြက္မ်ား ရရွိခဲ့သည့္အတြက္ ၂၀၁၆-၁၇ ဘ႑ာႏွစ္တြင္ စုစုေပါင္း ဆန္တန္ခ်ိိန္ ၁.၇၄ သန္း အထိ တိုးခ်ဲ႔တင္ပို႔ႏိုင္ခဲ့ပါေၾကာင္းႏွင့္ ဆန္စပါးမ်ားပိုမိုတင္ပို႔ႏိုင္ရန္ ရည္႐ြယ္ၿပီး  TRT Myanmar Rice Network 2017 ၏ ပထမဆုံးအႀကိမ္ အစည္းအေဝးကို ရန္ကုန္ၿမိဳ႕တြင္ ဧၿပီလအတြင္းက က်င္းပႏိုင္ခဲ့ပါေၾကာင္း၊', '2018-09-18 09:04:04', '2018-09-18 09:04:04'),
(6, 8, 7, 'ႏြားေမြးျမဴျခင္း', '5ba11b38dfd23_farming-bg.jpg', 'ေရာဂါျဖစ္မွ ေဆးကုသည္ ထက္   ေရာဂါျဖစ္ျခင္း၏ အေၾကာင္းရင္းကိုရွာေဖြသုတ္သင္ျခင္းက ကုန္က်စရိတ္ေရာ၊ လုပ္အားျပဳန္းတီးမႈႏွင့္ ေဝဒနာခံစားရမႈတို႔ကို သက္သာေစႏိုင္ပါသည္။ ပုိလီမာေငြစကၠဴ အစားထုိးေရးႏွင့္ Contactless Payment ေခၚ တိုက္႐ိုက္ထိေတြ႕မႈကင္းေသာအြန္လိုင္းစနစ္၊  ကတ္စနစ္တို႔ က်ယ္က်ယ္ျပန္႔ျပန္႔သံုးစြဲႏုိင္ေရးႏွစ္မ်ဳိးစလံုးကို အိပ္မက္ႏိုင္ဖို႔ခက္ေနေသးေသာ ကြၽန္ေတာ္တုိ႔ ႏိုင္ငံတြင္ ေရာဂါပိုးမႊားခ်င္းလဲ လွယ္ေရာင္းဝယ္ေနရေသာဘဝ ဆိုးမွလြတ္ေျမာက္ဖို႔ ေငြစကၠဴအေဟာင္းမ်ားကို ယခုထက္ပိုမုိ သိမ္းဆည္းလဲလွယ္ေပးေရးႏွင့္ လက္ေတြ႕က်က်ေရတြက္သံုးစြဲရႏိုင္ေသာ ေငြစကၠဴအႀကီးအမ်ဳိးအစားထုတ္ေဝေရးတို႔စဥ္းစားရန္ လိုအပ္ေနၿပီဟု ထင္ျမင္မိပါေၾကာင္းတင္ျပအပ္ပါသည္။', '2018-09-18 09:05:20', '2018-09-18 09:05:20'),
(7, 8, 8, '၀က္သံတြယ္ျခင္း', '5ba11b5f9318b_list2.jpeg', 'ကြၽန္ေတာ္တစ္ခါက ေဆာင္းပါးေရးခဲ့ဖူးသလို ေငြစကၠဴမ်ား ေဟာင္းႏြမ္းစုတ္ျပတ္သည့္ဒဏ္၊ ေဖာင္းပြၿပီးေရတြက္ရခက္သည့္ ဒဏ္အခံရဆံုးမွာ ဘဏ္မ်ားမွေငြ ေၾကးဝန္ထမ္းမ်ားျဖစ္၏။ ေငြ စကၠဴအစုတ္မ်ားကိုဖာေထးရ၊ ကပ္ရ၊ ေရတြက္စည္းေႏွာင္ရႏွင့္ ယင္းေငြစကၠဴေဟာင္းမ်ားမွ မႈိ မ်ားကို ေန႔စဥ္႐ွဴ႐ိႈက္ေနၾကရပါ သည္။ ကြၽန္ေတာ္တို႔ဘြဲ႕ရစ၊ ဘဏ္မွာအလုပ္ဝင္စက ဘဏ္ေငြေၾကးဝန္ထမ္းမ်ားမွာ ေန႔လယ္ႏွစ္နာရီဘဏ္ပိတ္ၿပီးေနာက္ တစ္နာရီခန္႔စာရင္းပိတ္ကိုက္ညႇိသည့္ အလုပ္ၿပီးလွ်င္ အားလပ္သြားၿပီး မန္ေနဂ်ာေငြေၾကးစစ္ေဆးစာရင္းပိတ္ခ်ိန္အထိ တစ္နာရီခြဲ၊ ႏွစ္နာရီခန္႔ အားလပ္ခ်ိန္ရေနတတ္ပါသည္။ ၁၉၈၅ ခုႏွစ္ေနာက္ပိုင္းတြင္ ေငြေၾကးေဖာင္းပြမႈမ်ားလာ ၿပီးေနာက္ေငြေၾကးဝန္ထမ္းတို႔ အားလပ္ဖို႔ေဝးစြ၊ အိမ္ျပန္ခ်ိန္ ေနာက္က်ျခင္း၊ တစ္ခါတစ္ရံညဥ့္နက္သန္းေခါင္အထိ အလုပ္လုပ္ရျခင္းမ်ားႀကံဳေတြ႕လာရပါသည္။ ယခုေနာက္ပိုင္းတြင္ေတာ့ ေငြေၾကးေဖာင္းပြမႈက ဆိုခဲ့သည့္အတိုင္း မူလထက္အဆတစ္ေထာင္ခန္႔ႀကီးမားလာၿပီး ေငြေၾကးဝန္ထမ္းအင္အားက ႏွစ္ဆသံုးဆထက္ပိုခန္႔၍ မျဖစ္ႏုိင္ေသာအခါ အလုပ္မ်ားမတန္တဆလုပ္ၾကရ႐ံုမက က်န္းမာေရးမညီၫြတ္ေသာလုပ္ငန္းခြင္ကို ေန႔စဥ္ျဖတ္သန္းေနရပါသည္။', '2018-09-18 09:05:59', '2018-09-18 09:05:59'),
(8, 8, 9, 'ငါးစီးပြားျဖစ္ေမြးျမဴျခင္း', '5ba11b840a50e_farming1.jpg', 'ေအာက္စဖို႔ဒ္ယူနီဗာစီတီ၏ ပ့ံပိုးမႈျဖင့္ မာစတာကတ္၏ေလ့ လာေတြ႕ရွိခ်က္အရ ဥေရာပတစ္ ဝန္းသံုး ေငြစကၠဴမ်ားထဲမွ ေယဘု ယ်အားျဖင့္ တစ္ေပါင္တန္ကဲ့သို႔ အမ်ားသံုးေငြစကၠဴတစ္ရြက္တြင္ ေရာဂါပိုးမႊားေပါင္း ၂၆,၀၀၀ ေတြ႕ရွိရသည္ဟုဆိုသည္။ ႏိုင္ငံ ေပါင္း ၁၂ ႏိုင္ငံ၌ ေလ့လာေတြ႕ရွိ ခ်က္အရ ေငြစကၠဴတစ္ရြက္မွာ အမ်ားသံုးပို႔ေဆာင္ေရးယာဥ္ (ဘတ္စ္ကား၊ ရထားစသည္)တို႔ ၏ လက္ကိုင္တန္း၊ အရက္ဆိုင္မွ အမ်ားသံုးအျမည္းပန္းကန္ထဲမွ ေျမပဲ၊ သီဟိုဠ္ေစ့တို႔ထက္ ပိုညစ္ပတ္႐ံုမက ပံုမွန္ေဆးေၾကာထား ေသာအိမ္သာခံုထက္ပင္ ေရာဂါပိုးမႊားမ်ားပိုေတြ႕ရွိရသည္ဟုဆို ၏။ အိမ္သာတက္ၿပီး လက္ေဆး ေနက်သူတို႔ႏိုင္ငံမွာ ေငြစကၠဴ၏ ညစ္ညမ္းမႈကိုသိေနၾကသည့္တိုင္ ေငြကိုင္တြယ္ၿပီးေနာက္  လက္ ေဆးေလ့ရွိသူအလြန္နည္းသည္ဟုလည္း ယင္းစစ္တမ္းတြင္ ေဖာ္ ျပထားသည္။ ဥေရာပသံုးေငြစကၠဴမ်ားအနက္  အညစ္ပတ္ဆံုးမွာ အဂၤလန္ေပါင္ျဖစ္ၿပီး ဒိန္းမတ္ခ႐ုိနာ၊ ႐ုရွား ႐ူဘယ္လ္ႏွင့္ ၾသ စႀကီးယားယူ႐ိုတို႔ထက္ ပိုညစ္ ပတ္သည္ဟုဆိုသည္။ သို႔ေသာ္ ယခုအခါ အဂၤလန္ေပါင္ကို ၾကာ ရွည္ခံၿပီး သန္႔ရွင္းေသာပိုလီမာ ေငြစကၠဴမ်ားအျဖစ္ ေျပာင္းလဲ ထုတ္ေဝေတာ့မည္ျဖစ္၏။ ပိုလီ မာကို ဖလင္ျဖင့္ဖံုးအုပ္ထားသျဖင့္ ေရျဖင့္ေဆးေၾကာသန္႔စင္ႏိုင္ သည့္အျပင္ အတုလုပ္ရလည္း ခက္ခဲမည္ဟုဆိုသည္။ ပိုလီမာ ေငြေၾကးမ်ားကို ၁၉၈၈ ခုႏွစ္က ၾသစေၾတးလ်တြင္စတင္သံုးစြဲခဲ့ ၿပီး ႏိုင္ငံေပါင္း ၂၀ ၌သံုးစြဲေနၾက ၿပီျဖစ္သည္။', '2018-09-18 09:06:36', '2018-09-18 09:06:36'),
(9, 9, 11, 'ျငဳပ္ပင္ႏွင့္က်န္းမာေရး', '5ba11bc097e0f_knowledge1.jpg', 'ယင္းသတင္းကိုဖတ္ၿပီး သူ တို႔ေငြေၾကးက ကြၽန္ေတာ္တို႔ေငြ စကၠဴမ်ားေလာက္ ညစ္ညမ္းသည္ ကိုမျမင္ဖူး၊ မၾကားဖူးေသာ ကြၽန္ ေတာ့္အေနျဖင့္ သူတို႔ေငြစကၠဴမ်ဳိး မွာပင္ လူေပါင္းစံုလက္ျဖင့္ကိုင္ တြယ္သံုးစြဲရင္း ေရာဂါပိုးမႊားေပါင္း၂၆,၀၀၀ မွ်ေတြ႕ရွိရသည္ဆိုလွ်င္ ကြၽန္ေတာ္တို႔ေငြစကၠဴမ်ားေပၚ၌ မည္မွ်ဆိုးရြားေနမည္ကို စစ္တမ္း မေကာက္ဘဲႏွင့္ပင္ ၾကက္သီးထေနမိသည္။  သူတို႔အိမ္သာခံု၊ သူတို႔ဘတ္စ္ကားလက္တန္းမ်ားထက္ ပိုညစ္ပတ္သည္ဆိုေသာ သူတို႔ေငြစကၠဴက ကြၽန္ေတာ္တို႔ ေငြစကၠဴေလာက္ထုိးထည့္ခ်ဳိးဖဲ့မခံရ၊ အေခါက္အခ်ဳိးမခံရ၊ စည္းေႏွာင္မခံရသည့္အျပင္ ေကာ္ကပ္၊ တိပ္ကပ္စကၠဴျဖင့္ကပ္သည္မ်ဳိးလည္းခံရဖူးမည္မဟုတ္သျဖင့္ သူတို႔ေငြေၾကးကိုင္တြယ္သည္ကို လက္ေဆးရန္လိုသည္ဆိုလွ်င္ ကြၽန္ေတာ္တို႔ေငြေၾကးကိုကိုင္တြယ္၊ေရတြက္၊ စည္းေႏွာင္၊ ထုပ္ပိုး၊ ေပြ႕ပိုက္၊ ထမ္းပိုးေနရျခင္းမ်ားအတြက္ တစ္ခါကိုင္ တြယ္သံုးစြဲၿပီးတိုင္း ေရမ်ားခ်ဳိးဖို႔ လိုေနမည္လားဟု ရယ္ပြဲဖြဲ႕ေတြးေနမိပါသည္။', '2018-09-18 09:07:36', '2018-09-18 09:07:36'),
(10, 9, 12, 'စိုက္ပ်ိဳးေရးေဆာင္းပါး', '5ba11beb625c7_news-4.jpg', 'အပူပိုင္းမုန္တိုင္း ေဂၚဒန္ဟာ ကုန္းတြင္းပိုင္းကို ခန္႔မွန္းထားတဲ့ ဝင္ေရာက္ခ်ိန္ထက္ ေစာၿပီး အေမရိကန္ပင္လယ္ေကြ႔ ကမ္း႐ိုးတန္းကို မိုးသက္ေလျပင္းေတြနဲ႔အတူ စက္တင္ဘာ ၄ ရက္ေန႔က ဝင္ေရာက္တိုက္ခတ္ခဲ့ပါတယ္။\r\n\r\nမုန္တိုင္းေၾကာင့္ မကၠဆီကိုပင္လယ္ေကြ႔က ေရနံတူးစင္ႏွစ္ခုမွာ လုပ္ကိုင္ေနသူေတြ ေျပာင္းေရႊ႕ခဲ့အၿပီး ကမာၻတဝွမ္း ေရနံေစ်းႏႈန္းေတြ တက္ခဲ့တယ္လို႔ ႐ိုက္တာသတင္းမွာ ေဖာ္ျပပါတယ္။\r\n\r\n\r\n \r\nမုန္တိုင္း ေဂၚဒန္ဟာ လူဝီစီယားနားနဲ႔ မစၥစၥပီျပည္နယ္ေတြကို စက္တင္ဘာ ၅ ရက္မွာ ဝင္ေရာက္ၿပီး မိုးေရခ်ိန္ ၁၂ လက္မအထိ ရြာႏိုင္တယ္လို႔ အေမရိကန္ အမ်ိဳးသားဟာရီကိန္းစင္တာက ေျပာပါတယ္။\r\n\r\nမုန္တိုင္းဟာ ပင္လယ္ေကြ႔ ကမ္း႐ိုးတန္းကို ဝင္တိုက္တဲ့အခါ ေလတိုက္ႏႈန္း တနာရီ ၇၄ မိုင္အထိ ရွိမယ္လို႔ ခန္႔မွန္းထားပါတယ္။\r\n\r\nဒါ့ေၾကာင့္ မစၥစၥပီျပည္နယ္ေတာင္ပိုင္းမွာ ေနထိုင္သူေတြအေနနဲ႔ ေရႊ႕ေျပာင္းေနထိုင္ေရး အသင့္လုပ္ထားၾကဖို႔ ျပည္နယ္ အေရးေပၚ စီမံခန္႔ခြဲေရး ေအဂ်င္စီက ေျပာပါတယ္။\r\n\r\nမုန္တိုင္းဟာ ကမ္းေျခကို ျဖတ္ဝင္တိုက္ခတ္ၿပီးတဲ့ေနာက္မွာ အားေပ်ာ့သြားမယ္လို႔ ခန္႔မွန္းထားပါတယ္။', '2018-09-18 09:08:19', '2018-09-18 09:08:19'),
(11, 9, 13, 'ေမြးျမဴေရးေဆာင္းပါး', '5ba11c4326f84_farming4.jpg', 'ေရာဂါျဖစ္မွ ေဆးကုသည္ ထက္   ေရာဂါျဖစ္ျခင္း၏ အေၾကာင္းရင္းကိုရွာေဖြသုတ္သင္ျခင္းက ကုန္က်စရိတ္ေရာ၊ လုပ္အားျပဳန္းတီးမႈႏွင့္ ေဝဒနာခံစားရမႈတို႔ကို သက္သာေစႏိုင္ပါသည္။ ပုိလီမာေငြစကၠဴ အစားထုိးေရးႏွင့္ Contactless Payment ေခၚ တိုက္႐ိုက္ထိေတြ႕မႈကင္းေသာအြန္လိုင္းစနစ္၊  ကတ္စနစ္တို႔ က်ယ္က်ယ္ျပန္႔ျပန္႔သံုးစြဲႏုိင္ေရးႏွစ္မ်ဳိးစလံုးကို အိပ္မက္ႏိုင္ဖို႔ခက္ေနေသးေသာ ကြၽန္ေတာ္တုိ႔ ႏိုင္ငံတြင္ ေရာဂါပိုးမႊားခ်င္းလဲ လွယ္ေရာင္းဝယ္ေနရေသာဘဝ ဆိုးမွလြတ္ေျမာက္ဖို႔ ေငြစကၠဴအေဟာင္းမ်ားကို ယခုထက္ပိုမုိ သိမ္းဆည္းလဲလွယ္ေပးေရးႏွင့္ လက္ေတြ႕က်က်ေရတြက္သံုးစြဲရႏိုင္ေသာ ေငြစကၠဴအႀကီးအမ်ဳိးအစားထုတ္ေဝေရးတို႔စဥ္းစားရန္ လိုအပ္ေနၿပီဟု ထင္ျမင္မိပါေၾကာင္းတင္ျပအပ္ပါသည္။', '2018-09-18 09:09:47', '2018-09-18 09:09:47'),
(12, 10, 15, 'ဂ ်ပန္ႏိုင္ငံတြင္က ်ေရာက္ခဲ့ေသာမုန္တိုင္း', '5ba11ccd04ecf_5b976ceb714f4_5b8f9f563ff3e_weather2.jpg', 'ဂ်ပန္ႏိုင္ငံမွာ ၂၅ ႏွစ္အတြင္း အင္အားအျပင္းဆုံး တိုင္ဖြန္းမုန္တိုင္း ဂ်က္ဘီ ဝင္ေရာက္တိုက္ခတ္ေနတဲ့အတြက္ အနည္းဆံုး လူ ၆ ဦးေသဆံုးၿပီး ၂၀၀ ဒဏ္ရာရထားတယ္လို႔ ဘီဘီစီသတင္းမွာ ေဖာ္ျပပါတယ္။\r\n\r\nတိုင္ဖြန္းဟာ မိုးသက္ေလျပင္းေတြနဲ႔အတူ ဂ်ပန္ႏိုင္ငံ အေနာက္ပိုင္းေဒသေတြကို ဝင္ေရာက္ခဲ့တာပါ။\r\n\r\n\r\nမုန္တိုင္းေလတိုက္ႏႈန္းဟာ တနာရီကို ၁၀၇ မိုင္ႏႈန္းအထိ ရွိေနပါတယ္။\r\n\r\nအိုဆာကာ ပင္လယ္ေအာ္မွာေတာ့ သေဘၤာႀကီးတစင္း တံတားကို ဝင္တိုက္မႈျဖစ္ထားၿပီး က်ိဳတိုၿမိဳ႕မွာေတာ့ ဘူတာ႐ံုအစိတ္အပိုင္းတခု ၿပိဳက်ခဲ့ပါတယ္။\r\n\r\nလိႈင္းျမင့္ေတြ၊ ေရႀကီးတာေတြနဲ႔ ရႊံ႕ၿပိဳႏိုင္တဲ့ အႏၲရာယ္ သတိေပးခ်က္ကို အာဏာပိုင္ေတြက ထုတ္ျပန္ထားၿပီး လူတသန္းေက်ာ္ကို ေဘးလြတ္ရာ ေျပာင္းေရႊ႕ၾကဖို႔ အမိန္႔ထုတ္ထားပါတယ္။\r\n\r\nဒါ့ျပင္ ေသာငး္နဲ႔ခ်ီတဲ့လူေတြ လွ်ပ္စစ္မီး ျပတ္ေတာက္ေနပါတယ္။ အာဏာပိုင္ေတြကေတာ့ ေဘးကင္းရာ ေျပာင္းေရႊ႕ၾကဖို႔ တိုက္တြန္းထားပါတယ္။', '2018-09-18 09:12:05', '2018-09-18 09:12:05'),
(13, 10, 16, 'ေတာင္သူမ်ား၏သီးႏွံမ်ားအတြက္ ေဈးကြက္ခုိင္မာမႈမရွိ', '5ba11ce86e6f9_5b989331dce65_5b84fe87843e4_download (1).jpg', 'ေတာင္သူမ်ား၏ ထြက္ကုန္သီးႏွံမ်ားအတြက္ ေစ်းကြက္သည္ တည္ျငိမ္ခိုင္မႈ မရွိျခင္းေၾကာင့္ ေတာင္သူမ်ားအေနျဖင့္ နစ္နာဆံုးရံႈးနစ္နာမႈမ်ား ႀကံဳေတြ႔ရပါေၾကာင္း၊ ထုိ႔အျပင္ ရာသီဥတု ေဖာက္ျပန္ျခင္း၊ ပိုးမႊားက်ျခင္း၊ သဘာဝေဘးမ်ားဖ်က္ဆီးျခင္း၊ အရင္းအႏွီးႏွင့္ နည္းပညာ ခ်ိဳ႕တဲ့ျခင္း၊ စပါးေပၚခ်ိန္တြင္ စပါးေဈးက်ျခင္း၊ ပဲေပၚခ်ိန္တြင္ ပဲေစ်းက်ျခင္းစသည့္ အေၾကာင္းမ်ား ေၾကာင့္ ေတာင္သူမ်ားအခက္အခဲႀကံဳေတြ႔ရပါေၾကာင္း၊\r\n\r\nဖြဲ႕စည္းပုံအေျခခံဥပေဒအခန္း(၁) ပုဒ္မ ၂၃ ပုဒ္မခြဲ(ခ)တြင္ ႏိုင္ငံေတာ္သည္ ေတာင္သူ လယ္သမားမ်ား၏ စိုက္ပ်ိဳးထုတ္လုပ္သည့္ ေကာက္ပဲသီးႏွံမ်ားကို သင့္တင့္မၽွတသည့္ တန္ဖိုး ရရွိရန္ ကူညီေဆာင္႐ြက္မည္ဟု ပါရွိပါေၾကာင္း၊ ေတာင္သူမ်ား၏ ထြက္ကုန္သီးႏွံမ်ားကို ေဈးေကာင္း ရရွိေစရန္ ေဈးကြက္တစ္ခုကိုသာ မီွခိုအားထားျခင္း မျပဳဘဲ ပိုမိုက်ယ္ျပန္႔ခိုင္မာေသာ၊ ပိုမိုအက်ိဳးရွိမည့္ေဈးကြက္မ်ားႏွင့္ ခ်ိတ္ဆက္ေရာင္းဝယ္ရန္လိုအပ္ပါေၾကာင္း၊ ထို႔ေၾကာင့္ ႏိုင္ငံ အဝန္းရွိ ေတာင္သူလယ္သမားမ်ား၏ ထြက္ကုန္သီးႏွံမ်ား ေဈးေကာင္းရရွိေရးအတြက္ ႏိုင္ငံေတာ္ အစိုးရမွ ခိုင္မာေသာႏိုင္ငံျခားေဈးကြက္ရွာေဖြေပးရန္အစီအစဥ္ရွိ/မရွိႏွင့္ အစီအစဥ္ရွိပါက မည္ကဲ့သို႔ေဆာင္႐ြက္ထားသည္ကိုသိရွိပါေၾကာင္း ေမးျမန္းပါသည္။', '2018-09-18 09:12:32', '2018-09-18 09:12:32'),
(14, 10, 17, 'ျမင္းေမြးျမဴျခင္းအေၾကာင္း', '5ba11d2ac5470_5b88c7f3e6b97_farming3.jpg', 'ေအာက္စဖို႔ဒ္ယူနီဗာစီတီ၏ ပ့ံပိုးမႈျဖင့္ မာစတာကတ္၏ေလ့ လာေတြ႕ရွိခ်က္အရ ဥေရာပတစ္ ဝန္းသံုး ေငြစကၠဴမ်ားထဲမွ ေယဘု ယ်အားျဖင့္ တစ္ေပါင္တန္ကဲ့သို႔ အမ်ားသံုးေငြစကၠဴတစ္ရြက္တြင္ ေရာဂါပိုးမႊားေပါင္း ၂၆,၀၀၀ ေတြ႕ရွိရသည္ဟုဆိုသည္။ ႏိုင္ငံ ေပါင္း ၁၂ ႏိုင္ငံ၌ ေလ့လာေတြ႕ရွိ ခ်က္အရ ေငြစကၠဴတစ္ရြက္မွာ အမ်ားသံုးပို႔ေဆာင္ေရးယာဥ္ (ဘတ္စ္ကား၊ ရထားစသည္)တို႔ ၏ လက္ကိုင္တန္း၊ အရက္ဆိုင္မွ အမ်ားသံုးအျမည္းပန္းကန္ထဲမွ ေျမပဲ၊ သီဟိုဠ္ေစ့တို႔ထက္ ပိုညစ္ပတ္႐ံုမက ပံုမွန္ေဆးေၾကာထား ေသာအိမ္သာခံုထက္ပင္ ေရာဂါပိုးမႊားမ်ားပိုေတြ႕ရွိရသည္ဟုဆို ၏။ အိမ္သာတက္ၿပီး လက္ေဆး ေနက်သူတို႔ႏိုင္ငံမွာ ေငြစကၠဴ၏ ညစ္ညမ္းမႈကိုသိေနၾကသည့္တိုင္ ေငြကိုင္တြယ္ၿပီးေနာက္  လက္ ေဆးေလ့ရွိသူအလြန္နည္းသည္ဟုလည္း ယင္းစစ္တမ္းတြင္ ေဖာ္ ျပထားသည္။ ဥေရာပသံုးေငြစကၠဴမ်ားအနက္  အညစ္ပတ္ဆံုးမွာ အဂၤလန္ေပါင္ျဖစ္ၿပီး ဒိန္းမတ္ခ႐ုိနာ၊ ႐ုရွား ႐ူဘယ္လ္ႏွင့္ ၾသ စႀကီးယားယူ႐ိုတို႔ထက္ ပိုညစ္ ပတ္သည္ဟုဆိုသည္။ သို႔ေသာ္ ယခုအခါ အဂၤလန္ေပါင္ကို ၾကာ ရွည္ခံၿပီး သန္႔ရွင္းေသာပိုလီမာ ေငြစကၠဴမ်ားအျဖစ္ ေျပာင္းလဲ ထုတ္ေဝေတာ့မည္ျဖစ္၏။ ပိုလီ မာကို ဖလင္ျဖင့္ဖံုးအုပ္ထားသျဖင့္ ေရျဖင့္ေဆးေၾကာသန္႔စင္ႏိုင္ သည့္အျပင္ အတုလုပ္ရလည္း ခက္ခဲမည္ဟုဆိုသည္။ ပိုလီမာ ေငြေၾကးမ်ားကို ၁၉၈၈ ခုႏွစ္က ၾသစေၾတးလ်တြင္စတင္သံုးစြဲခဲ့ ၿပီး ႏိုင္ငံေပါင္း ၂၀ ၌သံုးစြဲေနၾက ၿပီျဖစ္သည္။', '2018-09-18 09:13:38', '2018-09-18 09:13:38'),
(15, 7, 1, 'မိုးစပါးစိုက္ပ ်ိဳးျခင္းအေၾကာင္း', '5ba357fb61545_need.jpg', 'ႏိုင္ငံအဝန္းရွိ ေတာင္သူလယ္သမားမ်ား၏ ထြက္ကုန္သီးႏွံမ်ား ေဈးေကာင္းရရွိႏိုင္ေရးအတြက္ သတင္းအခ်က္အလက္ရရွိႏိုင္ေရးသည္ အေရးႀကီးသည့္အတြက္ စီးပြားေရးႏွင့္ ကူးသန္း ေရာင္းဝယ္ေရးဝန္ႀကီးဌာနအေနျဖင့္ လယ္ယာထြက္ကုန္သီးႏွံမ်ား၏ ေန႔စဥ္ကုန္စည္ ဒိုင္ေပါက္ ေဈးမ်ား၊ ႏိုင္ငံတကာ ေပါက္ေဈးမ်ားကို ျမန္မာ့အသံႏွင္‌့႐ုပ္ျမင္သံၾကားအစီအစဥ္မ်ားတြင္လည္း ေကာင္း၊ FM ေရဒီယို အစီအစဥ္မ်ားတြင္လည္းေကာင္း၊ Commerce Journal အပါအဝင္ ဂ်ာနယ္၊ စာေစာင္မ်ားတြင္လည္းေကာင္း ေဖာ္ျပေပးလ်က္ရွိသည့္အျပင္ ဝန္ႀကီးဌာန၏ Website မ်ားျဖစ္သည့္ Commerce Website, Myanmar Trade Website, Trade Promotion Website စသည့္ Website မ်ားတြင္လည္း ထည့္သြင္းေဖာ္ျပေပးလ်က္ရွိပါေၾကာင္း၊\r\n\r\nတိုင္းေဒသႀကီး/ျပည္နယ္မ်ားတြင္ ပို႔ကုန္ပိုမိုျမႇင့္တင္ႏိုင္ရန္ ျမန္မာ့ကုန္သြယ္မႈဗဟိုဌာန ၁၂ ခုကို ဖြင့္လွစ္ထားရွိသည့္အျပင္ ေတာင္သူမ်ား၏ ထုတ္ကုန္မ်ား ေဈးႏႈန္းမွန္ကန္စြာ ရရွိႏိုင္ေရး အတြက္ ထုတ္ကုန္ေရာင္းခ်သူအသင္းအဖြဲ႔မ်ား၊ ကုန္စည္ဒိုင္မ်ား၊ သီးႏွံစိုက္ပ်ိဳးထုတ္လုပ္မႈ ဇုန္မ်ားကို တိုးခ်ဲ႔ေဆာင္႐ြက္လ်က္ရွိပါၾကာင္း၊ (၈)ႀကိမ္ေျမာက္ ကမၻာ့ဆန္စပါးညီလာခံသို႔ ျမန္မာ ကိုယ္စားလွယ္အဖြဲ႕ တက္ေရာက္ခဲ့ၿပီးေနာက္ ကမၻာ့ဆန္ေဈးကြက္သို႔ ျပန္လည္ ခ်ိတ္ဆက္ႏိုင္ခဲ့ၿပီး EU ႏိုင္ငံမ်ား၊ အာဖရိကႏိုင္ငံမ်ားအပါအဝင္ ႏိုင္ငံေပါင္း ၅၃ ႏိုင္ငံသို႔ ေဈးကြက္မ်ား ရရွိခဲ့သည့္အတြက္ ၂၀၁၆-၁၇ ဘ႑ာႏွစ္တြင္ စုစုေပါင္း ဆန္တန္ခ်ိိန္ ၁.၇၄ သန္း အထိ တိုးခ်ဲ႔တင္ပို႔ႏိုင္ခဲ့ပါေၾကာင္းႏွင့္ ဆန္စပါးမ်ားပိုမိုတင္ပို႔ႏိုင္ရန္ ရည္႐ြယ္ၿပီး  TRT Myanmar Rice Network 2017 ၏ ပထမဆုံးအႀကိမ္ အစည္းအေဝးကို ရန္ကုန္ၿမိဳ႕တြင္ ဧၿပီလအတြင္းက က်င္းပႏိုင္ခဲ့ပါေၾကာင္း၊', '2018-09-20 01:49:07', '2018-09-20 01:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `city_id`, `name`, `weight`, `price`, `created_at`, `updated_at`) VALUES
(6, 2, 'ၾကက္သြန္', 'တစ္ပိသာ', '၅၀၀က ်ပ္', '2018-09-19 12:01:42', '2018-09-19 12:01:42'),
(7, 3, 'ၾကက္သြန္', 'တစ္ပိသာ', '၇၀၀က ်ပ္', '2018-09-19 12:02:08', '2018-09-19 12:02:08'),
(8, 1, 'ၾကက္သြန္', 'တစ္ပိသာ', '၆၀၀က ်ပ္', '2018-09-19 12:24:04', '2018-09-19 12:24:04'),
(9, 1, 'အာလူး', 'တစ္ပိသာ', '၈၀၀က ်ပ္', '2018-09-19 12:25:15', '2018-09-19 12:25:15'),
(10, 2, 'အာလူး', 'တစ္ပိသာ', '၇၀၀က ်ပ္', '2018-09-19 12:25:34', '2018-09-19 12:25:34'),
(11, 3, 'အာလူး', 'တစ္ပိသာ', '၉၀၀က ်ပ္', '2018-09-19 12:25:57', '2018-09-19 12:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `user_id`, `title`, `image`, `question`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 'ပဲတီစိမ္းစိုက္ပ်ိဳးနည္းအေၾကာင္း', '5ba21da3b5614_news-4.jpg', 'ပဲတီစိမ္းကို ဘယ္လုိမ်ိဳး စနစ္တက်စိုက္ပ်ိဳးရပါသလဲ ေျဖေပးၾကပါဦးေနာ္', '2018-09-19 03:27:55', '2018-09-19 03:27:55'),
(2, 7, 2, 'သေဘၤာပင္ ဘယ္လုိစိုက္ပ်ိဳးရမလဲ', '5ba21f5a69328_news5.jpg', 'သေဘၤာပင္ကို စနစ္တက်နဲ့ စီးပြားျဖစ္ ဘယ္လုိစိုက္ပ်ိဳးရမလဲ ေျဖေပးၾကပါဦးေနာ္', '2018-09-19 03:35:14', '2018-09-19 03:35:14'),
(3, 7, 1, 'ခရမ္းခ်ဥ္သီးပင္ ဘယ္လုိစိုက္ပ်ိဳးရမလဲ', '5ba21fe9ae57e_news1.jpg', 'ခရမ္းခ်ဥ္သီးပင္ ဘယ္ရာသီမွာစိုက္ပ်ိဳးရမလဲ', '2018-09-19 03:37:37', '2018-09-19 03:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `sublists`
--

CREATE TABLE `sublists` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sublists`
--

INSERT INTO `sublists` (`id`, `category_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 7, 'စိုက္ပ ်ိဳးနည္း', '2018-09-17 20:54:39', '2018-09-19 13:08:15'),
(2, 7, 'ေရာဂါပိုးမႊား', '2018-09-17 21:05:34', '2018-09-17 21:05:34'),
(3, 7, 'စိုက္ပ ်ိဳးေရးႏွင့္စီးပြားေရး', '2018-09-17 21:05:58', '2018-09-17 21:05:58'),
(4, 7, 'ေျမဆီလႊာ', '2018-09-17 21:06:16', '2018-09-17 21:06:16'),
(5, 7, 'အပင္အာဟာရ', '2018-09-17 21:06:32', '2018-09-17 21:06:32'),
(6, 7, 'နည္းပညာအသစ္မ ်ား', '2018-09-17 21:06:50', '2018-09-17 21:06:50'),
(7, 8, 'ေမြးျမဴနည္း', '2018-09-17 21:15:24', '2018-09-17 21:15:24'),
(8, 8, 'ေရာဂါပိုးမႊား', '2018-09-17 21:15:39', '2018-09-17 21:15:39'),
(9, 8, 'ေမြးျမဴေရးႏွင့္စီးပြားေရး', '2018-09-17 21:16:00', '2018-09-17 21:16:00'),
(10, 8, 'နည္းပညာအသစ္မ ်ား', '2018-09-17 21:16:24', '2018-09-17 21:16:24'),
(11, 9, 'က ်န္းမာေရး', '2018-09-17 21:17:11', '2018-09-17 21:17:11'),
(12, 9, 'စိုက္္ပ ်ိဳးေရးေဆာင္းပါး', '2018-09-17 21:17:29', '2018-09-17 21:17:29'),
(13, 9, 'ေမြးျမဴေရးေဆာင္းပါး', '2018-09-17 21:17:45', '2018-09-17 21:17:45'),
(14, 9, 'ဥပေဒမ ်ား', '2018-09-17 21:18:05', '2018-09-17 21:18:05'),
(15, 10, 'မိုးေလ၀သသတင္း', '2018-09-17 21:18:39', '2018-09-17 21:18:39'),
(16, 10, 'စိုက္ပ ်ိဳးေရးသတင္း', '2018-09-17 21:18:55', '2018-09-17 21:18:55'),
(17, 10, 'ေမြးျမဴေရးသတင္း', '2018-09-17 21:19:10', '2018-09-17 21:19:10'),
(18, 7, 'စိုက္ပ ်ိဴးေရး', '2018-09-19 13:05:31', '2018-09-19 13:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John', 'john@gmail.com', '$2y$10$KAC4T3x68leE/H/qZaOOMekdKC5UNlTU3495a.TkupvL5MVuySYbC', 0, '16GABgeBmLUCeeU4hSBwgSLe7fmDornQ6XPr5TIZZvbImS7XWakDurmUafPZ', '2018-09-17 05:19:19', '2018-09-17 05:19:19'),
(2, 'Admin', 'admin123@gmail.com', '$2y$10$goU3LAAzVrBkPkAiZSb7kuJBYiaNRZY94Rvtr0PKRhQ4nzRVLh0A.', 1, 'RSkbnLNqr9JmhTJXCynpdjlBBbOXpEoCeVO1HEdswZjdzzdlT5OpvstuJibe', '2018-09-17 05:19:47', '2018-09-17 05:19:47'),
(3, 'Aung', 'aung123@gmail.com', '$2y$10$SIF/Rn.zgVZJbtNsBkMpAOVm77T6xH0PTz5Vp8kXpvRtqImTlCBRu', 0, '4mefMs9rr441xDxWFfcNeasFO8qJYDhOVehOzTWt3zI2cBgvpbqit9p5E7pG', '2018-09-20 04:51:22', '2018-09-20 04:51:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_user_id_foreign` (`user_id`),
  ADD KEY `answers_question_id_foreign` (`question_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_priority_unique` (`priority`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_sublist_id_foreign` (`sublist_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_city_id_foreign` (`city_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_category_id_foreign` (`category_id`),
  ADD KEY `questions_user_id_foreign` (`user_id`);

--
-- Indexes for table `sublists`
--
ALTER TABLE `sublists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sublists_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sublists`
--
ALTER TABLE `sublists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_sublist_id_foreign` FOREIGN KEY (`sublist_id`) REFERENCES `sublists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sublists`
--
ALTER TABLE `sublists`
  ADD CONSTRAINT `sublists_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
